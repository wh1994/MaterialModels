!**************************************************************
!* AceGen    6.702 Windows (4 May 16)                         *
!*           Co. J. Korelc  2013           25 May 20 09:09:45 *
!**************************************************************
! User     : Full professional version
! Notebook : MainFile
! Evaluation time                 : 16 s    Mode  : Optimal
! Number of formulae              : 624     Method: Automatic
! Subroutine                      : elastic size: 14359
! Total size of Mathematica  code : 14359 subexpressions
! Total size of Fortran code      : 32676 bytes

!******************* S U B R O U T I N E **********************
SUBROUTINE elastic(v,mpar,statev,Fnew,sigma,ddsdde,yielding,xguess)
USE SMSUtility
IMPLICIT NONE
INTEGER i01,i02
DOUBLE PRECISION v(914),mpar(14),statev(70),Fnew(9),sigma(6),ddsdde(6,6),yielding,xguess(11)
v(894)=0.15d1*(mpar(11)*statev(49)+mpar(12)*statev(70))
v(893)=0.15d1*(mpar(11)*statev(48)+mpar(12)*statev(69))
v(892)=0.15d1*(mpar(11)*statev(47)+mpar(12)*statev(68))
v(891)=0.15d1*(mpar(11)*statev(46)+mpar(12)*statev(67))
v(890)=0.15d1*(mpar(11)*statev(45)+mpar(12)*statev(66))
v(889)=0.15d1*(mpar(11)*statev(44)+mpar(12)*statev(65))
v(888)=0.15d1*(mpar(11)*statev(43)+mpar(12)*statev(64))
v(887)=0.15d1*(mpar(11)*statev(42)+mpar(12)*statev(63))
v(886)=0.15d1*(mpar(11)*statev(41)+mpar(12)*statev(62))
v(885)=0.15d1*((-1d0/3d0)+mpar(11)*statev(40)+mpar(12)*statev(61))
v(884)=0.15d1*(mpar(11)*statev(39)+mpar(12)*statev(60))
v(883)=0.15d1*(mpar(11)*statev(38)+mpar(12)*statev(59))
v(882)=0.15d1*(mpar(11)*statev(37)+mpar(12)*statev(58))
v(881)=0.15d1*((-1d0/3d0)+mpar(11)*statev(36)+mpar(12)*statev(57))
v(880)=0.15d1*((-1d0/3d0)+mpar(11)*statev(35)+mpar(12)*statev(56))
v(856)=statev(7)*statev(9)
v(855)=-(statev(6)*statev(7))
v(854)=statev(5)*statev(6)
v(853)=-(statev(5)*statev(9))
v(852)=1d0+statev(3)
v(851)=statev(4)*statev(5)
v(850)=-(statev(4)*statev(8))
v(849)=statev(8)*statev(9)
v(848)=1d0+statev(2)
v(847)=statev(4)*statev(6)
v(846)=statev(7)*statev(8)
v(845)=1d0+statev(1)
v(844)=statev(24)*statev(25)
v(843)=-(statev(25)*statev(26))
v(842)=statev(26)*statev(28)
v(841)=-(statev(24)*statev(28))
v(840)=1d0+statev(22)
v(839)=statev(27)*statev(28)
v(838)=-(statev(23)*statev(27))
v(837)=statev(23)*statev(24)
v(836)=1d0+statev(21)
v(835)=statev(23)*statev(25)
v(834)=statev(26)*statev(27)
v(833)=1d0+statev(20)
v(832)=statev(15)*statev(16)
v(831)=-(statev(16)*statev(17))
v(830)=statev(17)*statev(19)
v(829)=-(statev(15)*statev(19))
v(828)=1d0+statev(13)
v(827)=statev(18)*statev(19)
v(826)=-(statev(14)*statev(18))
v(825)=statev(14)*statev(15)
v(824)=1d0+statev(12)
v(823)=statev(14)*statev(16)
v(822)=statev(17)*statev(18)
v(821)=1d0+statev(11)
v(820)=1d0/(Fnew(6)*(Fnew(4)*Fnew(5)-Fnew(2)*Fnew(7))+Fnew(3)*(Fnew(1)*Fnew(2)-Fnew(4)*Fnew(8))+(-(Fnew(1)*Fnew(5))&
&+Fnew(7)*Fnew(8))*Fnew(9))
v(903)=2d0*v(820)
v(227)=-(statev(15)*v(821))+v(822)
v(218)=-(statev(19)*v(821))+v(823)
v(226)=-(statev(17)*v(824))+v(825)
v(225)=v(821)*v(824)+v(826)
v(219)=-(statev(16)*v(824))+v(827)
v(223)=v(824)*v(828)+v(829)
v(222)=-(statev(14)*v(828))+v(830)
v(221)=v(821)*v(828)+v(831)
v(220)=-(statev(18)*v(828))+v(832)
v(250)=-(statev(24)*v(833))+v(834)
v(241)=-(statev(28)*v(833))+v(835)
v(249)=-(statev(26)*v(836))+v(837)
v(248)=v(833)*v(836)+v(838)
v(242)=-(statev(25)*v(836))+v(839)
v(246)=v(836)*v(840)+v(841)
v(245)=-(statev(23)*v(840))+v(842)
v(244)=v(833)*v(840)+v(843)
v(243)=-(statev(27)*v(840))+v(844)
v(111)=-(statev(5)*v(845))+v(846)
v(107)=-(statev(9)*v(845))+v(847)
v(115)=-(statev(6)*v(848))+v(849)
v(113)=v(845)*v(848)+v(850)
v(112)=-(statev(7)*v(848))+v(851)
v(117)=v(848)*v(852)+v(853)
v(116)=-(statev(8)*v(852))+v(854)
v(109)=v(845)*v(852)+v(855)
v(108)=-(statev(4)*v(852))+v(856)
v(103)=1d0/(statev(9)*v(111)+statev(6)*v(112)+v(113)*v(852))
v(269)=v(103)*v(111)
v(268)=v(103)*v(112)
v(267)=v(103)*v(113)
v(266)=v(103)*v(108)
v(265)=v(103)*v(107)
v(264)=v(103)*v(109)
v(263)=v(103)*v(115)
v(262)=v(103)*v(116)
v(261)=v(103)*v(117)
v(104)=v(103)*(Fnew(7)*v(115)+Fnew(4)*v(116)+Fnew(1)*v(117))
v(899)=(v(104)*v(104))
v(857)=2d0*v(104)
v(276)=v(263)*v(857)
v(285)=-v(276)/3d0
v(273)=v(262)*v(857)
v(282)=-v(273)/3d0
v(270)=v(261)*v(857)
v(279)=-v(270)/3d0
v(105)=v(103)*(Fnew(5)*v(107)+Fnew(8)*v(108)+Fnew(2)*v(109))
v(858)=2d0*v(105)
v(295)=v(266)*v(858)
v(304)=-v(295)/3d0
v(292)=v(265)*v(858)
v(301)=-v(292)/3d0
v(289)=v(264)*v(858)
v(298)=-v(289)/3d0
v(106)=v(103)*(Fnew(9)*v(111)+Fnew(6)*v(112)+Fnew(3)*v(113))
v(859)=2d0*v(106)
v(314)=v(269)*v(859)
v(323)=-v(314)/3d0
v(311)=v(268)*v(859)
v(320)=-v(311)/3d0
v(308)=v(267)*v(859)
v(317)=-v(308)/3d0
v(110)=v(103)*(Fnew(7)*v(107)+Fnew(1)*v(108)+Fnew(4)*v(109))
v(900)=(v(110)*v(110))
v(860)=2d0*v(110)
v(330)=v(110)*v(263)+v(104)*v(265)
v(327)=v(110)*v(262)+v(104)*v(264)
v(324)=v(110)*v(261)+v(104)*v(266)
v(294)=v(265)*v(860)
v(303)=-v(294)/3d0
v(291)=v(264)*v(860)
v(300)=-v(291)/3d0
v(288)=v(266)*v(860)
v(297)=-v(288)/3d0
v(114)=v(103)*(Fnew(2)*v(111)+Fnew(8)*v(112)+Fnew(5)*v(113))
v(861)=2d0*v(114)
v(358)=v(114)*v(266)+v(105)*v(268)
v(355)=v(114)*v(265)+v(105)*v(267)
v(352)=v(114)*v(264)+v(105)*v(269)
v(313)=v(268)*v(861)
v(322)=-v(313)/3d0
v(310)=v(267)*v(861)
v(319)=-v(310)/3d0
v(307)=v(269)*v(861)
v(316)=-v(307)/3d0
v(118)=v(103)*(Fnew(3)*v(115)+Fnew(9)*v(116)+Fnew(6)*v(117))
v(862)=2d0*v(118)
v(386)=v(106)*v(262)+v(118)*v(269)
v(383)=v(106)*v(261)+v(118)*v(268)
v(380)=v(106)*v(263)+v(118)*v(267)
v(278)=v(262)*v(862)
v(287)=-v(278)/3d0
v(275)=v(261)*v(862)
v(284)=-v(275)/3d0
v(272)=v(263)*v(862)
v(281)=-v(272)/3d0
v(119)=v(103)*(Fnew(4)*v(111)+Fnew(1)*v(112)+Fnew(7)*v(113))
v(902)=v(119)*v(860)
v(901)=(v(119)*v(119))
v(863)=2d0*v(119)
v(384)=v(119)*v(263)+v(104)*v(267)
v(381)=v(119)*v(262)+v(104)*v(269)
v(378)=v(119)*v(261)+v(104)*v(268)
v(357)=v(119)*v(265)+v(110)*v(267)
v(354)=v(119)*v(264)+v(110)*v(269)
v(351)=v(119)*v(266)+v(110)*v(268)
v(312)=v(267)*v(863)
v(321)=-v(312)/3d0
v(309)=v(269)*v(863)
v(318)=-v(309)/3d0
v(306)=v(268)*v(863)
v(315)=-v(306)/3d0
v(120)=v(103)*(Fnew(5)*v(115)+Fnew(2)*v(116)+Fnew(8)*v(117))
v(864)=2d0*v(120)
v(385)=v(114)*v(261)+v(120)*v(268)
v(382)=v(114)*v(263)+v(120)*v(267)
v(379)=v(114)*v(262)+v(120)*v(269)
v(331)=v(105)*v(261)+v(120)*v(266)
v(328)=v(105)*v(263)+v(120)*v(265)
v(325)=v(105)*v(262)+v(120)*v(264)
v(277)=v(261)*v(864)
v(286)=-v(277)/3d0
v(274)=v(263)*v(864)
v(283)=-v(274)/3d0
v(271)=v(262)*v(864)
v(280)=-v(271)/3d0
v(121)=v(103)*(Fnew(3)*v(107)+Fnew(6)*v(108)+Fnew(9)*v(109))
v(865)=2d0*v(121)
v(359)=v(106)*v(264)+v(121)*v(269)
v(356)=v(106)*v(266)+v(121)*v(268)
v(353)=v(106)*v(265)+v(121)*v(267)
v(332)=v(121)*v(262)+v(118)*v(264)
v(329)=v(121)*v(261)+v(118)*v(266)
v(326)=v(121)*v(263)+v(118)*v(265)
v(296)=v(264)*v(865)
v(305)=-v(296)/3d0
v(293)=v(266)*v(865)
v(302)=-v(293)/3d0
v(290)=v(265)*v(865)
v(299)=-v(290)/3d0
v(122)=(v(118)*v(118))+(v(120)*v(120))+v(899)
v(142)=-v(122)/3d0
v(123)=(v(105)*v(105))+(v(121)*v(121))+v(900)
v(143)=-v(123)/3d0
v(124)=(v(106)*v(106))+(v(114)*v(114))+v(901)
v(475)=(2d0/3d0)*v(124)+v(142)+v(143)
v(135)=-v(124)/3d0
v(485)=(2d0/3d0)*v(123)+v(135)+v(142)
v(465)=(2d0/3d0)*v(122)+v(135)+v(143)
v(125)=v(104)*v(110)+v(105)*v(120)+v(118)*v(121)
v(866)=2d0*v(125)
v(341)=v(332)*v(866)
v(350)=v(123)*v(278)+v(122)*v(296)-v(341)
v(340)=v(331)*v(866)
v(349)=v(123)*v(277)+v(122)*v(295)-v(340)
v(339)=v(330)*v(866)
v(348)=v(123)*v(276)+v(122)*v(294)-v(339)
v(338)=v(329)*v(866)
v(347)=v(123)*v(275)+v(122)*v(293)-v(338)
v(337)=v(328)*v(866)
v(346)=v(123)*v(274)+v(122)*v(292)-v(337)
v(336)=v(327)*v(866)
v(345)=v(123)*v(273)+v(122)*v(291)-v(336)
v(335)=v(326)*v(866)
v(344)=v(123)*v(272)+v(122)*v(290)-v(335)
v(334)=v(325)*v(866)
v(343)=v(123)*v(271)+v(122)*v(289)-v(334)
v(333)=v(324)*v(866)
v(342)=v(123)*v(270)+v(122)*v(288)-v(333)
v(141)=(v(125)*v(125))
v(157)=v(122)*v(123)-v(141)
v(126)=v(105)*v(114)+v(110)*v(119)+v(106)*v(121)
v(867)=2d0*v(126)
v(435)=v(126)*v(866)
v(368)=v(359)*v(867)
v(377)=v(124)*v(296)+v(123)*v(314)-v(368)
v(367)=v(358)*v(867)
v(376)=v(124)*v(295)+v(123)*v(313)-v(367)
v(366)=v(357)*v(867)
v(375)=v(124)*v(294)+v(123)*v(312)-v(366)
v(365)=v(356)*v(867)
v(374)=v(124)*v(293)+v(123)*v(311)-v(365)
v(364)=v(355)*v(867)
v(373)=v(124)*v(292)+v(123)*v(310)-v(364)
v(363)=v(354)*v(867)
v(372)=v(124)*v(291)+v(123)*v(309)-v(363)
v(362)=v(353)*v(867)
v(371)=v(124)*v(290)+v(123)*v(308)-v(362)
v(361)=v(352)*v(867)
v(370)=v(124)*v(289)+v(123)*v(307)-v(361)
v(360)=v(351)*v(867)
v(369)=v(124)*v(288)+v(123)*v(306)-v(360)
v(129)=(v(126)*v(126))
v(146)=v(123)*v(124)-v(129)
v(127)=v(106)*v(118)+v(104)*v(119)+v(114)*v(120)
v(868)=2d0*v(127)
v(434)=v(127)*v(866)
v(432)=v(127)*v(867)
v(422)=v(386)*v(868)
v(431)=v(124)*v(278)+v(122)*v(314)-v(422)
v(421)=v(385)*v(868)
v(430)=v(124)*v(277)+v(122)*v(313)-v(421)
v(420)=v(384)*v(868)
v(429)=v(124)*v(276)+v(122)*v(312)-v(420)
v(419)=v(383)*v(868)
v(428)=v(124)*v(275)+v(122)*v(311)-v(419)
v(418)=v(382)*v(868)
v(427)=v(124)*v(274)+v(122)*v(310)-v(418)
v(417)=v(381)*v(868)
v(426)=v(124)*v(273)+v(122)*v(309)-v(417)
v(416)=v(380)*v(868)
v(425)=v(124)*v(272)+v(122)*v(308)-v(416)
v(415)=v(379)*v(868)
v(424)=v(124)*v(271)+v(122)*v(307)-v(415)
v(414)=v(378)*v(868)
v(423)=v(124)*v(270)+v(122)*v(306)-v(414)
v(413)=-(v(125)*v(314))-v(124)*v(332)+v(127)*v(359)+v(126)*v(386)
v(412)=-(v(125)*v(313))-v(124)*v(331)+v(127)*v(358)+v(126)*v(385)
v(411)=-(v(125)*v(312))-v(124)*v(330)+v(127)*v(357)+v(126)*v(384)
v(410)=-(v(125)*v(311))-v(124)*v(329)+v(127)*v(356)+v(126)*v(383)
v(409)=-(v(125)*v(310))-v(124)*v(328)+v(127)*v(355)+v(126)*v(382)
v(408)=-(v(125)*v(309))-v(124)*v(327)+v(127)*v(354)+v(126)*v(381)
v(407)=-(v(125)*v(308))-v(124)*v(326)+v(127)*v(353)+v(126)*v(380)
v(406)=-(v(125)*v(307))-v(124)*v(325)+v(127)*v(352)+v(126)*v(379)
v(405)=-(v(125)*v(306))-v(124)*v(324)+v(127)*v(351)+v(126)*v(378)
v(404)=-(v(126)*v(278))+v(127)*v(332)-v(122)*v(359)+v(125)*v(386)
v(403)=-(v(126)*v(277))+v(127)*v(331)-v(122)*v(358)+v(125)*v(385)
v(402)=-(v(126)*v(276))+v(127)*v(330)-v(122)*v(357)+v(125)*v(384)
v(401)=-(v(126)*v(275))+v(127)*v(329)-v(122)*v(356)+v(125)*v(383)
v(400)=-(v(126)*v(274))+v(127)*v(328)-v(122)*v(355)+v(125)*v(382)
v(399)=-(v(126)*v(273))+v(127)*v(327)-v(122)*v(354)+v(125)*v(381)
v(398)=-(v(126)*v(272))+v(127)*v(326)-v(122)*v(353)+v(125)*v(380)
v(397)=-(v(126)*v(271))+v(127)*v(325)-v(122)*v(352)+v(125)*v(379)
v(396)=-(v(126)*v(270))+v(127)*v(324)-v(122)*v(351)+v(125)*v(378)
v(395)=-(v(127)*v(296))+v(126)*v(332)+v(125)*v(359)-v(123)*v(386)
v(394)=-(v(127)*v(295))+v(126)*v(331)+v(125)*v(358)-v(123)*v(385)
v(393)=-(v(127)*v(294))+v(126)*v(330)+v(125)*v(357)-v(123)*v(384)
v(392)=-(v(127)*v(293))+v(126)*v(329)+v(125)*v(356)-v(123)*v(383)
v(391)=-(v(127)*v(292))+v(126)*v(328)+v(125)*v(355)-v(123)*v(382)
v(390)=-(v(127)*v(291))+v(126)*v(327)+v(125)*v(354)-v(123)*v(381)
v(389)=-(v(127)*v(290))+v(126)*v(326)+v(125)*v(353)-v(123)*v(380)
v(388)=-(v(127)*v(289))+v(126)*v(325)+v(125)*v(352)-v(123)*v(379)
v(387)=-(v(127)*v(288))+v(126)*v(324)+v(125)*v(351)-v(123)*v(378)
v(158)=v(125)*v(126)-v(123)*v(127)
v(153)=-(v(122)*v(126))+v(125)*v(127)
v(148)=-(v(124)*v(125))+v(126)*v(127)
v(133)=(v(127)*v(127))
v(443)=-(v(129)*v(278))-v(133)*v(296)+v(157)*v(314)+v(124)*v(350)-v(122)*v(368)-v(123)*v(422)+v(332)*v(432)+v(359)*v&
&(434)+v(386)*v(435)
v(442)=-(v(129)*v(277))-v(133)*v(295)+v(157)*v(313)+v(124)*v(349)-v(122)*v(367)-v(123)*v(421)+v(331)*v(432)+v(358)*v&
&(434)+v(385)*v(435)
v(441)=-(v(129)*v(276))-v(133)*v(294)+v(157)*v(312)+v(124)*v(348)-v(122)*v(366)-v(123)*v(420)+v(330)*v(432)+v(357)*v&
&(434)+v(384)*v(435)
v(440)=-(v(129)*v(275))-v(133)*v(293)+v(157)*v(311)+v(124)*v(347)-v(122)*v(365)-v(123)*v(419)+v(329)*v(432)+v(356)*v&
&(434)+v(383)*v(435)
v(439)=-(v(129)*v(274))-v(133)*v(292)+v(157)*v(310)+v(124)*v(346)-v(122)*v(364)-v(123)*v(418)+v(328)*v(432)+v(355)*v&
&(434)+v(382)*v(435)
v(438)=-(v(129)*v(273))-v(133)*v(291)+v(157)*v(309)+v(124)*v(345)-v(122)*v(363)-v(123)*v(417)+v(327)*v(432)+v(354)*v&
&(434)+v(381)*v(435)
v(437)=-(v(129)*v(272))-v(133)*v(290)+v(157)*v(308)+v(124)*v(344)-v(122)*v(362)-v(123)*v(416)+v(326)*v(432)+v(353)*v&
&(434)+v(380)*v(435)
v(436)=-(v(129)*v(271))-v(133)*v(289)+v(157)*v(307)+v(124)*v(343)-v(122)*v(361)-v(123)*v(415)+v(325)*v(432)+v(352)*v&
&(434)+v(379)*v(435)
v(433)=-(v(129)*v(270))-v(133)*v(288)+v(157)*v(306)+v(124)*v(342)-v(122)*v(360)-v(123)*v(414)+v(324)*v(432)+v(351)*v&
&(434)+v(378)*v(435)
v(152)=v(122)*v(124)-v(133)
v(130)=-(v(122)*v(129))-v(123)*v(133)+v(124)*v(157)+v(125)*v(432)
v(877)=v(148)/v(130)
v(506)=1d0/v(130)**0.23333333333333334d1
v(869)=(-4d0/3d0)*v(506)
v(514)=v(443)*v(869)
v(513)=v(442)*v(869)
v(512)=v(441)*v(869)
v(511)=v(440)*v(869)
v(510)=v(439)*v(869)
v(509)=v(438)*v(869)
v(508)=v(437)*v(869)
v(507)=v(436)*v(869)
v(505)=v(433)*v(869)
v(496)=1d0/v(130)**2
v(504)=-(v(443)*v(496))
v(503)=-(v(442)*v(496))
v(502)=-(v(441)*v(496))
v(501)=-(v(440)*v(496))
v(500)=-(v(439)*v(496))
v(499)=-(v(438)*v(496))
v(498)=-(v(437)*v(496))
v(497)=-(v(436)*v(496))
v(495)=-(v(433)*v(496))
v(455)=1d0/v(130)**0.13333333333333333d1
v(873)=mpar(1)*v(455)
v(870)=-v(455)/3d0
v(464)=v(443)*v(870)
v(463)=v(442)*v(870)
v(462)=v(441)*v(870)
v(461)=v(440)*v(870)
v(460)=v(439)*v(870)
v(459)=v(438)*v(870)
v(458)=v(437)*v(870)
v(457)=v(436)*v(870)
v(456)=v(433)*v(870)
v(444)=sqrt(v(130))
v(871)=mpar(2)*(1d0-1d0/(2d0*v(444)))
v(454)=v(443)*v(871)
v(453)=v(442)*v(871)
v(452)=v(441)*v(871)
v(451)=v(440)*v(871)
v(450)=v(439)*v(871)
v(449)=v(438)*v(871)
v(448)=v(437)*v(871)
v(447)=v(436)*v(871)
v(445)=v(433)*v(871)
v(137)=mpar(2)*(v(130)-v(444))
v(136)=1d0/v(130)**0.3333333333333333d0
v(872)=mpar(1)*v(136)
v(494)=v(454)+mpar(1)*(v(136)*(v(287)+(2d0/3d0)*v(296)+v(323))+v(464)*v(485))
v(493)=v(453)+mpar(1)*(v(136)*(v(286)+(2d0/3d0)*v(295)+v(322))+v(463)*v(485))
v(492)=v(452)+mpar(1)*(v(136)*(v(285)+(2d0/3d0)*v(294)+v(321))+v(462)*v(485))
v(491)=v(451)+mpar(1)*(v(136)*(v(284)+(2d0/3d0)*v(293)+v(320))+v(461)*v(485))
v(490)=v(450)+mpar(1)*(v(136)*(v(283)+(2d0/3d0)*v(292)+v(319))+v(460)*v(485))
v(489)=v(449)+mpar(1)*(v(136)*(v(282)+(2d0/3d0)*v(291)+v(318))+v(459)*v(485))
v(488)=v(448)+mpar(1)*(v(136)*(v(281)+(2d0/3d0)*v(290)+v(317))+v(458)*v(485))
v(487)=v(447)+mpar(1)*(v(136)*(v(280)+(2d0/3d0)*v(289)+v(316))+v(457)*v(485))
v(486)=v(445)+mpar(1)*(v(136)*(v(279)+(2d0/3d0)*v(288)+v(315))+v(456)*v(485))
v(484)=v(454)+mpar(1)*(v(136)*(v(287)+v(305)+(2d0/3d0)*v(314))+v(464)*v(475))
v(483)=v(453)+mpar(1)*(v(136)*(v(286)+v(304)+(2d0/3d0)*v(313))+v(463)*v(475))
v(482)=v(452)+mpar(1)*(v(136)*(v(285)+v(303)+(2d0/3d0)*v(312))+v(462)*v(475))
v(481)=v(451)+mpar(1)*(v(136)*(v(284)+v(302)+(2d0/3d0)*v(311))+v(461)*v(475))
v(480)=v(450)+mpar(1)*(v(136)*(v(283)+v(301)+(2d0/3d0)*v(310))+v(460)*v(475))
v(479)=v(449)+mpar(1)*(v(136)*(v(282)+v(300)+(2d0/3d0)*v(309))+v(459)*v(475))
v(478)=v(448)+mpar(1)*(v(136)*(v(281)+v(299)+(2d0/3d0)*v(308))+v(458)*v(475))
v(477)=v(447)+mpar(1)*(v(136)*(v(280)+v(298)+(2d0/3d0)*v(307))+v(457)*v(475))
v(476)=v(445)+mpar(1)*(v(136)*(v(279)+v(297)+(2d0/3d0)*v(306))+v(456)*v(475))
v(474)=v(454)+mpar(1)*(v(136)*((2d0/3d0)*v(278)+v(305)+v(323))+v(464)*v(465))
v(473)=v(453)+mpar(1)*(v(136)*((2d0/3d0)*v(277)+v(304)+v(322))+v(463)*v(465))
v(472)=v(452)+mpar(1)*(v(136)*((2d0/3d0)*v(276)+v(303)+v(321))+v(462)*v(465))
v(471)=v(451)+mpar(1)*(v(136)*((2d0/3d0)*v(275)+v(302)+v(320))+v(461)*v(465))
v(470)=v(450)+mpar(1)*(v(136)*((2d0/3d0)*v(274)+v(301)+v(319))+v(460)*v(465))
v(469)=v(449)+mpar(1)*(v(136)*((2d0/3d0)*v(273)+v(300)+v(318))+v(459)*v(465))
v(468)=v(448)+mpar(1)*(v(136)*((2d0/3d0)*v(272)+v(299)+v(317))+v(458)*v(465))
v(467)=v(447)+mpar(1)*(v(136)*((2d0/3d0)*v(271)+v(298)+v(316))+v(457)*v(465))
v(466)=v(445)+mpar(1)*(v(136)*((2d0/3d0)*v(270)+v(297)+v(315))+v(456)*v(465))
v(159)=v(137)+v(465)*v(872)
v(879)=v(146)*v(159)
v(876)=v(158)*v(159)
v(154)=v(137)+v(475)*v(872)
v(875)=v(154)*v(157)
v(874)=v(153)*v(154)
v(149)=v(137)+v(485)*v(872)
v(878)=v(149)*v(152)
v(550)=mpar(1)*(v(332)*v(455)+v(125)*v(514))
v(549)=mpar(1)*(v(331)*v(455)+v(125)*v(513))
v(548)=mpar(1)*(v(330)*v(455)+v(125)*v(512))
v(547)=mpar(1)*(v(329)*v(455)+v(125)*v(511))
v(546)=mpar(1)*(v(328)*v(455)+v(125)*v(510))
v(545)=mpar(1)*(v(327)*v(455)+v(125)*v(509))
v(544)=mpar(1)*(v(326)*v(455)+v(125)*v(508))
v(543)=mpar(1)*(v(325)*v(455)+v(125)*v(507))
v(542)=mpar(1)*(v(324)*v(455)+v(125)*v(505))
v(541)=mpar(1)*(v(395)*v(455)+v(158)*v(514))
v(540)=mpar(1)*(v(394)*v(455)+v(158)*v(513))
v(539)=mpar(1)*(v(393)*v(455)+v(158)*v(512))
v(538)=mpar(1)*(v(392)*v(455)+v(158)*v(511))
v(537)=mpar(1)*(v(391)*v(455)+v(158)*v(510))
v(536)=mpar(1)*(v(390)*v(455)+v(158)*v(509))
v(535)=mpar(1)*(v(389)*v(455)+v(158)*v(508))
v(534)=mpar(1)*(v(388)*v(455)+v(158)*v(507))
v(533)=mpar(1)*(v(387)*v(455)+v(158)*v(505))
v(532)=mpar(1)*(v(359)*v(455)+v(126)*v(514))
v(531)=mpar(1)*(v(358)*v(455)+v(126)*v(513))
v(530)=mpar(1)*(v(357)*v(455)+v(126)*v(512))
v(529)=mpar(1)*(v(356)*v(455)+v(126)*v(511))
v(528)=mpar(1)*(v(355)*v(455)+v(126)*v(510))
v(527)=mpar(1)*(v(354)*v(455)+v(126)*v(509))
v(526)=mpar(1)*(v(353)*v(455)+v(126)*v(508))
v(525)=mpar(1)*(v(352)*v(455)+v(126)*v(507))
v(524)=mpar(1)*(v(351)*v(455)+v(126)*v(505))
v(523)=mpar(1)*(v(386)*v(455)+v(127)*v(514))
v(522)=mpar(1)*(v(385)*v(455)+v(127)*v(513))
v(521)=mpar(1)*(v(384)*v(455)+v(127)*v(512))
v(520)=mpar(1)*(v(383)*v(455)+v(127)*v(511))
v(519)=mpar(1)*(v(382)*v(455)+v(127)*v(510))
v(518)=mpar(1)*(v(381)*v(455)+v(127)*v(509))
v(517)=mpar(1)*(v(380)*v(455)+v(127)*v(508))
v(516)=mpar(1)*(v(379)*v(455)+v(127)*v(507))
v(515)=mpar(1)*(v(378)*v(455)+v(127)*v(505))
v(156)=v(127)*v(873)
v(151)=v(126)*v(873)
v(622)=v(156)*v(413)+v(151)*v(431)+(v(154)*v(404)+v(153)*v(484))/v(130)+v(148)*v(523)+v(152)*v(532)+v(504)*v(874)
v(621)=v(156)*v(412)+v(151)*v(430)+(v(154)*v(403)+v(153)*v(483))/v(130)+v(148)*v(522)+v(152)*v(531)+v(503)*v(874)
v(620)=v(156)*v(411)+v(151)*v(429)+(v(154)*v(402)+v(153)*v(482))/v(130)+v(148)*v(521)+v(152)*v(530)+v(502)*v(874)
v(619)=v(156)*v(410)+v(151)*v(428)+(v(154)*v(401)+v(153)*v(481))/v(130)+v(148)*v(520)+v(152)*v(529)+v(501)*v(874)
v(618)=v(156)*v(409)+v(151)*v(427)+(v(154)*v(400)+v(153)*v(480))/v(130)+v(148)*v(519)+v(152)*v(528)+v(500)*v(874)
v(617)=v(156)*v(408)+v(151)*v(426)+(v(154)*v(399)+v(153)*v(479))/v(130)+v(148)*v(518)+v(152)*v(527)+v(499)*v(874)
v(616)=v(156)*v(407)+v(151)*v(425)+(v(154)*v(398)+v(153)*v(478))/v(130)+v(148)*v(517)+v(152)*v(526)+v(498)*v(874)
v(615)=v(156)*v(406)+v(151)*v(424)+(v(154)*v(397)+v(153)*v(477))/v(130)+v(148)*v(516)+v(152)*v(525)+v(497)*v(874)
v(614)=v(156)*v(405)+v(151)*v(423)+(v(154)*v(396)+v(153)*v(476))/v(130)+v(148)*v(515)+v(152)*v(524)+v(495)*v(874)
v(559)=v(151)*v(404)+v(153)*v(532)
v(558)=v(151)*v(403)+v(153)*v(531)
v(557)=v(151)*v(402)+v(153)*v(530)
v(556)=v(151)*v(401)+v(153)*v(529)
v(555)=v(151)*v(400)+v(153)*v(528)
v(554)=v(151)*v(399)+v(153)*v(527)
v(553)=v(151)*v(398)+v(153)*v(526)
v(552)=v(151)*v(397)+v(153)*v(525)
v(551)=v(151)*v(396)+v(153)*v(524)
v(147)=v(158)*v(873)
v(568)=v(147)*v(386)+v(127)*v(541)
v(604)=(v(154)*v(350)+v(157)*v(484))/v(130)+v(559)+v(568)+v(504)*v(875)
v(567)=v(147)*v(385)+v(127)*v(540)
v(603)=(v(154)*v(349)+v(157)*v(483))/v(130)+v(558)+v(567)+v(503)*v(875)
v(566)=v(147)*v(384)+v(127)*v(539)
v(602)=(v(154)*v(348)+v(157)*v(482))/v(130)+v(557)+v(566)+v(502)*v(875)
v(565)=v(147)*v(383)+v(127)*v(538)
v(601)=(v(154)*v(347)+v(157)*v(481))/v(130)+v(556)+v(565)+v(501)*v(875)
v(564)=v(147)*v(382)+v(127)*v(537)
v(600)=(v(154)*v(346)+v(157)*v(480))/v(130)+v(555)+v(564)+v(500)*v(875)
v(563)=v(147)*v(381)+v(127)*v(536)
v(599)=(v(154)*v(345)+v(157)*v(479))/v(130)+v(554)+v(563)+v(499)*v(875)
v(562)=v(147)*v(380)+v(127)*v(535)
v(598)=(v(154)*v(344)+v(157)*v(478))/v(130)+v(553)+v(562)+v(498)*v(875)
v(561)=v(147)*v(379)+v(127)*v(534)
v(597)=(v(154)*v(343)+v(157)*v(477))/v(130)+v(552)+v(561)+v(497)*v(875)
v(560)=v(147)*v(378)+v(127)*v(533)
v(596)=(v(154)*v(342)+v(157)*v(476))/v(130)+v(551)+v(560)+v(495)*v(875)
v(145)=v(125)*v(873)
v(661)=v(156)*v(350)+v(145)*v(404)+(v(159)*v(395)+v(158)*v(474))/v(130)+v(157)*v(523)+v(153)*v(550)+v(504)*v(876)
v(660)=v(156)*v(349)+v(145)*v(403)+(v(159)*v(394)+v(158)*v(473))/v(130)+v(157)*v(522)+v(153)*v(549)+v(503)*v(876)
v(659)=v(156)*v(348)+v(145)*v(402)+(v(159)*v(393)+v(158)*v(472))/v(130)+v(157)*v(521)+v(153)*v(548)+v(502)*v(876)
v(658)=v(156)*v(347)+v(145)*v(401)+(v(159)*v(392)+v(158)*v(471))/v(130)+v(157)*v(520)+v(153)*v(547)+v(501)*v(876)
v(657)=v(156)*v(346)+v(145)*v(400)+(v(159)*v(391)+v(158)*v(470))/v(130)+v(157)*v(519)+v(153)*v(546)+v(500)*v(876)
v(656)=v(156)*v(345)+v(145)*v(399)+(v(159)*v(390)+v(158)*v(469))/v(130)+v(157)*v(518)+v(153)*v(545)+v(499)*v(876)
v(655)=v(156)*v(344)+v(145)*v(398)+(v(159)*v(389)+v(158)*v(468))/v(130)+v(157)*v(517)+v(153)*v(544)+v(498)*v(876)
v(654)=v(156)*v(343)+v(145)*v(397)+(v(159)*v(388)+v(158)*v(467))/v(130)+v(157)*v(516)+v(153)*v(543)+v(497)*v(876)
v(653)=v(156)*v(342)+v(145)*v(396)+(v(159)*v(387)+v(158)*v(466))/v(130)+v(157)*v(515)+v(153)*v(542)+v(495)*v(876)
v(613)=v(147)*v(359)+v(145)*v(377)+v(149)*(v(413)/v(130)+v(148)*v(504))+v(126)*v(541)+v(146)*v(550)+v(494)*v(877)
v(612)=v(147)*v(358)+v(145)*v(376)+v(149)*(v(412)/v(130)+v(148)*v(503))+v(126)*v(540)+v(146)*v(549)+v(493)*v(877)
v(611)=v(147)*v(357)+v(145)*v(375)+v(149)*(v(411)/v(130)+v(148)*v(502))+v(126)*v(539)+v(146)*v(548)+v(492)*v(877)
v(610)=v(147)*v(356)+v(145)*v(374)+v(149)*(v(410)/v(130)+v(148)*v(501))+v(126)*v(538)+v(146)*v(547)+v(491)*v(877)
v(609)=v(147)*v(355)+v(145)*v(373)+v(149)*(v(409)/v(130)+v(148)*v(500))+v(126)*v(537)+v(146)*v(546)+v(490)*v(877)
v(608)=v(147)*v(354)+v(145)*v(372)+v(149)*(v(408)/v(130)+v(148)*v(499))+v(126)*v(536)+v(146)*v(545)+v(489)*v(877)
v(607)=v(147)*v(353)+v(145)*v(371)+v(149)*(v(407)/v(130)+v(148)*v(498))+v(126)*v(535)+v(146)*v(544)+v(488)*v(877)
v(606)=v(147)*v(352)+v(145)*v(370)+v(149)*(v(406)/v(130)+v(148)*v(497))+v(126)*v(534)+v(146)*v(543)+v(487)*v(877)
v(605)=v(147)*v(351)+v(145)*v(369)+v(149)*(v(405)/v(130)+v(148)*v(495))+v(126)*v(533)+v(146)*v(542)+v(486)*v(877)
v(577)=v(145)*v(413)+v(148)*v(550)
v(595)=(v(149)*v(431)+v(152)*v(494))/v(130)+v(559)+v(577)+v(504)*v(878)
v(586)=(v(159)*v(377)+v(146)*v(474))/v(130)+v(568)+v(577)+v(504)*v(879)
v(576)=v(145)*v(412)+v(148)*v(549)
v(594)=(v(149)*v(430)+v(152)*v(493))/v(130)+v(558)+v(576)+v(503)*v(878)
v(585)=(v(159)*v(376)+v(146)*v(473))/v(130)+v(567)+v(576)+v(503)*v(879)
v(575)=v(145)*v(411)+v(148)*v(548)
v(593)=(v(149)*v(429)+v(152)*v(492))/v(130)+v(557)+v(575)+v(502)*v(878)
v(584)=(v(159)*v(375)+v(146)*v(472))/v(130)+v(566)+v(575)+v(502)*v(879)
v(574)=v(145)*v(410)+v(148)*v(547)
v(592)=(v(149)*v(428)+v(152)*v(491))/v(130)+v(556)+v(574)+v(501)*v(878)
v(583)=(v(159)*v(374)+v(146)*v(471))/v(130)+v(565)+v(574)+v(501)*v(879)
v(573)=v(145)*v(409)+v(148)*v(546)
v(591)=(v(149)*v(427)+v(152)*v(490))/v(130)+v(555)+v(573)+v(500)*v(878)
v(582)=(v(159)*v(373)+v(146)*v(470))/v(130)+v(564)+v(573)+v(500)*v(879)
v(572)=v(145)*v(408)+v(148)*v(545)
v(590)=(v(149)*v(426)+v(152)*v(489))/v(130)+v(554)+v(572)+v(499)*v(878)
v(581)=(v(159)*v(372)+v(146)*v(469))/v(130)+v(563)+v(572)+v(499)*v(879)
v(571)=v(145)*v(407)+v(148)*v(544)
v(589)=(v(149)*v(425)+v(152)*v(488))/v(130)+v(553)+v(571)+v(498)*v(878)
v(580)=(v(159)*v(371)+v(146)*v(468))/v(130)+v(562)+v(571)+v(498)*v(879)
v(570)=v(145)*v(406)+v(148)*v(543)
v(588)=(v(149)*v(424)+v(152)*v(487))/v(130)+v(552)+v(570)+v(497)*v(878)
v(579)=(v(159)*v(370)+v(146)*v(467))/v(130)+v(561)+v(570)+v(497)*v(879)
v(569)=v(145)*v(405)+v(148)*v(542)
v(587)=(v(149)*v(423)+v(152)*v(486))/v(130)+v(551)+v(569)+v(495)*v(878)
v(578)=(v(159)*v(369)+v(146)*v(466))/v(130)+v(560)+v(569)+v(495)*v(879)
v(140)=v(151)*v(153)
v(139)=v(127)*v(147)
v(132)=v(145)*v(148)
v(131)=v(132)+v(139)+v(879)/v(130)
v(138)=v(132)+v(140)+v(878)/v(130)
v(144)=v(139)+v(140)+v(875)/v(130)
v(150)=v(145)*v(146)+v(126)*v(147)+v(149)*v(877)
v(155)=v(151)*v(152)+v(148)*v(156)+v(874)/v(130)
v(642)=v(150)*v(262)+v(138)*v(264)+v(155)*v(269)
v(645)=v(105)*v(588)+v(120)*v(606)+v(114)*v(615)+v(642)
v(638)=v(150)*v(261)+v(138)*v(266)+v(155)*v(268)
v(651)=v(105)*v(594)+v(120)*v(612)+v(114)*v(621)+v(638)
v(634)=v(150)*v(263)+v(138)*v(265)+v(155)*v(267)
v(648)=v(105)*v(591)+v(120)*v(609)+v(114)*v(618)+v(634)
v(629)=v(110)*v(593)+v(104)*v(611)+v(119)*v(620)+v(634)
v(626)=v(110)*v(590)+v(104)*v(608)+v(119)*v(617)+v(642)
v(623)=v(110)*v(587)+v(104)*v(605)+v(119)*v(614)+v(638)
v(175)=v(110)*v(138)+v(104)*v(150)+v(119)*v(155)
v(171)=v(121)*v(138)+v(118)*v(150)+v(106)*v(155)
v(167)=v(105)*v(138)+v(120)*v(150)+v(114)*v(155)
v(160)=v(145)*v(153)+v(156)*v(157)+v(876)/v(130)
v(702)=v(131)*v(262)+v(150)*v(264)+v(160)*v(269)
v(714)=v(120)*v(579)+v(105)*v(606)+v(114)*v(654)+v(702)
v(698)=v(131)*v(261)+v(150)*v(266)+v(160)*v(268)
v(720)=v(120)*v(585)+v(105)*v(612)+v(114)*v(660)+v(698)
v(694)=v(131)*v(263)+v(150)*v(265)+v(160)*v(267)
v(717)=v(120)*v(582)+v(105)*v(609)+v(114)*v(657)+v(694)
v(690)=v(160)*v(262)+v(155)*v(264)+v(144)*v(269)
v(705)=v(114)*v(597)+v(105)*v(615)+v(120)*v(654)+v(690)
v(686)=v(160)*v(261)+v(155)*v(266)+v(144)*v(268)
v(711)=v(114)*v(603)+v(105)*v(621)+v(120)*v(660)+v(686)
v(682)=v(160)*v(263)+v(155)*v(265)+v(144)*v(267)
v(708)=v(114)*v(600)+v(105)*v(618)+v(120)*v(657)+v(682)
v(677)=v(119)*v(602)+v(110)*v(620)+v(104)*v(659)+v(682)
v(674)=v(119)*v(599)+v(110)*v(617)+v(104)*v(656)+v(690)
v(671)=v(119)*v(596)+v(110)*v(614)+v(104)*v(653)+v(686)
v(668)=v(104)*v(584)+v(110)*v(611)+v(119)*v(659)+v(694)
v(665)=v(104)*v(581)+v(110)*v(608)+v(119)*v(656)+v(702)
v(662)=v(104)*v(578)+v(110)*v(605)+v(119)*v(653)+v(698)
v(177)=v(104)*v(131)+v(110)*v(150)+v(119)*v(160)
v(176)=v(119)*v(144)+v(110)*v(155)+v(104)*v(160)
v(173)=v(106)*v(144)+v(121)*v(155)+v(118)*v(160)
v(172)=v(118)*v(131)+v(121)*v(150)+v(106)*v(160)
v(169)=v(114)*v(144)+v(105)*v(155)+v(120)*v(160)
v(168)=v(120)*v(131)+v(105)*v(150)+v(114)*v(160)
v(770)=v(168)*v(261)+v(167)*v(266)+v(169)*v(268)
v(765)=v(168)*v(263)+v(167)*v(265)+v(169)*v(267)
v(743)=v(168)*v(262)+v(167)*v(264)+v(169)*v(269)
v(170)=v(110)*v(167)+v(104)*v(168)+v(119)*v(169)
v(904)=v(170)*v(820)
v(174)=v(105)*v(171)+v(120)*v(172)+v(114)*v(173)
v(906)=v(174)*v(820)
v(178)=v(121)*v(175)+v(106)*v(176)+v(118)*v(177)
v(905)=v(178)*v(820)
v(207)=1d0/(statev(16)*v(226)+statev(19)*v(227)+v(225)*v(828))**2
v(214)=-(v(207)*((v(225)*v(225))+(v(226)*v(226))+(v(227)*v(227))))
v(212)=1d0/v(207)**0.3333333333333333d0
v(897)=-(mpar(7)*v(212))
v(898)=v(207)*v(897)
v(211)=v(207)*((v(219)*v(219))+(v(220)*v(220))+(v(223)*v(223)))
v(216)=-v(211)/3d0
v(210)=-(v(207)*((v(218)*v(218))+(v(221)*v(221))+(v(222)*v(222))))
v(215)=v(210)/3d0
v(209)=v(214)/3d0
v(230)=1d0/(statev(25)*v(249)+statev(28)*v(250)+v(248)*v(840))**2
v(237)=-(v(230)*((v(248)*v(248))+(v(249)*v(249))+(v(250)*v(250))))
v(235)=1d0/v(230)**0.3333333333333333d0
v(895)=mpar(9)*v(235)
v(896)=v(230)*v(895)
v(234)=v(230)*((v(242)*v(242))+(v(243)*v(243))+(v(246)*v(246)))
v(239)=-v(234)/3d0
v(233)=-(v(230)*((v(241)*v(241))+(v(244)*v(244))+(v(245)*v(245))))
v(238)=v(233)/3d0
v(232)=v(237)/3d0
v(231)=(v(232)+(2d0/3d0)*v(234)+v(238))*v(895)
v(236)=(v(232)+(-2d0/3d0)*v(233)+v(239))*v(895)
v(247)=(v(241)*v(242)+v(243)*v(244)+v(245)*v(246))*v(896)
v(251)=(v(241)*v(248)+v(245)*v(249)+v(244)*v(250))*v(896)
v(252)=(v(242)*v(248)+v(246)*v(249)+v(243)*v(250))*v(896)
v(253)=v(159)-v(231)+(v(209)+(2d0/3d0)*v(211)+v(215))*v(897)
v(254)=v(149)-v(236)+(v(209)+(-2d0/3d0)*v(210)+v(216))*v(897)
v(255)=v(154)+((2d0/3d0)*v(237)-v(238)-v(239))*v(895)+((-2d0/3d0)*v(214)+v(215)+v(216))*v(897)
v(813)=-v(255)/3d0
v(256)=v(125)*v(138)+v(122)*v(150)+v(127)*v(155)-v(247)+(v(218)*v(219)+v(220)*v(221)+v(222)*v(223))*v(898)
v(907)=2d0*v(256)
v(257)=v(126)*v(144)+v(123)*v(155)+v(125)*v(160)-v(251)+(v(218)*v(225)+v(222)*v(226)+v(221)*v(227))*v(898)
v(908)=2d0*v(257)
v(258)=v(127)*v(131)+v(126)*v(150)+v(124)*v(160)-v(252)+(v(219)*v(225)+v(223)*v(226)+v(220)*v(227))*v(898)
v(909)=2d0*v(258)
v(728)=(v(110)*v(606)+v(119)*v(654))*v(857)+v(579)*v(899)+v(588)*v(900)+v(597)*v(901)+v(615)*v(902)
v(734)=(v(110)*v(607)+v(119)*v(655))*v(857)+v(580)*v(899)+v(589)*v(900)+v(598)*v(901)+v(616)*v(902)
v(747)=(v(110)*v(609)+v(119)*v(657))*v(857)+v(582)*v(899)+v(591)*v(900)+v(600)*v(901)+v(618)*v(902)
v(754)=(v(110)*v(610)+v(119)*v(658))*v(857)+v(583)*v(899)+v(592)*v(900)+v(601)*v(901)+v(619)*v(902)
v(810)=(Fnew(2)*(v(110)*(v(105)*v(590)+v(120)*v(608)+v(114)*v(617))+v(104)*(v(120)*v(581)+v(105)*v(608)+v(114)*v(656))&
&+v(119)*(v(114)*v(599)+v(105)*v(617)+v(120)*v(656))+v(743))+Fnew(5)*(v(110)*(v(105)*v(593)+v(120)*v(611)+v(114)*v(620))&
&+v(104)*(v(120)*v(584)+v(105)*v(611)+v(114)*v(659))+v(119)*(v(114)*v(602)+v(105)*v(620)+v(120)*v(659))+v(765))+Fnew(8)*&
&(v(110)*(v(105)*v(587)+v(120)*v(605)+v(114)*v(614))+v(104)*(v(120)*v(578)+v(105)*v(605)+v(114)*v(653))+v(119)*(v(114)*v&
&(596)+v(105)*v(614)+v(120)*v(653))+v(770)))*v(903)
v(809)=(Fnew(6)*(v(121)*v(623)+v(118)*v(662)+v(106)*v(671))+Fnew(9)*(v(121)*v(626)+v(118)*v(665)+v(106)*v(674))+Fnew(3&
&)*(v(121)*v(629)+v(118)*v(668)+v(106)*v(677)))*v(903)
v(769)=(v(110)*v(612)+v(119)*v(660))*v(857)+v(585)*v(899)+v(594)*v(900)+v(603)*v(901)+v(621)*v(902)
v(805)=(Fnew(4)*(v(110)*v(645)+v(119)*v(705)+v(104)*v(714))+Fnew(7)*(v(110)*v(648)+v(119)*v(708)+v(104)*v(717))+Fnew(1&
&)*(v(110)*v(651)+v(119)*v(711)+v(104)*v(720)))*v(903)
v(777)=(v(110)*v(613)+v(119)*v(661))*v(857)+v(586)*v(899)+v(595)*v(900)+v(604)*v(901)+v(622)*v(902)
v(788)=(Fnew(4)*v(728)+Fnew(7)*v(747)+Fnew(1)*v(769))*v(903)
v(789)=-v(788)/4d0
v(790)=(Fnew(7)*v(734)+Fnew(1)*v(754)+Fnew(4)*v(777))*v(903)
v(791)=-v(790)/4d0
v(792)=(Fnew(9)*v(728)+Fnew(3)*v(747)+Fnew(6)*v(769))*v(903)
v(797)=-v(792)/4d0
sigma(1)=(v(110)*v(175)+v(119)*v(176)+v(104)*v(177))*v(820)
sigma(2)=(v(105)*v(167)+v(120)*v(168)+v(114)*v(169))*v(820)
sigma(3)=(v(121)*v(171)+v(118)*v(172)+v(106)*v(173))*v(820)
sigma(4)=v(904)
sigma(5)=v(905)
sigma(6)=v(906)
ddsdde(1,1)=(Fnew(1)*(v(177)*v(261)+v(175)*v(266)+v(176)*v(268)+v(110)*v(623)+v(104)*v(662)+v(119)*v(671))+Fnew(4)*(v&
&(177)*v(262)+v(175)*v(264)+v(176)*v(269)+v(110)*v(626)+v(104)*v(665)+v(119)*v(674))+Fnew(7)*(v(177)*v(263)+v(175)*v(265&
&)+v(176)*v(267)+v(110)*v(629)+v(104)*v(668)+v(119)*v(677)))*v(820)
ddsdde(1,2)=(Fnew(2)*v(728)+Fnew(5)*v(747)+Fnew(8)*v(769))*v(820)
ddsdde(1,3)=(Fnew(3)*v(734)+Fnew(6)*v(754)+Fnew(9)*v(777))*v(820)
ddsdde(1,4)=v(789)
ddsdde(1,5)=v(791)
ddsdde(1,6)=v(792)/2d0
ddsdde(2,2)=(Fnew(2)*(v(105)*v(645)+v(114)*v(705)+v(120)*v(714)+v(743))+Fnew(5)*(v(105)*v(648)+v(114)*v(708)+v(120)*v&
&(717)+v(765))+Fnew(8)*(v(105)*v(651)+v(114)*v(711)+v(120)*v(720)+v(770)))*v(820)
ddsdde(2,3)=(Fnew(3)*(v(105)*(v(105)*v(589)+v(120)*v(607)+v(114)*v(616))+v(120)*(v(120)*v(580)+v(105)*v(607)+v(114)*v&
&(655))+v(114)*(v(114)*v(598)+v(105)*v(616)+v(120)*v(655)))+Fnew(6)*(v(105)*(v(105)*v(592)+v(120)*v(610)+v(114)*v(619))&
&+v(120)*(v(120)*v(583)+v(105)*v(610)+v(114)*v(658))+v(114)*(v(114)*v(601)+v(105)*v(619)+v(120)*v(658)))+Fnew(9)*(v(105&
&)*(v(105)*v(595)+v(120)*v(613)+v(114)*v(622))+v(120)*(v(120)*v(586)+v(105)*v(613)+v(114)*v(661))+v(114)*(v(114)*v(604)&
&+v(105)*v(622)+v(120)*v(661))))*v(820)
ddsdde(2,4)=v(789)
ddsdde(2,5)=v(790)/2d0
ddsdde(2,6)=v(797)
ddsdde(3,3)=(Fnew(3)*(v(172)*v(263)+v(171)*v(265)+v(173)*v(267)+v(121)*(v(121)*v(589)+v(118)*v(607)+v(106)*v(616)+v(634&
&))+v(106)*(v(106)*v(598)+v(121)*v(616)+v(118)*v(655)+v(682))+v(118)*(v(118)*v(580)+v(121)*v(607)+v(106)*v(655)+v(694)))&
&+Fnew(6)*(v(172)*v(261)+v(171)*v(266)+v(173)*v(268)+v(121)*(v(121)*v(592)+v(118)*v(610)+v(106)*v(619)+v(638))+v(106)*(v&
&(106)*v(601)+v(121)*v(619)+v(118)*v(658)+v(686))+v(118)*(v(118)*v(583)+v(121)*v(610)+v(106)*v(658)+v(698)))+Fnew(9)*(v&
&(172)*v(262)+v(171)*v(264)+v(173)*v(269)+v(121)*(v(121)*v(595)+v(118)*v(613)+v(106)*v(622)+v(642))+v(106)*(v(106)*v(604&
&)+v(121)*v(622)+v(118)*v(661)+v(690))+v(118)*(v(118)*v(586)+v(121)*v(613)+v(106)*v(661)+v(702))))*v(820)
ddsdde(3,4)=v(788)/2d0
ddsdde(3,5)=v(791)
ddsdde(3,6)=v(797)
ddsdde(4,4)=(v(805)+v(810))/4d0
ddsdde(4,5)=v(906)/2d0
ddsdde(4,6)=v(905)/2d0
ddsdde(5,5)=(v(805)+v(809))/4d0
ddsdde(5,6)=v(904)/2d0
ddsdde(6,6)=(v(809)+v(810))/4d0
DO i01=2,6
  DO i02=1,i01-1
    ddsdde(i01,i02)=ddsdde(i02,i01)
  ENDDO
