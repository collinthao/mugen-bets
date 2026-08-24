;---------------------------------------------------------------------------
;Fly car
[Statedef 1184]
type = S
physics = N
anim = 1184
ctrl = 0
velset = 0,0
sprpriority = 5

[State 1184, Seat]
type = Explod
triggerall = IsHelper
trigger1 = !Time
anim = 1185
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = -1
ownpal = 1
trans = Default
ignorehitpause = 1

[State 1184, Helper]
type = Helper
triggerall = IsHelper
triggerall = !NumHelper(1185)
trigger1 = Anim=1184 && !AnimElemTime(17)
name = "Jet 1"
ID = 1185
stateno = 1185
pos = -38,-20
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 1184, Helper]
type = Helper
triggerall = IsHelper
triggerall = !NumHelper(1186)
trigger1 = Anim=1184 && !AnimElemTime(17)
name = "Jet 2"
ID = 1186
stateno = 1185
pos = 38,-20
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 1184, Destroy]
type = DestroySelf
triggerall = IsHelper
trigger1 = Root,StateNo!=184
trigger2 = !Root,Alive || Root,Lose

;---------------------------------------------------------------------------
;Fly car - Jets
[Statedef 1185]
type = A
physics = N
anim = 6294
ctrl = 0
velset = 0,0
sprpriority = 2

[State 1185, Asserts]
type = AssertSpecial
trigger1 = IsHelper
flag = NoShadow
ignorehitpause = 1

[State 1185, Trans]
type = Trans
trigger1 = IsHelper
trans = Add
ignorehitpause = 1

[State 1185, Anim]
type = ChangeAnim
triggerall = IsHelper(1185) || IsHelper(1186)
trigger1 = Time=10
value = 6292

[State 1185, Pos]
type = PosAdd
triggerall = IsHelper(1185)
trigger1 = Time=10
x = -6
y = -51

[State 1185, Pos]
type = PosAdd
triggerall = IsHelper(1186)
trigger1 = Time=10
x = -2
y = -40

[State 1185, Pos]
type = PosAdd
triggerall = IsHelper(1185)
trigger1 = Time=17
y = -40

[State 1185, Pos]
type = PosAdd
triggerall = IsHelper(1186)
trigger1 = Time=17
y = -41

[State 1185, Anim]
type = ChangeAnim
triggerall = IsHelper(1185) || IsHelper(1186)
trigger1 = Time=23
value = 6290

[State 1185, Pos]
type = PosAdd
triggerall = IsHelper(1185)
trigger1 = Time=23
x = -68
y = -41

[State 1185, Pos]
type = PosAdd
triggerall = IsHelper(1186)
trigger1 = Time=23
x = -110
y = -51

[State 1185, Pos]
type = PosAdd
triggerall = IsHelper(1185)
trigger1 = Time=28
x = 10
y = -30

[State 1185, Pos]
type = PosAdd
triggerall = IsHelper(1186)
trigger1 = Time=28
x = -30
y = -30

[State 1185, Pos]
type = PosAdd
triggerall = IsHelper(1185) || IsHelper(1186)
trigger1 = Time=48
trigger2 = Time=51
trigger3 = Time=54
trigger4 = Time=57
trigger5 = Time=60
trigger6 = Time=63
trigger7 = Time=66
trigger8 = Time=69
trigger9 = Time=72
trigger10 = Time=75
trigger11 = Time=78
trigger12 = Time=81
x = 40

[State 1185, Destroy]
type = DestroySelf
triggerall = IsHelper
trigger1 = Time > 84

;---------------------------------------------------------------------------
;Intro - Zombieman
[Statedef 1192]
type = S
physics = N
anim = 1192
ctrl = 0
velset = 0,0
sprpriority = 3

[State 1192, Pos]
type = PosSet
triggerall = IsHelper
trigger1 = !Time
y = 0

[State 1192, Snd]
type = PlaySnd
triggerall = IsHelper
trigger1 = !Time
value = S191,(Random%6)
channel = 1

[State 1192, Snd]
type = PlaySnd
triggerall = IsHelper
trigger1 = !AnimElemTime(6)
value = S5100,0

[State 1192, Snd]
type = PlaySnd
triggerall = IsHelper
trigger1 = !AnimElemTime(7)
value = S2050,1
volumescale = 255

[State 1192, Destroy]
type = DestroySelf
triggerall = IsHelper
trigger1 = Root,StateNo != 193

[State 1192, Change]
type = SelfState
triggerall = IsHelper
trigger1 = !AnimTime
value = 1193

;---------------------------------------------------------------------------
;Intro - Zombieman LieDown
[Statedef 1193]
type = S
physics = N
anim = 1193
ctrl = 0
velset = 0,0
sprpriority = -3

[State 1193, Assert]
type = AssertSpecial
trigger1 = IsHelper
flag = NoShadow

[State 1193, Pos]
type = PosSet
triggerall = IsHelper
trigger1 = !Time
y = 0

;---------------------------------------------------------------------------
;Bullet
[Statedef 1001]
type = A
movetype = A
physics = N
anim = 6570
ctrl = 0
velset = 0,0
sprpriority = 1

[State 1001, Trans]
type = Trans
trigger1 = IsHelper
trans = Add

[State 1001, Speed]
type = VelSet
triggerall = IsHelper
trigger1 = !Time
x = 13
y = 0.8

[State 1001, Damage]
type = HitDef
triggerall = IsHelper
trigger1 = !Time
attr = A,SA
damage = 45,12
animtype = Medium
priority = 4,Hit
hitflag = MAF
guardflag = MA
sparkno = S6404+(Random%2)
guard.sparkno = -1
sparkxy = 10,0
hitsound = S250,0
guardsound = S130,(Random%16)
pausetime = 0,6
ground.hittime = 15
ground.slidetime = 15
ground.velocity = -3.2
ground.cornerpush.veloff = 0
guard.dist = 120
guard.hittime = 9
guard.cornerpush.veloff = 0
air.hittime = 12
air.velocity = -3.2,-2
air.cornerpush.veloff = 0
airguard.velocity = -2.9,-0.8
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
yaccel = 0.5
fall.recovertime = 6
envshake.time = 5

[State 1001, Helper]
type = Helper
triggerall = Ishelper
triggerall = MoveHit && Numtarget
trigger1 = (Target,MoveType = H) && !(Target,Time)
name = "Blood drop"
ID = 7100
stateno = 7100
pos = Ceil(P2Dist X-10),0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 0

[State 1001, Change]
type = SelfState
triggerall = IsHelper
trigger1 = Vel Y > 0 && Pos Y > 0
value = 1003

[State 1001, Change]
type = SelfState
triggerall = IsHelper
trigger1 = MoveContact && NumTarget
value = 1004

[State 1001, Destroy]
type = DestroySelf
triggerall = IsHelper
trigger1 = FrontEdgeDist < -50

;----------------------------------------------------------------------------
;Bullet hit
[Statedef 1002]
type = S
movetype = I
physics = N
anim = 6580
ctrl = 0
velset = 0,0
sprpriority = 4

[State 1002, Assert]
type = AssertSpecial
trigger1 = IsHelper
flag = NoShadow

[State 1002, Trans]
type = Trans
trigger1 = IsHelper
trans = Add

[State 1002, Snd]
type = PlaySnd
triggerall = IsHelper
trigger1 = !Time
value = S1010,2+(Random%9)
volumescale = 255

[State 1002, End]
type = DestroySelf
triggerall = IsHelper
trigger1 = !AnimTime

;----------------------------------------------------------------------------
;Bullet hit on floor
[Statedef 1003]
type = A
movetype = I
physics = N
anim = 6580
ctrl = 0
velset = 0,0
sprpriority = 4

[State 1003, Assert]
type = AssertSpecial
trigger1 = IsHelper
flag = NoShadow

[State 1003, Trans]
type = Trans
trigger1 = IsHelper
trans = Add

[State 1003, Dust]
type = Explod
triggerall = IsHelper
trigger1 = !Time
anim = F120
pos = 0,0
sprpriority = 2
velocity = 0,-0.1

[State 1003, Snd]
type = PlaySnd
triggerall = IsHelper
trigger1 = !Time
value = S1010,2+(Random%9)
volumescale = 255

[State 1003, PosSet]
type = PosSet
triggerall = IsHelper
trigger1 = !Time
y = 0

[State 1003, End]
type = DestroySelf
triggerall = IsHelper
trigger1 = !AnimTime

;----------------------------------------------------------------------------
;Bullet impact
[Statedef 1004]
type = A
movetype = I
physics = N
anim = 6580
ctrl = 0
velset = 0,0
sprpriority = 4

[State 1004, Assert]
type = AssertSpecial
trigger1 = IsHelper
flag = NoShadow

[State 1004, Trans]
type = Trans
trigger1 = IsHelper
trans = Add

[State 1004, End]
type = DestroySelf
triggerall = IsHelper
trigger1 = !AnimTime

;---------------------------------------------------------------------------
;Bullet - Rapid Fire
[Statedef 1006]
type = A
movetype = A
physics = N
anim = 6570
ctrl = 0
velset = 0,0
sprpriority = 1

[State 1006, Trans]
type = Trans
trigger1 = IsHelper
trans = Add

[State 1006, Speed]
type = VelSet
triggerall = IsHelper
trigger1 = !Time
x = 16
y = 0.10

[State 1006, Damage]
type = HitDef
triggerall = IsHelper
trigger1 = !Time
attr = A,SA
damage = 30,10
animtype = Medium
priority = 4,Hit
hitflag = MAF
guardflag = MA
sparkno = S6404+(Random%2)
guard.sparkno = -1
sparkxy = 10,0
hitsound = S250,0
guardsound = S130,(Random%16)
pausetime = 0,10
ground.hittime = 17
ground.slidetime = 17
ground.velocity = -4.2
ground.cornerpush.veloff = 0
guard.dist = 120
guard.hittime = 11
guard.cornerpush.veloff = 0
air.hittime = 12
air.velocity = -4.2,-2
air.cornerpush.veloff = 0
airguard.velocity = -2.9,-.8
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
yaccel = 0.6
fall.recovertime = 6
envshake.time = 10

[State 1006, Change]
type = SelfState
triggerall = IsHelper
trigger1 = Vel Y > 0 && Pos Y > 0
value = 1003

[State 1006, Change]
type = SelfState
triggerall = IsHelper
trigger1 = MoveContact && NumTarget
value = 1004

[State 1006, Destroy]
type = DestroySelf
triggerall = IsHelper
trigger1 = FrontEdgeDist < -50

;---------------------------------------------------------------------------
;Bullet - Rolling
[Statedef 1072]
type = A
movetype = A
physics = N
anim = 6570
ctrl = 0
velset = 0,0
sprpriority = 1

[State 1072, Speed]
type = VelSet
triggerall = IsHelper
trigger1 = !Time
x = 13
y = -0.8

[State 1072, Damage]
type = HitDef
triggerall = IsHelper
trigger1 = !Time
attr = S,SP
animtype = Medium
damage = 45,12
hitflag = MAF
guardflag = MA
priority = 4,Hit
pausetime = 0,6
hitsound = S1010,1
guardsound = S1010,2+(Random%9)
sparkno = -1
getpower = 15,15
givepower = 16,16
guard.dist = 120
ground.hittime = 15
ground.slidetime = 15
ground.velocity = -3.2
ground.cornerpush.veloff = 0
guard.hittime = 9
guard.cornerpush.veloff = 0
air.velocity = -3.2,-2
air.cornerpush.veloff = 0
airguard.velocity = -2.1,-0.8
airguard.cornerpush.veloff = 0
air.hittime = 12
air.fall = 1
fall.recovertime = 6
envshake.time = 5
yaccel = 0.5

[State 1072, Change]
type = SelfState
triggerall = IsHelper
trigger1 = Vel Y > 0 && Pos Y > 0
value = 1003

[State 1072, Change]
type = SelfState
triggerall = IsHelper
trigger1 = MoveContact && NumTarget
value = 1004

[State 1072, End]
type = DestroySelf
triggerall = IsHelper
trigger1 = FrontEdgeDist < -50

;---------------------------------------------------------------------------
;Shell
[Statedef 1081]
type = A
physics = N
ctrl = 0
sprpriority = 5

[State 1081, Anim - Small]
type = ChangeAnim
triggerall = IsHelper
triggerall = !Time
trigger1 = Root,StateNo = 811
trigger2 = Root,StateNo = 2100
trigger3 = Root,StateNo = 3700
value = 6500

[State 1081, Anim - Medium]
type = ChangeAnim
triggerall = IsHelper
triggerall = !Time
trigger1 = Root,StateNo = 1000
trigger2 = Root,StateNo = 1005
trigger3 = Root,StateNo = 1010
trigger4 = Root,StateNo = 1020
trigger5 = Root,StateNo = 1071
value = 6510

