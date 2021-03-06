!DEC$ FREEFORM
!   See acegen generated code for definitions of material parameters and state variables
!   ======  Start of constant umat header (Knut Andreas)  ========
!   Variables that always should be updated
!   stress      [1 x ntens]     stress tensor at beginning of increment, to be updated
!   statev      [1 x nstatv]    Array of solution dependent state variables, to be updated (and rotated using drot)
!   ddsdde      [ntens x ntens] The jacobian dsigma/epsilon. 
!   sse         [1]             Specific elastic strain energy
!   spd         [1]             Specific plastic dissipation
!   scd         [1]             Specific creep dissipation
!
!   Variables that should only be updated in fully coupled thermal-stress analysis
!   rpl         [1]             Volumetric heat generation per unit time at the end of increment (see guide if geostatic pores)
!   ddsddt      [1 x ntens]     Variation of the stress increments with respect to temperature
!   drplde      [1 x ntens]     Variation of rpl with respect to the strain increments
!   drpldt      [1]             Variation of rpl with respect to temperature
!     
!   Variables passed for information (DO NOT CHANGE)
!   stran       [1 x ntens]     Strains at the beginning of the increment. Strain components rotated to account for RBM before UMAT call
!   dstran      [1 x ntens]     Strain increments
!   time        [1 x 2]         Value of [step time, total time] at the beginning of the current increment
!   dtime       [1]             Time increment
!   temp        [1]             Temperature at the start of the increment
!   dtemp       [1]             Increment of temperature
!   predef      [1 x ?]         Array of interpolated values of predefined field variables at this point at the start of the increment
!   dpred       [1 x ?]         Array of increments of predefined field variables
!   cmname      [string]        User-defined material name, left justified. 
!   ndi         [int]           Number of direct stress components at this point
!   nshr        [int]           Number of engineering shear stress components at this point
!   ntens       [int]           Size of the stress or strain component array (ndi + nshr)
!   nstatv      [int]           Number of solution-dependent state variables that are associated with this material type
!   props       [1 x nprops]    User-specified array of material constants associated with this user material
!   nprops      [int]           User-defined number of material constants associated with this user material
!   coords      [1 x 3]         An array containing the coordinates of this point. 
!   drot        [3 x 3]         Rotation increment matrix
!   pnewdt      [1]             CAN BE CHANGED: Ratio of suggested new time increment to the time increment being used
!   celent      [1]             Characteristic element length
!   dfgrd0      [3,3]           Deformation gradient at the beginning of the increment
!   dfgrd1      [3,3]           Deformation gradient at the end of the increment
!   noel        [int]           Element number
!   npt         [int]           Integration point number
!   layer       [int]           Layer number (for composite shells and layered solids)
!   kspt        [int]           Section point number within the current layer
!   kstep       [int]           Step number
!   kinc        [int]           Increment number
! 
 
! To compile for abaqus, remove comments on smsutility, umat_module. 
! Also comment out "!DEC$ ATTRIBUTES DLLEXPORT :: UMAT" by adding another exclamation mark in front. 
    
!include '../../umat_utils/smsutility.f90'          ! Required for AceGen code 
!include 'Shi2014_1.f90'                            ! Particular model functions generated by AceGen
!include '../../umat_utils/SolveMatrixEquation.f90' ! Solving of nonlinear matrix equation system
!include 'umat_module.f90'                          ! Support function for this umat

SUBROUTINE umat(stress,statev,ddsdde,sse,spd,scd, &
rpl,ddsddt,drplde,drpldt,&
stran,dstran,time,dtime,temp,dtemp,predef,dpred,cmname,&
ndi,nshr,ntens,nstatv,props,nprops,coords,drot,pnewdt,&
celent,dfgrd0,dfgrd1,noel,npt,layer,kspt,kstep,kinc)
!DEC$ ATTRIBUTES DLLEXPORT :: UMAT
use SolveMatrixEquation
use umat_module
use acegen_mod

implicit none
!
character*80 cmname
integer:: ndi,nshr,ntens,nstatv,nprops,noel,npt,&
layer, kspt, kstep, kinc
double precision:: dtime,temp,dtemp,pnewdt,celent,sse,spd,scd,rpl,drpldt
double precision:: stress(ntens),statev(nstatv),&
ddsdde(ntens,ntens),ddsddt(ntens),drplde(ntens),&
stran(ntens),dstran(ntens),time(2),predef(1),dpred(1),&
props(nprops),coords(3),drot(3,3),dfgrd0(3,3),dfgrd1(3,3)
!
!
!     ======  End of constant umat header excl. includes (Knut Andreas)  ========
double precision                :: Fnew(9)
double precision, allocatable   :: jac_inv(:,:), r0(:), x0(:), param(:), statevNew(:)
integer                         :: k1, info, max_iter
logical                         :: lconv, use_el_stiff
double precision                :: newton_tolerance, yielding
double precision                :: stressi(6), ddsddei(6,6) ! Internal stress and stiffness (always full)

! Iteration settings
newton_tolerance = 1.d-8  
max_iter = 20

! Check input
call checkinput(nprops, nstatv) ! Assigns nvar and nslip
allocate(jac_inv(nvar, nvar))
allocate(r0(nvar), statevNew(nstatv), x0(nvar))

! Check elastic response
Fnew = m3x3_2_v9(dfgrd1)
call elastic(props,statev,Fnew,stressi,ddsddei,yielding,x0)

if (yielding>0) then ! Solve for plasticity
    
    !Set parameters for "Solve Matrix Equation"
    call sme_setparam(itertol=newton_tolerance, maxiter=max_iter)

    !Solve local problem using newton raphson iterations and analytical jacobian
    call newton_raphson_ana(residualfun, anajac, x0, jac_inv, lconv, info, props, statev, param=Fnew, printres=0)
    
    !call newton_raphson_num(residualfun, x0, jac_inv, lconv, info, props, statev, param=Fnew, printres=2)
    
    !Calculate ddsdde, statev and stress from solution of local problem
    call plastic_output(x0,props,statev,Fnew,jac_inv,stressi,ddsddei,statevNew,spd)

    statev=statevNew
    
    !Check that solution converged
    call check_analysis(lconv,pnewdt)
    
    
endif

stress = stressi(1:ntens)
ddsdde = ddsddei(1:ntens, 1:ntens)

END SUBROUTINE