ENDDO
yielding=-mpar(3)-mpar(5)*(1d0-dexp(-((mpar(4)*statev(10))/mpar(5))))+sqrt((3d0*(0.5d0+mpar(11)*statev(34)+mpar(12&
&)*statev(55))*v(258)+v(253)*v(884)+v(254)*v(888)+v(255)*v(891)+v(893)*v(907)+v(894)*v(908))*v(909)+v(253)*(0.15d1*((2d0&
&/3d0)+mpar(11)*statev(29)+mpar(12)*statev(50))*v(253)+v(254)*v(880)+v(255)*v(881)+v(882)*v(907)+v(883)*v(908)+v(884)*v&
&(909))+v(254)*(0.15d1*((2d0/3d0)+mpar(11)*statev(30)+mpar(12)*statev(51))*v(254)+v(253)*v(880)+v(255)*v(885)+v(886)*v&
&(907)+v(887)*v(908)+v(888)*v(909))+v(255)*(0.15d1*((2d0/3d0)+mpar(11)*statev(31)+mpar(12)*statev(52))*v(255)+v(253)*v&
&(881)+v(254)*v(885)+v(889)*v(907)+v(890)*v(908)+v(891)*v(909))+v(907)*(3d0*(0.5d0+mpar(11)*statev(32)+mpar(12)*statev&
&(53))*v(256)+v(253)*v(882)+v(254)*v(886)+v(255)*v(889)+v(892)*v(908)+v(893)*v(909))+v(908)*(3d0*(0.5d0+mpar(11)*statev&
&(33)+mpar(12)*statev(54))*v(257)+v(253)*v(883)+v(254)*v(887)+v(255)*v(890)+v(892)*v(907)+v(894)*v(909)))
xguess(1)=0d0
xguess(2)=(2d0/3d0)*v(253)-v(254)/3d0+v(813)
xguess(3)=-v(253)/3d0+(2d0/3d0)*v(254)+v(813)
xguess(4)=v(256)
xguess(5)=v(258)
xguess(6)=v(257)
xguess(7)=v(231)
xguess(8)=v(236)
xguess(9)=v(247)
xguess(10)=v(252)
xguess(11)=v(251)
END