[State 1081, Anim - Heavy]
type = ChangeAnim
triggerall = IsHelper
triggerall = !Time
trigger1 = Root,StateNo = 2201
value = 6520

[State 1081, Anim - SG]
type = ChangeAnim
triggerall = IsHelper
triggerall = !Time
trigger1 = Root,StateNo = 2000
trigger2 = Root,StateNo = 2050
trigger3 = Root,StateNo = 3300
value = 6530

[State 1081, Vel]
type = VelSet
triggerall = IsHelper
trigger1 = !Time 
x = -4
y = -1-(Random%3)

[State 1081, Gravity]
type = VelAdd
triggerall = IsHelper
trigger1 = Time>0
y = 0.3

[State 1081, Shell]
type = Explod
triggerall = IsHelper
trigger1 = Pos Y >= -2 && Vel Y > 0
anim = Anim+1
ID = 1080
pos = 0,Ceil(-2+(Random/250))
scale = 0.25,0.25
sprpriority = -1
removetime = -2
ownpal = 1
trans = Default
ignorehitpause = 1

[State 1081, Snd]
type = PlaySnd
triggerall = IsHelper
trigger1 = Pos Y >= -2 && Vel Y > 0
value = S950,IFElse(Anim=6530,1,0)
volumescale = 255

[State 1081, Destroy]
type = DestroySelf
triggerall = IsHelper
trigger1 = Pos Y >= -2 && Vel Y > 0

;---------------------------------------------------------------------------
;Grenade
[Statedef 1051]
type = A
movetype = A
physics = N
anim = 6560
ctrl = 0
sprpriority = 5

[State 1051, Screen]
type = ScreenBound
trigger1 = IsHelper
value = 1

[State 1051, Rotation]
type = AngleAdd
trigger1 = IsHelper
value = -(Vel x)*5

[State 1051, Vel]
type = VelSet
triggerall = IsHelper
trigger1 = !Time
x = 4+(Random%7)
y = -4-(Random%3)

[State 1051, Var]
type = VarSet
triggerall = IsHelper
trigger1 = !Time
var(10) = 150

[State 1051, Var]
type = VarAdd
triggerall = IsHelper
trigger1 = Time>0
var(10) = -1

[State 1051, Gravity]
type = VelAdd
triggerall = IsHelper
trigger1 = Time>0
y = 0.3

[State 1051, Bounce]
type = VelMul
trigger1 = Vel x > 0 && FrontEdgeDist < 3
trigger2 = Vel x < 0 && BackEdgeDist < 3
x = -1

[State 1051, Hit]
type = HitDef
triggerall = IsHelper
trigger1 = !Time
attr = A,SA
damage = 20,5
animtype = Hard
priority = 4,Hit
hitflag = MAF
guardflag = M
pausetime = 0,20
sparkno = S6400
guard.sparkno = S6006
sparkxy = 10,0
hitsound = S200,5
guardsound = S121,0
ground.type = High
ground.hittime = 18
ground.slidetime = 18
ground.velocity = -1.5,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.type = High
air.animtype = Back
air.hittime = 18
air.velocity = -1.5,-2.5
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall = 0
air.fall = 1

[State 1051, Snd]
type = PlaySnd
trigger1 = Pos y >= 0 && Vel y >= 0
trigger2 = Vel x > 0 && FrontEdgeDist < 7
trigger3 = Vel x < 0 && BackEdgeDist < 7
value = S900,1
volumescale = 255

[State 1051, Vel]
type = Velmul
triggerall = IsHelper
trigger1 = Pos y >= 0 && Vel y >= 0
x = 0.95
y = -0.85

[State 1051, Change]
type = SelfState
triggerall = IsHelper
trigger1 = MoveContact && NumTarget
value = 1052

[State 1051, Change]
type = SelfState
triggerall = IsHelper
trigger1 = Var(10) <= 0
value = 1054

;---------------------------------------------------------------------------
;Grenade hit
[Statedef 1052]
type = A
movetype = I
physics = N
anim = 6560
ctrl = 0
sprpriority = 5

[State 1052, Angle]
type = AngleDraw
triggerall = IsHelper
trigger1 = Pos Y < 0
value = Time*10

[State 1052, Var]
type = VarAdd
triggerall = IsHelper
trigger1 = Time>=0
var(10) = -1

[State 1052, Vel]
type = VelSet
triggerall = IsHelper
trigger1 = !Time
x = -(Random%8/2)

[State 1052, Vel]
type = VelSet
triggerall = IsHelper
trigger1 = !Time
y = -(Random%8/2)

[State 1052, Vel]
type = VelAdd
triggerall = IsHelper
trigger1 = Time > 0
y = 0.3

[State 1052, Change]
type = SelfState
triggerall = IsHelper
trigger1 = Var(10) <= 0
value = 1054

[State 1052, Self]
type = SelfState
triggerall = IsHelper
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 1053

;---------------------------------------------------------------------------
;Grenade on ground
[Statedef 1053]
type = S
movetype = I
physics = N
anim = 6560
ctrl = 0
velset = 0,0
sprpriority = 5

[State 1053, Angle]
type = AngleDraw
triggerall = IsHelper
trigger1 = Time>=0
value = 90

[State 1052, Var]
type = VarAdd
triggerall = IsHelper
trigger1 = Time>=0
var(10) = -1

[State 1053, Snd]
type = PlaySnd
triggerall = IsHelper
trigger1 = !Time
value = S900,1
volumescale = 255

[State 1053, Pos]
type = PosSet
triggerall = IsHelper
trigger1 = !Time 
y = 0

[State 1053, Change]
type = SelfState
triggerall = IsHelper
trigger1 = Var(10) <= 0
value = 1054

;---------------------------------------------------------------------------
;Grenade explode
[Statedef 1054]
type = A
movetype = A
physics = N
anim = 6561
ctrl = 0
velset = 0,0

[State 1054 Trans]
type = Trans
trigger1 = IsHelper
trans = Add
ignorehitpause = 1

[State 1054, Reset]
type = AngleDraw
trigger1 = IsHelper
value = 0
scale = 1,1

[State 1054, Hit]
type = HitDef
triggerall = IsHelper
trigger1 = !Time
attr = A,SA
damage = 90,30
animtype = Hard
hitflag = MAFD
guardflag = M
pausetime = 0,10
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = -1
guardsound = -1
ground.type = Low
ground.hittime = 10
ground.slidetime = 10
ground.velocity = -4,-4
air.type = High
air.animtype = Back
air.hittime = 18
air.velocity = -4,-4
fall = 0
air.fall = 1
palfx.time = 40
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.color = 0
palfx.invertall = 1

[State 1054, Shake]
type = EnvShake
triggerall = IsHelper
trigger1 = !Time 
time = 20
freq = 120
ampl = -4
phase = 90

[State 1054, Snd]
type = PlaySnd
triggerall = IsHelper
trigger1 = !Time 
value = S2100,(Random%2)
volumescale = 255

[State 1054, Dust]
type = Explod
triggerall = IsHelper
triggerall = Pos Y = 0
trigger1 = !Time
anim = 6300
pos = 0,3
postype = p1
scale = 0.3,0.3
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1
ontop = 1
trans = Add
ignorehitpause = 1

[State 1054, End]
type = DestroySelf
triggerall = IsHelper
trigger1 = !AnimTime

;---------------------------------------------------------------------------
;Shotgun - Bullet
[Statedef 2001]
type = A
movetype = A
physics = N
anim = 6570
ctrl = 0
velset = 0,0
sprpriority = 1

[State 2001, Trans]
type = Trans
trigger1 = IsHelper
trans = Add

[State 2001, Speed]
type = VelSet
triggerall = IsHelper
trigger1 = !Time
x = 30
y = -6*Random/1000+2

[State 2001, Damage]
type = HitDef
triggerall = IsHelper
trigger1 = !Time
attr = A,HA
animtype = Hard
damage = 25,5
hitflag = MAF
guardflag = MA
priority = 5,Hit
sparkno = S6404+(Random%2)
guard.sparkno = -1
sparkxy = 10,0
hitsound = S250,0
guardsound = S130,(Random%16)
pausetime = 0,6
getpower = 0,0
givepower = 0,0
ground.type = High
ground.hittime = 23
ground.slidetime = 23
ground.velocity = -5.2
ground.cornerpush.veloff = 0
guard.dist = 120
guard.hittime = 11
guard.cornerpush.veloff = 0
air.hittime = 12
air.velocity = -4.2,-1
air.cornerpush.veloff = 0
airguard.velocity = -3.3,-0.8
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall = 0
air.fall = 1
fall.recover = 0
yaccel = 0.6
envshake.time = 20

[State 2001, Helper]
type = Helper
triggerall = Ishelper
triggerall = MoveHit && Numtarget
trigger1 = (Target,MoveType = H) && !(Target,Time)
name = "Blood drop"
ID = 7100
stateno = 7100
pos = Ceil(P2Dist X-10),0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 0

[State 2001, Change]
type = SelfState
triggerall = Ishelper
trigger1 = MoveContact && NumTarget
value = 1004

[State 2001, Change]
type = SelfState
triggerall = Ishelper
trigger1 = Vel Y > 0 && Pos Y > 0
value = 1002

[State 2001, Destroy]
type = DestroySelf
triggerall = Ishelper
trigger1 = FrontEdgeDist < -50

;---------------------------------------------------------------------------
;Super Shotgun - Bullet
[Statedef 2002]
type = A
movetype = A
physics = N
anim = 6570
ctrl = 0
velset = 0,0
sprpriority = 1

[State 2002, Trans]
type = Trans
trigger1 = IsHelper
trans = Add

[State 2002, Speed]
type = VelSet
triggerall = IsHelper
trigger1 = !Time
x = 30
y = -8*Random/1000+4

[State 2002, Damage]
type = HitDef
triggerall = IsHelper
trigger1 = !Time
attr = A,HA
animtype = Hard
damage = 25,5
hitflag = MAF
guardflag = MA
priority = 5,Hit
sparkno = S6404+(Random%2)
guard.sparkno = -1
sparkxy = 10,0
hitsound = S250,0
guardsound = S130,(Random%16)
pausetime = 0,6
getpower = 0,0
givepower = 0,0
ground.type = High
ground.hittime = 23
ground.slidetime = 23
ground.velocity = -5.2
ground.cornerpush.veloff = 0
guard.dist = 120
guard.hittime = 11
guard.cornerpush.veloff = 0
air.hittime = 12
air.velocity = -4.2,-1
air.cornerpush.veloff = 0
airguard.velocity = -3.3,-0.8
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0
yaccel = 0.6
envshake.time = 20

[State 2002, Change]
type = SelfState
triggerall = Ishelper
trigger1 = MoveContact && NumTarget
value = 1004

[State 2002, Change]
type = SelfState
triggerall = Ishelper
trigger1 = Vel Y > 0 && Pos Y > 0
value = 1002

[State 2002, Destroy]
type = DestroySelf
triggerall = Ishelper
trigger1 = FrontEdgeDist < -50

;---------------------------------------------------------------------------
;Pistol - Bullet
[Statedef 2101]
type = A
movetype = A
physics = N
anim = 6570
ctrl = 0
velset = 0,0
sprpriority = 1

[State 2101, Trans]
type = Trans
trigger1 = IsHelper
trans = Add

[State 2101, Speed]
type = VelSet
triggerall = IsHelper
trigger1 = !Time
x = 15
y = 0.8*(Random%10/10)

[State 2101, Damage]
type = HitDef
triggerall = IsHelper
trigger1 = !Time
attr = A,SA
animtype = Hard
damage = 20,5
hitflag = MAF
guardflag = MA
priority = 4,Hit
sparkno = S6404+(Random%2)
guard.sparkno = -1
sparkxy = 10,0
hitsound = S250,0
guardsound = S130,(Random%16)
pausetime = 0,6
getpower = 0,0
givepower = 0,0
ground.type = High
ground.hittime = 23
ground.slidetime = 23
ground.velocity = -5.2
ground.cornerpush.veloff = 0
guard.dist = 120
guard.hittime = 11
guard.cornerpush.veloff = 0
air.hittime = 12
air.velocity = -4.2,-2
air.cornerpush.veloff = 0
airguard.velocity = -3.3,-0.8
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall = 0
air.fall = 1
fall.recover = 0
yaccel = 0.6
envshake.time = 10

[State 2101, Helper]
type = Helper
triggerall = Ishelper
triggerall = MoveHit && Numtarget
trigger1 = (Target,MoveType = H) && !(Target,Time)
name = "Blood drop"
ID = 7100
stateno = 7100
pos = Ceil(P2Dist X-10),0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 0

[State 2101, Change]
type = SelfState
triggerall = IsHelper
trigger1 = Vel y > 0 && Pos y > 0
value = 1002

[State 2101, Change]
type = SelfState
triggerall = IsHelper
trigger1 = Movecontact && NumTarget
value = 1004

[State 2101, DestroySelf]
type = DestroySelf
triggerall = IsHelper
trigger1 = FrontEdgeDist < -50

;---------------------------------------------------------------------------
;Pistol - Bullet
[Statedef 2102]
type = A
movetype = A
physics = N
anim = 6570
ctrl = 0
velset = 0,0
sprpriority = 1

[State 2102, Trans]
type = Trans
trigger1 = IsHelper
trans = Add

[State 2102, Speed]
type = VelSet
triggerall = IsHelper
trigger1 = !Time
x = 15
y = 0.8*(Random%10/10)

[State 2102, Damage]
type = HitDef
triggerall = IsHelper
trigger1 = !Time
attr = A,SA
animtype = Hard
damage = 20,5
hitflag = MAF
guardflag = MA
priority = 4,Hit
sparkno = S6404+(Random%2)
guard.sparkno = -1
sparkxy = 10,0
hitsound = S250,0
guardsound = S130,(Random%16)
pausetime = 0,6
getpower = 0,0
givepower = 0,0
ground.type = High
ground.hittime = 23
ground.slidetime = 23
ground.velocity = -5.2
ground.cornerpush.veloff = 0
guard.dist = 120
guard.hittime = 11
guard.cornerpush.veloff = 0
air.hittime = 12
air.velocity = -4.2,-2
air.cornerpush.veloff = 0
airguard.velocity = -3.3,-0.8
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall = 0
air.fall = 1
fall.recover = 0
yaccel = 0.6
envshake.time = 10

[State 2102, Helper]
type = Helper
triggerall = Ishelper
triggerall = MoveHit && Numtarget
trigger1 = (Target,MoveType = H) && !(Target,Time)
name = "Blood drop"
ID = 7100
stateno = 7100
pos = Ceil(P2Dist X-10),0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 0

[State 2102, Change]
type = SelfState
triggerall = IsHelper
trigger1 = Vel y > 0 && Pos y > 0
value = 1002

[State 2102, Change]
type = SelfState
triggerall = IsHelper
trigger1 = Movecontact && NumTarget
value = 1004

[State 2102, DestroySelf]
type = DestroySelf
triggerall = IsHelper
trigger1 = FrontEdgeDist < -50

;---------------------------------------------------------------------------
;Minigun - Bullet
[Statedef 2203]
type = A
movetype = A
physics = N
anim = 6570
ctrl = 0
velset = 0,0
sprpriority = 1

[State 2202, Trans]
type = Trans
trigger1 = IsHelper
trans = Add

[State 2203, Speed]
type = VelSet
triggerall = IsHelper
trigger1 = !Time
x = 45
y = -6*(Random/1000)+1

[State 2203, Damage]
type = HitDef
triggerall = IsHelper
trigger1 = !Time
attr = A,HA
animtype = Hard
damage = 18,5
hitflag = MAF
guardflag = MA
priority = 5,Hit
sparkno = S6404+(Random%2)
guard.sparkno = -1
sparkxy = 10,0
hitsound = S250,0
guardsound = S130,(Random%16)
pausetime = 0,8
ground.type = Low
ground.hittime = 23
ground.slidetime = 23
ground.velocity = -7.5
ground.cornerpush.veloff = 0
guard.dist = 120
guard.hittime = 11
guard.cornerpush.veloff = 0
air.hittime = 12
air.velocity = -7.5,-2
air.cornerpush.veloff = 0
airguard.velocity = -5.5,-0.8
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall = 1
fall.recover = 0
yaccel = 0.8
envshake.time = 20

[State 2203, Helper]
type = Helper
triggerall = Ishelper
triggerall = MoveHit && Numtarget
trigger1 = (Target,MoveType = H) && !(Target,Time)
name = "Blood drop"
ID = 7100
stateno = 7100
pos = Ceil(P2Dist X-10),0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 0

[State 2203, Change]
type = SelfState
triggerall = IsHelper
trigger1 = Vel y > 0 && Pos y > 0
value = 1002

[State 2203, Change]
type = SelfState
triggerall = IsHelper
trigger1 = Movecontact && NumTarget
value = 1004

[State 2203, DestroySelf]
type = DestroySelf
triggerall = IsHelper
trigger1 = FrontEdgeDist < -50

;---------------------------------------------------------------------------
;Rocket
[Statedef 2301]
type = A
movetype = A
physics = N
anim = 6550
ctrl = 0
sprpriority = 1

[State 2301, Vel]
type = VelSet
triggerall = IsHelper
trigger1 = !Time
x = 10

[State 2301, Smoke]
type = Explod
triggerall = IsHelper
trigger1 = !Time
anim = 6330
ID = 6330
pos = 0,0
postype = p1
scale = 0.25,0.25
bindtime = -1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 2301, Hit]
type = HitDef
triggerall = IsHelper
trigger1 = !Time
attr = A,HA
damage = 250,30
animtype = Hard
hitflag = MAFD
guardflag = M
pausetime = 0,15
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = -1
guardsound = -1
ground.type = Low
ground.hittime = 20
ground.slidetime = 15
ground.velocity = -8,-2
air.type = High
air.animtype = Back
air.hittime = 20
air.velocity = -3.5,-7
fall = 1
air.fall = 1
fall.recover = 0
fall.envshake.time = 10
fall.envshake.ampl = -5
envshake.time = 10
envshake.ampl = 5
palfx.time = 40
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.color = 0
palfx.invertall = 1

[State 2301, Change]
type = SelfState
triggerall = IsHelper
trigger1 = MoveContact && NumTarget
value = 2302

[State 2301, DestroySelf]
type = DestroySelf
triggerall = IsHelper
trigger1 = FrontEdgeDist < -50

;---------------------------------------------------------------------------
[Statedef 2302]
type = A
movetype = I
physics = N
anim = 6130
ctrl = 0
velset = 0,0
sprpriority = 10

[State 2302, Trans]
type = Trans
trigger1 = IsHelper
trans = Add

[State 2302, Explode]
type = TargetState
triggerall = IsHelper && Root,Var(55)
triggerall = NumTarget && !Target,IsHelper
trigger1 = Target,Life<=10
value = 10000

[State 2302, Snd]
type = PlaySnd
triggerall = IsHelper
trigger1 = !Time 
value = S2150,(Random%3)
volumescale = 255

[State 2302, Smoke]
type = Explod
triggerall = IsHelper
trigger1 = !Time
anim = 6305
pos = 0,0
postype = p1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 2302, Spark]
type = Explod
triggerall = IsHelper
trigger1 = !Time
anim = 6250
pos = 0,0
postype = p1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
trans = Add
ignorehitpause = 1

[State 2302, End]
type = DestroySelf
triggerall = IsHelper
trigger1 = !AnimTime

;---------------------------------------------------------------------------
;Plasma shot
[Statedef 2401]
type = A
movetype = A
physics = N
anim = 6200
ctrl = 0
sprpriority = 3

[State 2401, Assert]
type = AssertSpecial
trigger1 = IsHelper
flag = NoShadow

[State 2401, Trans]
type = Trans
trigger1 = IsHelper
trans = Add

[State 2401, Vel]
type = VelSet
triggerall = IsHelper
trigger1 = !Time
x = 12

[State 2401, Hit]
type = HitDef
triggerall = IsHelper
trigger1 = !Time
attr = A,HA
damage = 50,25
animtype = Hard
hitflag = MAFD
guardflag = M
pausetime = 0,10
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = -1
guardsound = -1
ground.type = Low
ground.hittime = 10
ground.slidetime = 10
ground.velocity = -8,-2
air.type = High
air.animtype = Back
air.hittime = 10
air.velocity = -3.5,-7
fall = 1
air.fall = 1
fall.recover = 0
fall.envshake.time = 10
fall.envshake.ampl = -5
envshake.time = 10
envshake.ampl = 5
palfx.time = 40
palfx.add = 0,50,240
palfx.mul = 120,224,250
palfx.sinadd = 55,85,110,10
palfx.color = 0
palfx.invertall = 1

[State 2401, Change]
type = SelfState
triggerall = IsHelper
trigger1 = MoveContact && NumTarget
value = 2402

[State 2401, DestroySelf]
type = DestroySelf
triggerall = IsHelper
trigger1 = FrontEdgeDist < -50

;---------------------------------------------------------------------------
[Statedef 2402]
type = A
movetype = I
physics = N
anim = 6205
ctrl = 0
velset = 0,0
sprpriority = 10

[State 2402, Assert]
type = AssertSpecial
trigger1 = IsHelper
flag = NoShadow

[State 2402, Trans]
type = Trans
trigger1 = IsHelper
trans = Add

[State 2402, Melt]
type = TargetState
triggerall = IsHelper && Root,Var(55)
triggerall = NumTarget && !Target,IsHelper
trigger1 = Target,Life<=10
value = 10002

[State 2402, Snd]
type = PlaySnd
triggerall = IsHelper
triggerall = Root,Var(21)<4
trigger1 = !Time 
value = S1600,2
volumescale = 255

[State 2402, Snd]
type = PlaySnd
triggerall = IsHelper
triggerall = Root,Var(21)>=4
trigger1 = !Time 
value = S1604,2
volumescale = 255

[State 2402, End]
type = DestroySelf
triggerall = IsHelper
trigger1 = !AnimTime

;---------------------------------------------------------------------------
;BFG - Charge
[Statedef 2501]
type = A
physics = N
anim = 6225
ctrl = 0
velset = 0,0
sprpriority = 5

[State 2501, Assert]
type = AssertSpecial
trigger1 = IsHelper
flag = NoShadow

[State 2501, Trans]
type = Trans
trigger1 = IsHelper
trans = Add

[State 2501]
type = Offset
trigger1 = IsHelper
x = 65*(Facing)
y = -65

[State 2501]
type = AngleDraw
triggerall = IsHelper
trigger1 = Time>=0&&Time<=40
value = Time*15
scale = 0.005+Time*0.011,0.005+Time*0.011

[State 2501]
type = AngleDraw
triggerall = IsHelper
trigger1 = Time>40
value = Time*15
scale = 0.5,0.5

[State 2501, End]
type = DestroySelf
triggerall = IsHelper
trigger1 = Root,StateNo != 2500
trigger2 = !Root,Alive || Root,Lose
trigger3 = Time>75

;---------------------------------------------------------------------------
;BFG - Shot
[Statedef 2502]
type = A
movetype = A
physics = N
anim = 6220
ctrl = 0
sprpriority = 10

[State 2502, Assert]
type = AssertSpecial
trigger1 = IsHelper
flag = NoShadow

[State 2502, Trans]
type = Trans
trigger1 = IsHelper
trans = Add

[State 2502, Vel]
type = VelSet
triggerall = IsHelper
trigger1 = !Time
x = 6

[State 2502, Energy-1]
type = Explod
triggerall = IsHelper
trigger1 = !NumExplod(6240)
anim = 6240
ID = 6240
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 2502, Energy-2]
type = Explod
triggerall = IsHelper
trigger1 = !NumExplod(6241)
anim = 6241
ID = 6241
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 2502, Energy-3]
type = Explod
triggerall = IsHelper
trigger1 = !NumExplod(6242)
anim = 6242
ID = 6242
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 2502, Energy-4]
type = Explod
triggerall = IsHelper
trigger1 = !NumExplod(6243)
anim = 6243
ID = 6243
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 2502, Energy-5]
type = Explod
triggerall = IsHelper
trigger1 = !NumExplod(6244)
anim = 6244
ID = 6244
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 2502, Energy-6]
type = Explod
triggerall = IsHelper
trigger1 = !NumExplod(6245)
anim = 6240
ID = 6245
pos = 0,0
postype = p1
facing = -1
bindtime = -1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 2502, Energy-7]
type = Explod
triggerall = IsHelper
trigger1 = !NumExplod(6246)
anim = 6241
ID = 6246
pos = 0,0
postype = p1
facing = -1
bindtime = -1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 2502, Energy-8]
type = Explod
triggerall = IsHelper
trigger1 = !NumExplod(6247)
anim = 6242
ID = 6247
pos = 0,0
postype = p1
facing = -1
bindtime = -1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 2502, Energy-9]
type = Explod
triggerall = IsHelper
trigger1 = !NumExplod(6248)
anim = 6243
ID = 6248
pos = 0,0
postype = p1
facing = -1
bindtime = -1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 2502, Energy-10]
type = Explod
triggerall = IsHelper
trigger1 = !NumExplod(6249)
anim = 6244
ID = 6249
pos = 0,0
postype = p1
facing = -1
bindtime = -1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 2502, Hit]
type = HitDef
triggerall = IsHelper
trigger1 = !Time
attr = A,HA
damage = 450,50
animtype = Hard
hitflag = MAFD
guardflag = M
pausetime = 0,8
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = -1
guardsound = -1
ground.type = Low
ground.hittime = 10
ground.slidetime = 5
ground.velocity = -7,0
air.type = High
air.animtype = Back
air.hittime = 10
air.velocity = -1.3,-3
fall = 1
air.fall = 1
fall.recover = 0
fall.envshake.time = 10
fall.envshake.ampl = -5
envshake.time = 10
envshake.ampl = 5
palfx.time = 40
palfx.add = 0,100,50
palfx.mul = 20,120,24
palfx.sinadd = 85,110,55,10
Palfx.color = 0
palfx.invertall = 1

[State 2502, Change]
type = SelfState
triggerall = IsHelper
trigger1 = MoveContact && NumTarget
value = 2503

[State 2502, DestroySelf]
type = DestroySelf
triggerall = IsHelper
trigger1 = FrontEdgeDist < -50

;---------------------------------------------------------------------------
[Statedef 2503]
type = A
movetype = I
physics = N
anim = 6230
ctrl = 0
velset = 0,0
sprpriority = 10

[State 2503, Assert]
type = AssertSpecial
trigger1 = IsHelper
flag = NoShadow

[State 2503, Trans]
type = Trans
trigger1 = IsHelper
trans = Add

[State 2503, Enlarge]
type = AngleDraw
trigger1 = IsHelper
value = 0
scale = 2,2

[State 2503, Melt]
type = TargetState
triggerall = IsHelper && Root,Var(55)
triggerall = NumTarget && !Target,IsHelper
trigger1 = Target,Life<=10
value = 10002

[State 2503, Remove]
type = RemoveExplod
triggerall = IsHelper
trigger1 = !Time 

[State 2503, Snd]
type = PlaySnd
triggerall = IsHelper
triggerall = Root,Var(21)<2
trigger1 = !Time
value = S1700,3
volumescale = 255

[State 2503, Snd]
type = PlaySnd
triggerall = IsHelper
triggerall = Root,Var(21)=[2,4]
trigger1 = !Time
value = S1700+Root,Var(21),3

[State 2503, Snd]
type = PlaySnd
triggerall = IsHelper
triggerall = Root,Var(21)=5
trigger1 = !Time
value = S1704,3
volumescale = 255

[State 2503, Spark]
type = Explod
triggerall = IsHelper
trigger1 = !Time
anim = 6250
pos = 0,0
postype = p1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
trans = Add
ignorehitpause = 1

[State 2503, End]
type = DestroySelf
triggerall = IsHelper
trigger1 = !AnimTime

;---------------------------------------------------------------------------
;Flamer - Flame
[Statedef 2601]
type = A
movetype = A
physics = N
anim = 6160
ctrl = 0
velset = 0,0
sprpriority = 10

[State 2601, Assert]
type = AssertSpecial
trigger1 = IsHelper
flag = NoShadow

[State 2601, Trans]
type = Trans
trigger1 = IsHelper
trans = Add

[State 2601, Vel]
type = VelSet
triggerall = IsHelper
trigger1 = !Time 
x = 3+(Random%3)
y = (Random%2)*IfElse(Random%2=0,1,-1)

[State 2601, Damage]
type = HitDef
triggerall = IsHelper
trigger1 = !Time
attr = A,HA
animtype = Hard
damage = 15,8
hitflag = MAF
guardflag = MA
priority = 5,Hit
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = -1
guardsound = -1
pausetime = 0,8
ground.type = High
ground.hittime = 10
ground.slidetime = 5
ground.velocity = -2.5
ground.cornerpush.veloff = 0
guard.dist = 120
guard.hittime = 10
guard.cornerpush.veloff = 0
air.hittime = 10
air.velocity = -2.5,-2
air.cornerpush.veloff = 0
airguard.velocity = -5.5,-0.8
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall = 1
fall.recover = 0
palfx.time = 50
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
Palfx.color = 0
palfx.invertall = 1

[State 2601, Burn]
type = TargetState
triggerall = IsHelper && Root,Var(55)
triggerall = NumTarget && !Target,IsHelper
trigger1 = Target,Life<=10
value = 10001

[State 2601, Flames]
type = Helper
triggerall = IsHelper && !NumHelper(2610)
trigger1 =  MoveHit && NumTarget
trigger1 =  (Target,MoveType = H) && !(Target,Time)
stateno = 2610
ID = 2610
name = "Flames"
postype = p2
facing = -1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 2601, Snd]
type = PlaySnd
triggerall = Ishelper
triggerall = MoveHit && Numtarget
trigger1 = (Target,MoveType = H) && !(Target,Time)
value = S2200,2+(Random%2)
volumescale = 255
persistent = 0

[State 2601, Change]
type = ChangeState
triggerall = IsHelper
trigger1 = MoveContact && NumTarget
value = 2602

[State 2601, Destroy]
type = DestroySelf
triggerall = IsHelper
trigger1 = !AnimTime
trigger2 = FrontEdgeDist < -50

;---------------------------------------------------------------------------
[Statedef 2602]
type = A
movetype = I
physics = N
anim = 6170
ctrl = 0
velset = 0,0
sprpriority = 10

[State 2602, Assert]
type = AssertSpecial
trigger1 = IsHelper
flag = NoShadow

[State 2602, Trans]
type = Trans
trigger1 = IsHelper
trans = Add

[State 2602, Destroy]
type = DestroySelf
triggerall = IsHelper
trigger1 = !AnimTime

;---------------------------------------------------------------------------
;Fire
[Statedef 2610]
physics = N
anim = 9999
ctrl = 0
velset = 0,0
sprpriority = 4

[State 2610, Assert]
type = AssertSpecial
trigger1 = IsHelper
flag = NoShadow
ignorehitpause = 1

[State 2610, Flames]
type = Explod
trigger1 = IsHelper
anim = 6100
ID = 6100
postype = p2
pos = (EnemyNear,Const(Size.Mid.Pos.x)),IfElse((EnemyNear,StateType = L),0,(EnemyNear,Const(Size.Mid.Pos.y)+10))
random = 40,40
vel = -0.2,-0.75
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
trans = Add

[State 2610, Pos]
type = PosAdd
trigger1 = IsHelper
x = Ceil(P2Dist x)
y = Ceil(P2Dist y)

[State 2610, End]
type = DestroySelf
triggerall = IsHelper
trigger1 = EnemyNear,Ctrl
trigger2 = EnemyNear,MoveType!=H || EnemyNear,StateNo = 5300
trigger3 = EnemyNear,StateType = L && (EnemyNear,StateNo!=[5080,5081])
trigger4 = Time>=120

;---------------------------------------------------------------------------
;Revenant rocket
[Statedef 2701]
type = A
movetype = A
physics = N
anim = 6551
ctrl = 0
velset = 0,0
sprpriority = 5

[State 2701, Conditional Varset]
type = Null
triggerall = IsHelper
trigger1 = NumEnemy
trigger1 = (FVar(0):=(EnemyNear(0),Pos X-Pos X)*Facing) || 1
trigger1 = (FVar(1):=EnemyNear(0),Pos Y-Pos Y+EnemyNear(0),Const(Size.Mid.Pos.Y)) || 1
trigger1 = (FVar(2):=((FVar(0)**2.0)+(FVar(1)**2.0))**0.5) || 1
trigger2 = !NumEnemy
trigger2 = (FVar(0):=320.0*Facing) || 1
trigger2 = (FVar(1):=0.0) || 1
trigger2 = (FVar(2):=((FVar(0)**2.0)+(FVar(1)**2.0))**0.5) || 1

[State 2701, Vel]
type = VelSet
trigger1 = IsHelper
x = 10.0*FVar(0)/FVar(2)
y = 10.0*FVar(1)/FVar(2)
ignorehitpause = 1

[State 2701, AS]
type = VarSet
triggerall = IsHelper
trigger1 = Vel X != 0
fvar(3) = Atan(Vel Y/Vel X)*(-180.0/PI)+((Vel X<0)*180)

[State 2701, AS]
type = VarSet
triggerall = IsHelper
trigger1 = Vel X = 0
fvar(3) = IfElse(Vel Y<0,90,-90)

[State 2701, AS]
type = AngleDraw
trigger1 = IsHelper
value = FVar(3)
ignorehitpause = 1

[State 2701, Smoke]
type = Explod
triggerall = IsHelper
trigger1 = !Time
anim = 6330
ID = 6330
pos = 0,0
postype = p1
scale = 0.25,0.25
bindtime = -1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 2701, Hit]
type = HitDef
triggerall = IsHelper
trigger1 = !Time
attr = A,HA
damage = 30,10
animtype = Medium
priority = 5,Hit
hitflag = MAFD
guardflag = H
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = -1
guardsound = -1
pausetime = 0,4
ground.type = High
ground.hittime = 18
ground.slidetime = 18
ground.velocity = -3.5,0
air.velocity = -3.5,-1.5
fall = 1
air.fall = 1
fall.recover = 0
palfx.time = 40
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.color = 0
palfx.invertall = 1

[State 2701, Self]
type = SelfState
triggerall = IsHelper
trigger1 = MoveContact
trigger2 = FrontEdgeDist <= -50
trigger3 = Time > 200
value = 2702

;---------------------------------------------------------------------------
[Statedef 2702]
type = A
movetype = I
physics = N
anim = 6150+(Random%2)
ctrl = 0
velset = 0,0
sprpriority = 5

[State 2702, Asserts]
type = AssertSpecial
trigger1 = IsHelper
flag = NoShadow
ignorehitpause = 1

[State 2702, Trans]
type = Trans
trigger1 = IsHelper
trans = Add
ignorehitpause = 1

[State 2702, Angle]
type = AngleDraw
trigger1 = IsHelper
value = 0
ignorehitpause = 1

[State 2702, Explode]
type = TargetState
triggerall = IsHelper && Root,Var(55)
triggerall = NumTarget && !Target,IsHelper
trigger1 = Target,Life<=10
value = 10000

[State 2702, Snd]
type = PlaySnd
triggerall = IsHelper
trigger1 = !Time 
value = S2150,3+(Random%2)
volumescale = 255

[State 2702, Destroy]
type = DestroySelf
triggerall = IsHelper
trigger1 = !AnimTime

;---------------------------------------------------------------------------
;Blood drop
[Statedef 2860]
type = A
physics = N
anim = 6415
ctrl = 0
sprpriority = 3

[State 2860, Vel]
type = VelAdd
triggerall = IsHelper
trigger1 = Time > 0
y = 0.3

[State 2860, Self]
type = SelfState
triggerall = IsHelper
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 2861

;---------------------------------------------------------------------------
[Statedef 2861]
type = S
physics = N
anim = 6407
ctrl = 0
velset = 0,0
sprpriority = 1

[State 2861, Pos]
type = PosSet
triggerall = IsHelper
trigger1 = !Time
y = 0

[State 2861, Snd]
type = PlaySnd
triggerall = IsHelper
trigger1 = !Time 
value = S2325,(Random%4)
volumescale = 255

[State 2861, Destroy]
type = DestroySelf
triggerall = IsHelper
trigger1 = !AnimTime

;---------------------------------------------------------------------------
;Helper - Guts
[Statedef 3201]
type = A
physics = N
anim = 6464
ctrl = 0
velset = 0,0
sprpriority = 1

[State 3201, Asserts]
type = AssertSpecial
trigger1 = IsHelper
flag = NoShadow
ignorehitpause = 1

[State 3201, Vel]
type = VelAdd
triggerall = IsHelper
trigger1 = Time > 0
y = 0.3

[State 3201, Self]
type = SelfState
triggerall = IsHelper
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 3202

;---------------------------------------------------------------------------
[Statedef 3202]
type = S
physics = N
anim = 6472
ctrl = 0
velset = 0,0

[State 3202, Asserts]
type = AssertSpecial
trigger1 = IsHelper
flag = NoShadow
ignorehitpause = 1

[State 3202, Snd]
type = PlaySnd
triggerall = IsHelper
trigger1 = !Time
value = S2320,(Random%3)
volumescale = 255

[State 3202, Pos]
type = PosSet
triggerall = IsHelper
trigger1 = !Time 
y = 0

[State 3202, Var]
type = Null
triggerall = IsHelper
triggerall = Root,Var(45)=1
trigger1 = !Time
trigger1 = 1 || Var(0):=0
trigger2 = Time>=60
trigger2 = 1 || Var(0):=Var(0)+16

[State 3202, Trans]
type = Trans
triggerall = IsHelper
trigger1 = Root,Var(45)=1
trans = AddAlpha
alpha = 256-Var(0),Var(0)
ignorehitpause = 1

[State 3202, Destroy]
type = DestroySelf
triggerall = IsHelper
triggerall = Root,Var(45)=1
trigger1 = Var(0)>=256

;---------------------------------------------------------------------------
;Helper - Duke arm
[Statedef 3401]
type = A
physics = N
anim = 3407
ctrl = 0
velset = 0,0
sprpriority = -2

[State 3401, Asserts]
type = AssertSpecial
trigger1 = IsHelper
flag = NoShadow
ignorehitpause = 1

[State 3401, Vel]
type = VelAdd
triggerall = IsHelper
trigger1 = Time > 0
y = 0.3

[State 3401, Angle]
type = AngleDraw
triggerall = IsHelper
trigger1 = Pos Y < 0
value = Time*10

[State 3401, Self]
type = SelfState
triggerall = IsHelper
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 3402

;---------------------------------------------------------------------------
[Statedef 3402]
type = S
physics = N
anim = 3408
ctrl = 0
velset = 0,0

[State 3402, Asserts]
type = AssertSpecial
trigger1 = IsHelper
flag = NoShadow
ignorehitpause = 1

[State 3402, Snd]
type = PlaySnd
triggerall = IsHelper
trigger1 = !Time
value = S2320,(Random%3)
volumescale = 255

[State 3402, Angle]
type = AngleDraw
triggerall = IsHelper
trigger1 = !Time
value = 0

[State 3402, Pos]
type = PosSet
triggerall = IsHelper
trigger1 = !Time 
y = 0

;---------------------------------------------------------------------------
;Helper - Bushwacker arm
[Statedef 3451]
type = A
physics = N
anim = 3456
ctrl = 0
velset = 0,0
sprpriority = 5

[State 3451, Priority]
type = SprPriority
triggerall = IsHelper
trigger1 = Time = 52
value = -2

[State 3451, Pos]
type = PosAdd
triggerall = IsHelper
trigger1 = Time = 52
x = 10
y = -19

[State 3451, Pos]
type = PosAdd
triggerall = IsHelper
trigger1 = Time = 67
x = -2
y = 2

[State 3451, Smoke-1]
type = Explod
triggerall = IsHelper
trigger1 = Time = 67
anim = 6600
pos = 28,-5
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3451, Rocket-1]
type = Explod
triggerall = IsHelper
trigger1 = Time = 67
anim = 6550
pos = 38,-5
postype = p1
facing = 1
bindtime = 1
vel = 10,0
removetime = 6
sprpriority = 3
ownpal = 1
trans = None
ignorehitpause = 1

[State 3451, Smoke-2]
type = Explod
triggerall = IsHelper
trigger1 = Time = 73
anim = 6600
pos = 28,1
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3451, Rocket-2]
type = Explod
triggerall = IsHelper
trigger1 = Time = 73
anim = 6550
pos = 38,1
postype = p1
facing = 1
bindtime = 1
vel = 10,0
removetime = 6
sprpriority = 3
ownpal = 1
trans = None
ignorehitpause = 1

[State 3451, Smoke-3]
type = Explod
triggerall = IsHelper
trigger1 = Time = 79
anim = 6600
pos = 28,7
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3451, Rocket-3]
type = Explod
triggerall = IsHelper
trigger1 = Time = 79
anim = 6550
pos = 38,7
postype = p1
facing = 1
bindtime = 1
vel = 10,0
removetime = 6
sprpriority = 3
ownpal = 1
trans = None
ignorehitpause = 1

[State 3451, Smoke-4]
type = Explod
triggerall = IsHelper
trigger1 = Time = 85
anim = 6600
pos = 26,1
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3451, Rocket-4]
type = Explod
triggerall = IsHelper
trigger1 = Time = 85
anim = 6550
pos = 36,1
postype = p1
facing = 1
bindtime = 1
vel = 10,0
removetime = 6
sprpriority = 3
ownpal = 1
trans = None
ignorehitpause = 1

[State 3451, Pos]
type = PosAdd
triggerall = IsHelper
trigger1 = Time = 95
x = 2
y = -2

[State 3451, Destroy]
type = DestroySelf
triggerall = IsHelper
trigger1 = Root,StateNo!=3450

[State 3451, Self]
type = SelfState
triggerall = IsHelper
trigger1 = Time >=100
value = 3452

;---------------------------------------------------------------------------
[Statedef 3452]
type = A
physics = N
ctrl = 0
velset = 0,0
sprpriority = -2

[State 3402, Asserts]
type = AssertSpecial
trigger1 = IsHelper
flag = NoShadow
ignorehitpause = 1

[State 3452, Vel]
type = VelAdd
triggerall = IsHelper
trigger1 = Time > 0
y = 0.3

[State 3452, Angle]
type = AngleDraw
triggerall = IsHelper
trigger1 = Pos Y < 0
value = Time*10

[State 3452, Self]
type = SelfState
triggerall = IsHelper
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 3453

;---------------------------------------------------------------------------
[Statedef 3453]
type = S
physics = N
anim = 3456
ctrl = 0
velset = 0,0

[State 3453, Asserts]
type = AssertSpecial
trigger1 = IsHelper
flag = NoShadow
ignorehitpause = 1

[State 3453, Snd]
type = PlaySnd
triggerall = IsHelper
triggerall = Anim=3456
trigger1 = !Time
value = S2320,(Random%3)
volumescale = 255

[State 3453, Angle]
type = AngleDraw
triggerall = IsHelper
triggerall = Anim=3456
trigger1 = !Time
value = 0

[State 3453, Pos]
type = PosSet
triggerall = IsHelper
triggerall = Anim=3456
trigger1 = !Time 
y = 0

[State 3453, Anim]
type = ChangeAnim
triggerall = IsHelper
triggerall = Anim!=6474
trigger1 = Time >= 30
value = 6474
 
[State 3453, Snd]
type = PlaySnd
triggerall = IsHelper
trigger1 = Time = 30
value = S2100,(Random%2)
volumescale = 255

[State 3453, Explosion]
type = Explod
triggerall = IsHelper
trigger1 = Time = 30
anim = 6120
pos = 0,5
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 2
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3453, Dust]
type = Explod
triggerall = IsHelper
trigger1 = Time = 30
anim = 6300
pos = 0,3
postype = p1
scale = 0.3,0.3
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1
ontop = 1
trans = Add
ignorehitpause = 1

;---------------------------------------------------------------------------
;Helper - Special weapons
[Statedef 3651]
type = A
physics = N
ctrl = 0
velset = 0,0
sprpriority = 5

[State 3651, Anim]
type = ChangeAnim
triggerall = IsHelper(3651)
trigger1 = !Time
value = 6755

[State 3651, Anim]
type = ChangeAnim
triggerall = IsHelper(3661)
trigger1 = !Time
value = 6750

[State 3651, Priority]
type = SprPriority
triggerall = IsHelper
trigger1 = Time = 40
value = -2

[State 3651, Pos]
type = PosAdd
triggerall = IsHelper(3651)
trigger1 = Time = 40
x = 3
y = -10

[State 3651, Pos]
type = PosAdd
triggerall = IsHelper(3661)
trigger1 = Time = 40
x = 15
y = -8

[State 3651, Pos]
type = PosAdd
triggerall = IsHelper
trigger1 = Time = 52
x = -2
y = 2

[State 3651, Destroy]
type = DestroySelf
triggerall = IsHelper
trigger1 = Root,StateNo!=3650
trigger1 = Root,StateNo!=3660
trigger2 = !AnimTime

;---------------------------------------------------------------------------
;Helper - Curtain
[Statedef 3802]
type = A
physics = N
anim = 3804
ctrl = 0
sprpriority = 80

[State 3802, Asserts]
type = AssertSpecial
trigger1 = IsHelper
flag = NoShadow
ignorehitpause = 1

[State 3802, Vel]
type = VelSet
triggerall = IsHelper(3802)
trigger1 = !Time
y = 5

[State 3802, Stop]
type = VelSet
triggerall = IsHelper(3802)
trigger1 =  Pos y >= 0
y = 0

[State 3802, Priority]
type = SprPriority
triggerall = IsHelper(3802)
trigger1 = Root,StateNo=3801&&!Root,AnimElemTime(1)
value = -6

[State 3802, Sofa]
type = Explod
triggerall = IsHelper(3802)
trigger1 = Time = 60
ID = 3802
anim = 3802
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -1
sprpriority = 90
ownpal = 1
trans = None
ignorehitpause = 1

[State 3802, Modify]
type = ModifyExplod
triggerall = IsHelper(3802)
trigger1 = Root,StateNo=3801&&!Root,AnimElemTime(1)
ID = 3802
sprpriority = -5
ignorehitpause = 1

[State 3802, Fuck]
type = Explod
triggerall = IsHelper(3802)
trigger1 = Time = 60
ID = 3801
anim = 3801
pos = 0,-20
postype = p1
facing = 1
bindtime = 1
removetime = -1
sprpriority = 100
ownpal = 1
trans = None
ignorehitpause = 1

[State 3802, Modify]
type = RemoveExplod
triggerall = IsHelper(3802)
trigger1 = Root,StateNo=3801&&!Root,AnimElemTime(1)
ID = 3801
ignorehitpause = 1

[State 3802, No Fuck]
type = Explod
triggerall = IsHelper(3802)
triggerall = !NumExplod(3803)
trigger1 = Root,StateNo=3801&&!Root,AnimElemTime(1)
ID = 3803
anim = 3803
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -1
sprpriority = -4
ownpal = 1
trans = None
ignorehitpause = 1

[State 3802, Curtain]
type = Explod
triggerall = IsHelper(3802)
trigger1 = Time = 60
ID = 3804
anim = 3804
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -1
sprpriority = 110
ownpal = 1
trans = Add1
ignorehitpause = 1

[State 3802, Modify]
type = ModifyExplod
triggerall = IsHelper(3802)
trigger1 = Root,StateNo=3801&&!Root,AnimElemTime(1)
ID = 3804
trans = Add1
sprpriority = -3
ignorehitpause = 1

;---------------------------------------------------------------------------
;Dummy
[Statedef 6000]
type = S
physics = N
anim = 9999
ctrl = 0
velset = 0,0

[State 6000, Anim]
type = ChangeAnim
triggerall = IsHelper(3011)
trigger1 = !Time
value = 3011

[State 6000, Anim]
type = ChangeAnim
triggerall = IsHelper(3401)
trigger1 = !Time
value = 3405

[State 6000, Anim]
type = ChangeAnim
triggerall = IsHelper(3451)
trigger1 = !Time
value = 3455

[State 6000, Anim]
type = ChangeAnim
triggerall = IsHelper(3501)
trigger1 = !Time
value = 3505

[State 6000, Anim]
type = ChangeAnim
triggerall = IsHelper(3601)
trigger1 = !Time
value = 3605

[State 6000, Anim]
type = ChangeAnim
triggerall = IsHelper(3701)
trigger1 = !Time
value = 3705

[State 6000, Priority]
type = SprPriority
triggerall = !Time
trigger1 = IsHelper(3011)
trigger2 = IsHelper(3401)
value = 2

[State 6000, Priority]
type = SprPriority
triggerall = !Time
trigger1 = IsHelper(3451)
trigger2 = IsHelper(3501)
trigger3 = IsHelper(3601)
trigger4 = IsHelper(3701)
value = -2

[State 6000, FX]
type = PalFX
triggerall = IsHelper(3451)
trigger1 = Time=153
time = 45
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,10
invertall = 1
color = 0

[State 6000, Destroy]
type = DestroySelf
triggerall = IsHelper(3451)
trigger1 = Time>196

[State 6000, Destroy]
type = DestroySelf
triggerall = IsHelper(3701)
trigger1 = Time>240

;---------------------------------------------------------------------------
;Armor
[Statedef 7000]
type = S
physics = N
anim = 9999
ctrl = 0
velset = 0,0

[State 7000, Asserts]
type = AssertSpecial
trigger1 = IsHelper
flag = Invisible
flag2 = NoShadow
ignorehitpause = 1

[State 7000, Snd]
type = PlaySnd
triggerall = IsHelper
trigger1 = !Time
value = S2050,0
volumescale = 255

[State 7000, Light Armor]
type = Explod
triggerall = Ishelper
trigger1 = Root,Var(50)=1
anim = 7200
ID = 7200
pos = 10,65
postype = Back
facing = 1
bindtime = -1
removetime = -2
sprpriority = -3
ownpal = 1
trans = None
ignorehitpause = 1

[State 7000, Armor meter]
type = Explod
triggerall = Ishelper
trigger1 = Root,Var(50)=1
anim = 7210
ID = 7210
pos = 10,65
postype = Back
scale = Root,Var(51)*0.001/1,1
facing = 1
bindtime = -1
removetime = -2
sprpriority = -2
ownpal = 1
trans = None
ignorehitpause = 1

[State 7000, ModifyExplod]
type = ModifyExplod
triggerall = Ishelper
trigger1 = Root,Var(50)=1
ID = 7210
scale = Root,Var(51)*0.001/0.25,1
ignorehitpause = 1

[State 7000, Medium Armor]
type = Explod
triggerall = Ishelper
trigger1 = Root,Var(50)=2
anim = 7201
ID = 7200
pos = 10,65
postype = Back
facing = 1
bindtime = -1
removetime = -2
sprpriority = -3
ownpal = 1
trans = None
ignorehitpause = 1

[State 7000, Armor meter]
type = Explod
triggerall = Ishelper
trigger1 = Root,Var(50)=2
anim = 7211
ID = 7210
pos = 10,65
postype = Back
facing = 1
bindtime = -1
removetime = -2
sprpriority = -2
ownpal = 1
trans = None
ignorehitpause = 1

[State 7000, ModifyExplod]
type = ModifyExplod
triggerall = Ishelper
trigger1 = Root,Var(50)=2
ID = 7210
scale = Root,Var(51)*0.001/0.5,1
ignorehitpause = 1

[State 7000, Heavy Armor]
type = Explod
triggerall = Ishelper
trigger1 = Root,Var(50)=3
anim = 7202
ID = 7200
pos = 10,70
postype = Back
facing = 1
bindtime = -1
removetime = -2
sprpriority = -3
ownpal = 1
trans = None
ignorehitpause = 1

[State 7000, Armor meter]
type = Explod
triggerall = Ishelper
trigger1 = Root,Var(50)=3
anim = 7212
ID = 7210
pos = 10,70
postype = Back
facing = 1
bindtime = -1
removetime = -2
sprpriority = -2
ownpal = 1
trans = None
ignorehitpause = 1

[State 7000, ModifyExplod]
type = ModifyExplod
triggerall = Ishelper
trigger1 = Root,Var(50)=3
ID = 7210
scale = Root,Var(51)*0.001/0.75,1
ignorehitpause = 1

[State 7000, Remove]
type = RemoveExplod
triggerall = Ishelper
trigger1 = !Root,Var(50) 
id = 7200

[State 7000, Remove]
type = RemoveExplod
triggerall = Ishelper
trigger1 = !Root,Var(50) 
id = 7210

[State 7000, End]
type = DestroySelf
triggerall = Ishelper
trigger1 = !Root,Var(50)

;---------------------------------------------------------------------------
;Blood drops
[Statedef 7100]
type = A
physics = N
velset = Ceil(-4.5-(Random/500.0)),Ceil(-3+(Random/333.3))
ctrl = 0
sprpriority = 3

[State 7101, Turn]
type = Turn
triggerall = IsHelper
trigger1 = Vel x < 0

[State 7100, Gravity]
type = VelAdd
trigger1 = IsHelper
y = 0.3

[State 7100, Anim]
type = ChangeAnim
triggerall = IsHelper
trigger1 = Vel x <= 0.5
trigger1 = Vel y < 0
value = 6412

[State 7100, Anim]
type = ChangeAnim
triggerall = IsHelper
trigger1 = Vel x > 0.5
trigger1 = Vel y < 0
value = 6413

[State 7100, Anim]
type = ChangeAnim
triggerall = IsHelper
trigger1 = Vel x > 0.5
trigger1 = Vel y > 0
value = 6414

[State 7100, Anim]
type = ChangeAnim
triggerall = IsHelper
trigger1 = Vel x <= 0.5
trigger1 = Vel y > 0
value = 6415

[State 7100, Blood]
type = Explod
triggerall = IsHelper
trigger1 = Pos Y >= -2 && Vel Y > 0
anim = 6416+(Random%4)
ID = 7000
pos = 0,Ceil(-2+(Random/250))
scale = 0.5,0.5
sprpriority = -1
removetime = -2
ownpal = 1
trans = Default
ignorehitpause = 1

[State 7100, Snd]
type = PlaySnd
triggerall = IsHelper
trigger1 = Pos Y >= -2 && Vel Y > 0
value = S2325,1+(Random%3)
volumescale = 255

[State 7100, Destroy]
type = DestroySelf
triggerall = IsHelper
trigger1 = Pos Y >= -2 && Vel Y > 0

;---------------------------------------------------------------------------
[Statedef 7101]
type = A
physics = N
velset = Ceil(-4+(Random/125.0)),Ceil(-4-(Random/333.3))
ctrl = 0
sprpriority = 3

[State 7101, Turn]
type = Turn
triggerall = IsHelper
trigger1 = Vel x < 0

[State 7101, Gravity]
type = VelAdd
trigger1 = IsHelper
y = 0.3

[State 7101, Anim]
type = ChangeAnim
triggerall = IsHelper
trigger1 = Vel x <= 0.5
trigger1 = Vel y < 0
value = 6412

[State 7101, Anim]
type = ChangeAnim
triggerall = IsHelper
trigger1 = Vel x > 0.5
trigger1 = Vel y < 0
value = 6413

[State 7101, Anim]
type = ChangeAnim
triggerall = IsHelper
trigger1 = Vel x > 0.5
trigger1 = Vel y > 0
value = 6414

[State 7101, Anim]
type = ChangeAnim
triggerall = IsHelper
trigger1 = Vel x <= 0.5
trigger1 = Vel y > 0
value = 6415

[State 7101, Blood]
type = Explod
triggerall = IsHelper
trigger1 = Pos Y >= -2 && Vel Y > 0
anim = 6407
ID = 7001
pos = 0,Ceil(-2+(Random/250))
scale = 0.5,0.5
sprpriority = -1
removetime = -2
ownpal = 1

[State 7101, Snd]
type = PlaySnd
triggerall = IsHelper
trigger1 = Pos Y >= -2 && Vel Y > 0
value = S2325,1+(Random%3)
volumescale = 255

[State 7101, Destroy]
type = DestroySelf
triggerall = IsHelper
trigger1 = Pos Y >= -2 && Vel Y > 0

;---------------------------------------------------------------------------
;Fatality
[Statedef 8000]
type = S
physics = N
anim = 9999
ctrl = 0
velset = 0,0

[State 8000, Asserts]
type = AssertSpecial
trigger1 = IsHelper
flag = Invisible
flag2 = NoShadow
ignorehitpause = 1

[State 8000, Rip and Tear]
type = Explod
triggerall = Ishelper
trigger1 = Root,Var(55)=2
anim = 7301
ID = 7301
pos = IfElse(Facing=1,10,75),230
postype = Back
facing = Facing
bindtime = -1
removetime = -2
sprpriority = -3
ownpal = 1
trans = None
ignorehitpause = 1

[State 8000, Helper]
type = Helper
triggerall = Ishelper
triggerall = Root,Var(55)=2
triggerall = EnemyNear,Alive && EnemyNear,Life<=100
triggerall = EnemyNear,Movetype != H && EnemyNear,StateNo!=10040
trigger1 = !NumHelper(8001)
name = "Fatality hit"
ID = 8001
stateno = 8001
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 8000, Red]
type = BGPalfx
triggerall = Ishelper && RoundState=2
triggerall = Root,Stateno!=[2999,3999]
trigger1 = Time>=0 && Time%32=0
time = 32
sinadd = 48,50,32,32
add = -64,-192,-192
ignorehitpause = 1

[State 8000, Snd]
type = PlaySnd
triggerall = IsHelper
trigger1 = !Time
value = S2430,0
volumescale = 100

[State 8000, Remove]
type = RemoveExplod
triggerall = Ishelper
trigger1 = RoundState!=2
id = 7301

[State 8000, Destroy]
type = DestroySelf
triggerall = Ishelper
trigger1 = RoundState!=2

;---------------------------------------------------------------------------
[Statedef 8001]
type = A
movetype = A
physics = N
anim = 8000
ctrl = 0
velset = 0,0

[State 8001, Asserts]
type = AssertSpecial
trigger1 = IsHelper
flag = Invisible
flag2 = NoShadow
ignorehitpause = 1

[State 8001, PosSet]
type = PosSet
trigger1 = IsHelper
x = EnemyNear,Pos X
y = IfElse((EnemyNear,StateType=C),-25,(EnemyNear,Const(Size.Mid.Pos.y)))

[State 8001, Hit]
type = HitDef
triggerall = IsHelper
trigger1 = Time && (Time%2)
attr = A,HA
animtype = Hard
priority = 7,Hit
hitflag = MAFD
sparkno = -1
guard.sparkno = -1
hitsound = -1
guardsound = -1
hitonce = 1
numhits = 0
guard.dist = 0
fall = 1
fall.recover = 0

[State 8001, Hit]
type = HitDef
triggerall = IsHelper
trigger1 = Time && (Time%2)
attr = A,HT
animtype = Hard
priority = 7,Hit
hitflag = MAFD
sparkno = -1
guard.sparkno = -1
hitsound = -1
guardsound = -1
numhits = 0
guard.dist = 0
fall = 1
fall.recover = 0

[State 8001, Target]
type = TargetState
triggerall = IsHelper
triggerall = NumTarget
trigger1 = !Target,IsHelper
value = 10040

[State 8001, Drop]
type = TargetDrop
triggerall = IsHelper
triggerall = NumTarget
trigger1 = Target,IsHelper
ignorehitpause = 1

[State 8001, Destroy]
type = DestroySelf
triggerall = IsHelper
trigger1 = Target,StateNo = 10040
trigger2 = !Root,Alive || Root,Lose
trigger3 = RoundState!=2
ignorehitpause = 1

;---------------------------------------------------------------------------
;Rip apart
[Statedef 10010]
type = S
physics = N
anim = 9999
ctrl = 0
velset = 0,0

[State 10010, Asserts]
type = AssertSpecial
trigger1 = IsHelper
flag = Invisible
flag2 = NoShadow
ignorehitpause = 1

[State 10010, Blood]
type = Explod
triggerall = IsHelper
triggerall = Time
trigger1 = Root,StateNo!=[3000,3300]
trigger1 = Root,StateNo!=[3900,3901]
anim = 6410
pos = 0,-40
postype = p2
facing = IfElse(Random%2=0,1,-1)
random = 20,40
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
trans = None

[State 10010, Blood]
type = Explod
triggerall = IsHelper
triggerall = Time
trigger1 = Root,StateNo=[3000,3300]
trigger2 = Root,StateNo=[3900,3901]
anim = 6410
pos = 0,0
postype = p2
facing = IfElse(Random%2=0,1,-1)
random = 20,40
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
trans = None

[State 10010, Snd]
type = PlaySnd
triggerall = IsHelper
trigger1 = !Time
value = S2350,(Random%3)
volumescale = 255

[State 10010, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Arm 1"
ID = 6660
stateno = 10011
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10010, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Arm 2"
ID = 6661
stateno = 10011
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10010, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Ribs"
ID = 6662
stateno = 10011
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10010, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Eye 1"
ID = 6663
stateno = 10011
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10010, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Eye 2"
ID = 6664
stateno = 10011
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10010, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Meat 1"
ID = 6665
stateno = 10011
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10010, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Meat 2"
ID = 6666
stateno = 10011
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10010, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Heart"
ID = 6667
stateno = 10011
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10010, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Spine"
ID = 6668
stateno = 10011
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10010, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Stomach"
ID = 6669
stateno = 10011
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10010, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Teeth 1"
ID = 6670
stateno = 10011
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10010, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Teeth 2"
ID = 6671
stateno = 10011
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10010, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Teeth 3"
ID = 6672
stateno = 10011
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10010, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Teeth 4"
ID = 6673
stateno = 10011
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10010, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Gut 1"
ID = 6674
stateno = 10011
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10010, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Gut 2"
ID = 6675
stateno = 10011
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10010, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Gut 3"
ID = 6676
stateno = 10011
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10010, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Gut 4"
ID = 6677
stateno = 10011
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10010, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Gut 5"
ID = 6678
stateno = 10011
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10010, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Gut 6"
ID = 6679
stateno = 10011
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10010, Destroy]
type = DestroySelf
triggerall = IsHelper
trigger1 = Time > 10

;---------------------------------------------------------------------------
[Statedef 10011]
type = A
physics = N
ctrl = 0
sprpriority = -3

[State 10011, Anim]
type = ChangeAnim
triggerall = IsHelper(6660) || IsHelper(6661)
trigger1 = !Time
value = 6421

[State 10011, Anim]
type = ChangeAnim
triggerall = IsHelper(6662)
trigger1 = !Time
value = 6425

[State 10011, Anim]
type = ChangeAnim
triggerall = IsHelper(6663) || IsHelper(6664)
trigger1 = !Time
value = 6430

[State 10011, Anim]
type = ChangeAnim
triggerall = IsHelper(6665)
trigger1 = !Time
value = 6440

[State 10011, Anim]
type = ChangeAnim
triggerall = IsHelper(6666)
trigger1 = !Time
value = 6445

[State 10011, Anim]
type = ChangeAnim
triggerall = IsHelper(6667)
trigger1 = !Time
value = 6450

[State 10011, Anim]
type = ChangeAnim
triggerall = IsHelper(6668)
trigger1 = !Time
value = 6455

[State 10011, Anim]
type = ChangeAnim
triggerall = IsHelper(6669)
trigger1 = !Time
value = 6470

[State 10011, Anim]
type = ChangeAnim
triggerall = !Time
trigger1 = IsHelper(6670)
trigger2 = IsHelper(6671)
trigger3 = IsHelper(6672)
trigger4 = IsHelper(6673)
value = 6435

[State 10011, Anim]
type = ChangeAnim
triggerall = !Time
trigger1 = IsHelper(6674)
trigger2 = IsHelper(6675)
value = 6460

[State 10011, Anim]
type = ChangeAnim
triggerall = !Time
trigger1 = IsHelper(6676)
trigger2 = IsHelper(6677)
value = 6462

[State 10011, Anim]
type = ChangeAnim
triggerall = !Time
trigger1 = IsHelper(6678)
trigger2 = IsHelper(6679)
value = 6468

[State 10011, Turn]
type = Turn
triggerall = !Time
trigger1 = IsHelper(6661)
trigger2 = IsHelper(6664)
trigger3 = IsHelper(6671)
trigger4 = IsHelper(6673)
trigger5 = IsHelper(6675)
trigger6 = IsHelper(6677)
trigger7 = IsHelper(6679)

[State 10011, Vel]
type = VelSet
triggerall = IsHelper
trigger1 = !Time
x = 2+(Random%4)

[State 10011, Vel]
type = VelSet
triggerall = IsHelper
trigger1 = !Time
y = -2-(Random%6)

[State 10011, Gravity]
type = VelAdd
triggerall = IsHelper
trigger1 = Time>0
y = 0.35

[State 10011, Pos]
type = PosAdd
triggerall = IsHelper
triggerall = !Time
trigger1 = Root,StateNo!=[3000,3300]
trigger1 = Root,StateNo!=[3900,3901]
y = Parent,Pos y-(Random%40)

[State 10011, Change]
type = SelfState
triggerall = IsHelper
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 10012

;---------------------------------------------------------------------------
[Statedef 10012]
type = S
physics = N
ctrl = 0
velset = 0,0

[State 10012, Anim]
type = ChangeAnim
triggerall = IsHelper
triggerall = Anim = 6421
trigger1 = !Time
value = 6422

[State 10012, Anim]
type = ChangeAnim
triggerall = IsHelper
triggerall = Anim = 6425
trigger1 = !Time
value = 6426

[State 10012, Anim]
type = ChangeAnim
triggerall = IsHelper
triggerall = Anim = 6430
trigger1 = !Time
value = 6431

[State 10012, Anim]
type = ChangeAnim
triggerall = IsHelper
triggerall = Anim = 6435
trigger1 = !Time
value = 6436

[State 10012, Anim]
type = ChangeAnim
triggerall = IsHelper
triggerall = Anim = 6440
trigger1 = !Time
value = 6441

[State 10012, Anim]
type = ChangeAnim
triggerall = IsHelper
triggerall = Anim = 6445
trigger1 = !Time
value = 6446

[State 10012, Anim]
type = ChangeAnim
triggerall = IsHelper
triggerall = Anim = 6450
trigger1 = !Time
value = 6451

[State 10012, Anim]
type = ChangeAnim
triggerall = IsHelper
triggerall = Anim = 6455
trigger1 = !Time
value = 6456

[State 10012, Anim]
type = ChangeAnim
triggerall = IsHelper
triggerall = Anim = 6460
trigger1 = !Time
value = 6461

[State 10012, Anim]
type = ChangeAnim
triggerall = IsHelper
triggerall = Anim = 6462
trigger1 = !Time
value = 6463

[State 10012, Anim]
type = ChangeAnim
triggerall = IsHelper
triggerall = Anim = 6468
trigger1 = !Time
value = 6469

[State 10012, Anim]
type = ChangeAnim
triggerall = IsHelper
triggerall = Anim = 6470
trigger1 = !Time
value = 6471

[State 10012, Snd]
type = PlaySnd
triggerall = IsHelper
trigger1 = !Time
value = S2320,(Random%3)
volumescale = 255

[State 10012, Pos]
type = PosSet
triggerall = IsHelper
trigger1 = Pos y != 0
y = 0

[State 10012, Var]
type = Null
triggerall = IsHelper
triggerall = Root,Var(45)=1
trigger1 = !Time
trigger1 = 1 || Var(0):=0
trigger2 = Time>=60
trigger2 = 1 || Var(0):=Var(0)+16

[State 10012, Trans]
type = Trans
triggerall = IsHelper
trigger1 = Root,Var(45)=1
trans = AddAlpha
alpha = 256-Var(0),Var(0)
ignorehitpause = 1

[State 10012, Destroy]
type = DestroySelf
triggerall = IsHelper
triggerall = Root,Var(45)=1
trigger1 = Var(0)>=256

;---------------------------------------------------------------------------
;Burning skeleton
[Statedef 10013]
type = S
physics = N
anim = 6490
ctrl = 0
velset = 0,0
sprpriority = -3

[State 10013, Pos]
type = PosSet
triggerall = IsHelper
trigger1 = Pos y != 0
y = 0

[State 10013, Snd]
type = PlaySnd
triggerall = IsHelper
triggerall = Anim = 6490
trigger1 = !Time
value = S2200,0
volumescale = 255

[State 10013, Snd]
type = PlaySnd
triggerall = IsHelper
triggerall = Anim = 6490
trigger1 = !Time
value = S2210,0
channel = 3
volumescale = 255

[State 10013, Flames]
type = Helper
triggerall = IsHelper && !NumHelper(10014)
triggerall = Anim = 6490
trigger1 = !Time
stateno = 10014
ID = 10014
name = "Fire"
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10013, Fire]
type = Explod
triggerall = IsHelper
triggerall = Anim = 6490
trigger1 = !Time
anim = 6110
pos = 0,0
postype = p1
scale = 1.5,1.75
facing = 1
bindtime = 1
removetime = 90
sprpriority = 1
ownpal = 1
trans = Add
ignorehitpause = 1

[State 10013, Exp]
type = Explod
triggerall = IsHelper
triggerall = Anim = 6490
trigger1 = Time >= 0 && (Time%8)=2 && Time <= 40
anim = 6140
pos = 0,-50
postype = p1
facing = 1
bindtime = 1
vel = -0.2,-0.25
random = 40,40
removetime = -2
sprpriority = -1
ownpal = 1
trans = Add
ignorehitpause = 1

[State 10013, Torch1]
type = Explod
triggerall = IsHelper
triggerall = Anim = 6490
trigger1 = Time >= 0 && (Time%4)=2 && Time <= 80
anim = 6120
pos = 0,0
postype = p1
scale = 0.5,0.5
facing = 1
bindtime = 1
random = 80,10
removetime = -2
sprpriority = -2
ownpal = 1
trans = Add
ignorehitpause = 1

[State 10013, Torch2]
type = Explod
triggerall = IsHelper
triggerall = Anim = 6490
trigger1 = Time >= 0 && (Time%4)=2 && Time <= 80
anim = 6120
pos = 10,0
postype = p1
scale = 0.5,0.5
facing = 1
bindtime = 1
random = 80,10
removetime = -2
sprpriority = -5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 10013, Flame1]
type = Explod
triggerall = IsHelper
triggerall = Anim = 6490
trigger1 = Time >= 0 && (Time%4)=2 && Time <= 80
anim = 6100
pos = -50,0
postype = p1
facing = 1
bindtime = 1
vel = -0.2,-0.75
random = 40,40
removetime = -2
sprpriority = -2
ownpal = 1
trans = Add
ignorehitpause = 1

[State 10013, Flame2]
type = Explod
triggerall = IsHelper
triggerall = Anim = 6490
trigger1 = Time >= 0 && (Time%3)=2 && Time <= 80
anim = 6100
pos = 0,0
postype = p1
facing = 1
bindtime = 1
vel = 4,-1
accel = -0.1,-0.2
random = 60,10
removetime = -2
sprpriority = -2
ownpal = 1
trans = Add
ignorehitpause = 1

[State 10013, Flame3]
type = Explod
triggerall = IsHelper
triggerall = Anim = 6490
trigger1 = Time >= 0 && (Time%3)=2 && Time <= 80
anim = 6100
pos = 10,0
postype = p1
facing = 1
bindtime = 1
vel = -4,-1
accel = 0.1,-0.2
random = 60,10
removetime = -2
sprpriority = -5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 10013, Fire]
type = Explod
triggerall = IsHelper
triggerall = Anim = 6490
trigger1 = Time = 91
anim = 6111
pos = 0,0
postype = p1
scale = 1.5,1.75
facing = 1
bindtime = 1
removetime = -2
sprpriority = 1
ownpal = 1
trans = Add
ignorehitpause = 1

[State 10013, Snd]
type = PlaySnd
triggerall = IsHelper
triggerall = Anim = 6490
trigger1 = Time = 110
value = S2200,0
channel = 3
volumescale = 255

[State 10013, Smoke]
type = Explod
triggerall = IsHelper
triggerall = Anim = 6490
trigger1 = Time >= 110 && (Time%4)=0 && Time <= 120
anim = 6335
pos = 0,-20
postype = p1
facing = 1
bindtime = 1
random = 40,40
removetime = -2
sprpriority = 1
ownpal = 1
trans = Add
ignorehitpause = 1

[State 10013, Smoke]
type = Explod
triggerall = IsHelper
triggerall = Anim = 6490
trigger1 = Time >= 110 && (Time%4)=0 && Time <= 120
anim = 6335
pos = 0,-40
postype = p1
facing = 1
bindtime = 1
random = 40,80
removetime = -2
sprpriority = 1
ownpal = 1
trans = Add
ignorehitpause = 1

[State 10013, Anim]
type = ChangeAnim
triggerall = IsHelper
triggerall = Anim = 6490
trigger1 = !AnimTime
value = 6491

[State 10013, Snd]
type = PlaySnd
triggerall = IsHelper
triggerall = Anim = 6491
trigger1 = !AnimElemTime(1)
value = S2220,(Random%4)
volumescale = 255

[State 10013, Snd]
type = PlaySnd
triggerall = IsHelper
triggerall = Anim = 6491
trigger1 = !AnimElemTime(4)
value = S2370,0
volumescale = 255

[State 10013, Smoke]
type = Explod
triggerall = IsHelper
triggerall = Anim = 6491
trigger1 = !AnimElemTime(5)
anim = 6340
pos = -4,-5
postype = p1
scale = 0.5,0.5
facing = 1
bindtime = 1
removetime = -1
sprpriority = -2
ownpal = 1
trans = Add
ignorehitpause = 1

[State 10013, Smoke]
type = Explod
triggerall = IsHelper
triggerall = Anim = 6491
trigger1 = !AnimElemTime(5)
anim = 6340
pos = 4,-17
postype = p1
scale = 0.5,0.5
facing = 1
bindtime = 1
removetime = -1
sprpriority = -2
ownpal = 1
trans = Add
ignorehitpause = 1

[State 10013, Smoke]
type = Explod
triggerall = IsHelper
triggerall = Anim = 6491
trigger1 = !AnimElemTime(5)
anim = 6340
pos = 12,-11
postype = p1
scale = 0.5,0.5
facing = 1
bindtime = 1
removetime = -1
sprpriority = -2
ownpal = 1
trans = Add
ignorehitpause = 1

[State 10013, Smoke]
type = Explod
triggerall = IsHelper
triggerall = Anim = 6491
trigger1 = !AnimElemTime(5)
anim = 6340
pos = 22,7
postype = p1
scale = 0.5,0.5
facing = 1
bindtime = 1
removetime = -1
sprpriority = -2
ownpal = 1
trans = Add
ignorehitpause = 1

;---------------------------------------------------------------------------
[Statedef 10014]
type = S
physics = N
anim = 6495
ctrl = 0
velset = 0,0
sprpriority = -2

[State 10014, Trans]
type = Trans
trigger1 = IsHelper
trans = Add

[State 10014, Pos]
type = PosSet
trigger1 = IsHelper
x = Parent,Pos X
y = Parent,Pos Y

[State 10014, Anim]
type = ChangeAnim
triggerall = IsHelper
triggerall = Anim!= 6496
trigger1 = Time >= 110
value = 6496

[State 10014, Destroy]
type = DestroySelf
triggerall = IsHelper
triggerall = Anim = 6496
trigger1 = !AnimTime

;---------------------------------------------------------------------------
;Melting
[Statedef 10015]
type = S
physics = N
anim = 6485
ctrl = 0
velset = 0,0
sprpriority = -3

[State 10015, Pos]
type = PosSet
triggerall = IsHelper
trigger1 = Pos y != 0
y = 0

[State 10015, Snd]
type = PlaySnd
triggerall = IsHelper
trigger1 = !AnimElemTime(1)
value = S2220,1
volumescale = 255

[State 10015, Snd]
type = PlaySnd
triggerall = IsHelper
trigger1 = !AnimElemTime(1)
value = S2340,0
volumescale = 255

[State 10015, Smoke]
type = Explod
triggerall = IsHelper
trigger1 = !AnimElemTime(1)
anim = 6335
pos = 4,-34
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = -2
ownpal = 1
trans = Add
ignorehitpause = 1

[State 10015, Smoke]
type = Explod
triggerall = IsHelper
trigger1 = !AnimElemTime(1)
anim = 6335
pos = -6,-37
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = -2
ownpal = 1
trans = Add
ignorehitpause = 1

[State 10015, Smoke]
type = Explod
triggerall = IsHelper
trigger1 = !AnimElemTime(7)
anim = 6340
pos = -17,-2
postype = p1
scale = 0.5,0.5
facing = 1
bindtime = 1
removetime = -1
sprpriority = -2
ownpal = 1
trans = Add
ignorehitpause = 1

[State 10015, Smoke]
type = Explod
triggerall = IsHelper
trigger1 = !AnimElemTime(7)
anim = 6340
pos = -5,-11
postype = p1
scale = 0.5,0.5
facing = 1
bindtime = 1
removetime = -1
sprpriority = -2
ownpal = 1
trans = Add
ignorehitpause = 1

[State 10015, Smoke]
type = Explod
triggerall = IsHelper
trigger1 = !AnimElemTime(7)
anim = 6340
pos = 7,-5
postype = p1
scale = 0.5,0.5
facing = 1
bindtime = 1
removetime = -1
sprpriority = -2
ownpal = 1
trans = Add
ignorehitpause = 1

[State 10015, Smoke]
type = Explod
triggerall = IsHelper
trigger1 = !AnimElemTime(7)
anim = 6340
pos = 18,-3
postype = p1
scale = 0.5,0.5
facing = 1
bindtime = 1
removetime = -1
sprpriority = -2
ownpal = 1
trans = Add
ignorehitpause = 1

;---------------------------------------------------------------------------
;Metal fragments
[Statedef 10020]
type = S
physics = N
anim = 9999
ctrl = 0
velset = 0,0

[State 10020, Asserts]
type = AssertSpecial
trigger1 = IsHelper
flag = Invisible
flag2 = NoShadow
ignorehitpause = 1

[State 10020, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Metal fragment 1"
ID = 7770
stateno = 10021
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10020, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Metal fragment 2"
ID = 7771
stateno = 10021
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10020, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Metal fragment 3"
ID = 7772
stateno = 10021
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10020, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Metal fragment 4"
ID = 7773
stateno = 10021
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10020, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Metal fragment 5"
ID = 7774
stateno = 10021
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10020, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Metal fragment 6"
ID = 7775
stateno = 10021
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10020, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Module 1"
ID = 7776
stateno = 10021
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10020, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Module 2"
ID = 7777
stateno = 10021
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10020, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Module 3"
ID = 7778
stateno = 10021
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10020, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Battery 1"
ID = 7779
stateno = 10021
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10020, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Battery 2"
ID = 7780
stateno = 10021
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10020, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Battery 3"
ID = 7781
stateno = 10021
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10020, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Metal part 1"
ID = 7782
stateno = 10021
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10020, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Metal part 2"
ID = 7783
stateno = 10021
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10020, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Metal part 3"
ID = 7784
stateno = 10021
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10020, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Metal part 4"
ID = 7785
stateno = 10021
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10020, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Metal part 5"
ID = 7786
stateno = 10021
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10020, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Metal part 6"
ID = 7787
stateno = 10021
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10020, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Metal part 7"
ID = 7788
stateno = 10021
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10020, Helper]
type = Helper
triggerall = IsHelper
trigger1 = !Time
name = "Metal part 8"
ID = 7789
stateno = 10021
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 10020, Destroy]
type = DestroySelf
triggerall = IsHelper
trigger1 = Time > 10

;---------------------------------------------------------------------------
[Statedef 10021]
type = A
physics = N
ctrl = 0
sprpriority = -3

[State 10021, Anim]
type = ChangeAnim
triggerall = IsHelper(7770) || IsHelper(7771) || IsHelper(7772) || IsHelper(7773) || IsHelper(7774) || IsHelper(7775)
trigger1 = !Time
value = 6700

[State 10021, Anim]
type = ChangeAnim
triggerall = IsHelper(7776) || IsHelper(7777) || IsHelper(7778)
trigger1 = !Time
value = 6705

[State 10021, Anim]
type = ChangeAnim
triggerall = IsHelper(7779) || IsHelper(7780) || IsHelper(7781)
trigger1 = !Time
value = 6710

[State 10021, Anim]
type = ChangeAnim
triggerall = IsHelper(7782) || IsHelper(7783) || IsHelper(7784) || IsHelper(7785)
trigger1 = !Time
value = 6715

[State 10021, Anim]
type = ChangeAnim
triggerall = IsHelper(7786) || IsHelper(7787) || IsHelper(7788) || IsHelper(7789)
trigger1 = !Time
value = 6720

[State 10021, Turn]
type = Turn
triggerall = !Time
trigger1 = IsHelper(7771)
trigger2 = IsHelper(7773)
trigger3 = IsHelper(7775)
trigger4 = IsHelper(7777)
trigger5 = IsHelper(7780)
trigger6 = IsHelper(7783)
trigger7 = IsHelper(7785)
trigger8 = IsHelper(7787)
trigger9 = IsHelper(7789)

[State 10021, Vel]
type = VelSet
triggerall = IsHelper
trigger1 = !Time
x = 2+(Random%4)

[State 10021, Vel]
type = VelSet
triggerall = IsHelper
trigger1 = !Time
y = -2-(Random%6)

[State 10021, Gravity]
type = VelAdd
triggerall = IsHelper
trigger1 = Time>0
y = 0.35

[State 10021, Pos]
type = PosAdd
triggerall = IsHelper
trigger1 = !Time
y = Parent,Pos y-(Random%60)

[State 10021, Change]
type = SelfState
triggerall = IsHelper
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 10022

;---------------------------------------------------------------------------
[Statedef 10022]
type = S
physics = N
ctrl = 0
velset = 0,0

[State 10022, Anim]
type = ChangeAnim
triggerall = IsHelper
triggerall = Anim = 6700
trigger1 = !Time
value = 6701

[State 10022, Anim]
type = ChangeAnim
triggerall = IsHelper
triggerall = Anim = 6705
trigger1 = !Time
value = 6706

[State 10022, Anim]
type = ChangeAnim
triggerall = IsHelper
triggerall = Anim = 6710
trigger1 = !Time
value = 6711

[State 10022, Anim]
type = ChangeAnim
triggerall = IsHelper
triggerall = Anim = 6715
trigger1 = !Time
value = 6716

[State 10022, Anim]
type = ChangeAnim
triggerall = IsHelper
triggerall = Anim = 6720
trigger1 = !Time
value = 6721

[State 10022, Snd]
type = PlaySnd
triggerall = IsHelper
trigger1 = !Time
value = S2420,3
volumescale = 100

[State 10022, Pos]
type = PosSet
triggerall = IsHelper
trigger1 = Pos y != 0
y = 0

[State 10022, Var]
type = Null
triggerall = IsHelper
triggerall = Root,Var(45)=1
trigger1 = !Time
trigger1 = 1 || Var(0):=0
trigger2 = Time>=60
trigger2 = 1 || Var(0):=Var(0)+16

[State 10022, Trans]
type = Trans
triggerall = IsHelper
trigger1 = Root,Var(45)=1
trans = AddAlpha
alpha = 256-Var(0),Var(0)
ignorehitpause = 1

[State 10022, Destroy]
type = DestroySelf
triggerall = IsHelper
triggerall = Root,Var(45)=1
trigger1 = Var(0)>=256

;---------------------------------------------------------------------------
;Cut in Half - Legs
[Statedef 91241]
type = S
physics = N
anim = 91242
ctrl = 0

[State 91241, Vel]
type = VelSet
triggerall = IsHelper
trigger1 = !Time
x = 3+(Random/500.0)
y = -3

[State 91241, Vel]
type = VelAdd
trigger1 = IsHelper
y = 0.4

[State 91241, Anim]
type = ChangeAnim
triggerall = IsHelper
trigger1 = Vel y > 0 && Pos y > 0
value = 91243

[State 91241, Vel]
type = VelSet
triggerall = IsHelper
trigger1 = Anim = 91243
x = 0
y = 0

[State 91241, Pos]
type = PosSet
triggerall = IsHelper
trigger1 = Anim = 91243
y = 0

[State 91241, Explod]
type = Explod
triggerall = IsHelper
trigger1 = Anim = 91243
anim = F61
pos = 20,0
sprpriority = 0
persistent = 0

[State 91241, Shake]
type = EnvShake
triggerall = IsHelper
trigger1 = Anim = 91243
time = 10
ampl = -8
persistent = 0

[State 91241, Snd]
type = PlaySnd
triggerall = IsHelper
trigger1 = Anim = 91243
value = F7,1
persistent = 0

[State 91241, Destroy]
type = DestroySelf
triggerall = IsHelper
trigger1 = Anim = 91243
trigger1 = Root,Life!=0

;---------------------------------------------------------------------------
;Decapitacion - Head
[Statedef 912320]
type = A
physics = N
anim = 912320
ctrl = 0
velset = 0+(Random/800.0),0-(Random/800.0)
sprpriority = 7

[State 912320, Vel]
type = VelSet
triggerall = IsHelper
trigger1 = !Time
y = -12

[State 912320, Width]
type = VelAdd
trigger1 = IsHelper
y = 0.58

[State 912320, Snd]
type = PlaySnd
triggerall = IsHelper
trigger1 = Pos Y >= -3 && Vel y > 0
value = F7,0
freqmul = 1.3
persistent = 0

[State 912320, Vel]
type = VelSet
triggerall = IsHelper
triggerall = Time = [0,50]
trigger1 = Pos Y >= -3 && Vel y > 0
y = -7.8
persistent = 0

[State 912320, Anim]
type = ChangeAnim
triggerall = IsHelper
trigger1 = Pos Y >= 0 && Vel y > 0
value = 912321

[State 912320, Vel]
type = VelSet
triggerall = IsHelper
trigger1 = Anim = 912321
x = 0
y = 0

[State 912320, Vel]
type = PosSet
triggerall = IsHelper
trigger1 = Anim = 912321
y = 4

[State 912320, Snd]
type = PlaySnd
triggerall = IsHelper
trigger1 = Anim = 912321
value = F7,0
freqmul = 1.3
persistent = 0

[State 912320, Destroy]
type = DestroySelf
triggerall = IsHelper
trigger1 = Anim = 912321
trigger1 = Root,Life!=0

;---------------------------------------------------------------------------
[Statedef 912321]
type = A
physics = N
anim = 912320
ctrl = 0
velset = -0.25,-10
sprpriority = 7

[State 912321, Width]
type = VelAdd
trigger1 = IsHelper
y = 0.1

[State 912321, Helper]
type = Helper
triggerall = IsHelper
trigger1 = Random<150
name = "Blood drops"
ID = 7101
stateno = 7101
pos = 0,-5
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 912321, Vel]
type = VelSet
triggerall = IsHelper
trigger1 = Pos Y > -100 && Vel y > 0
x = 0
y = 0

[State 912321, Vel]
type = PosSet
triggerall = IsHelper
trigger1 = Pos Y > -100 && Vel y > 0
y = -100

[State 912321, FX]
type = Explod
trigger1 = Root,StateNo = 0
anim = F62
sprpriority = 2

[State 912321, Destroy]
type = DestroySelf
triggerall = IsHelper
trigger1 = Anim = 912321
trigger1 = Root,Life!=0