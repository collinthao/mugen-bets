;---------------------------------------------------------------------------
;Rifle
[Statedef 1000]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
velset = 0,0
sprpriority = 2

[State 1000, NHB]
type = NotHitBy
triggerall = !IsHelper
triggerall = !Time
trigger1 = Var(57)>5
value = SCA
time = 20
ignorehitpause = 1

[State 1000, Width]
type = Width
triggerall = !IsHelper
trigger1 = Time = [3,28] 
value = 30,0

[State 1000, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S1100+Var(21),0
volumescale = 255

[State 1000, Bullet]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
name = "Bullet"
ID = 1001
stateno = 1001
pos = 40,-66
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 1000, Shell]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
name = "Shell"
ID = 1081
stateno = 1081
pos = -5,-65
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 1000, Muzzle Flash]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
anim = 6060
pos = 38,-66
postype = p1
scale = 0.25,0.25
facing = 1
bindtime = -1
removetime = -2
sprpriority = 3
ownpal = 1
trans = Add
removeongethit = 1
ignorehitpause = 1

[State 1000, Flag Recovery Frames]
type = StateTypeSet
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
trigger2 = MoveContact || MoveReversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 1000, End]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Rapid fire
[Statedef 1005]
type = S
movetype = A
physics = S
anim = 1005
ctrl = 0
velset = 0,0
poweradd= -500
sprpriority = 2

[State 1005, NHB]
type = NotHitBy
triggerall = !IsHelper
triggerall = !Time
trigger1 = Var(57)>5
value = SCA
time = 30
ignorehitpause = 1

[State 1005, Blink Red]
type = PalFX
triggerall = !IsHelper
trigger1 = !Time
time = 51
add = 32,0,0
sinadd = 64,6,6,3

[State 1005, Width]
type = Width
triggerall = !IsHelper
trigger1 = Time = [6,48] 
value = 29,0

[State 1005, Afterimage]
type = AfterImage
triggerall = !IsHelper
trigger1 = AnimElemTime(1) = 1
Length = 13
PalBright = 30,0,0
PalContrast = 70,20,20
PalAdd = -10,-10,-10
PalMul = 0.85,0.50,0.50
TimeGap = 1
FrameGap = 2
Trans = Add
Time = 2

[State 1005, Super C]
type = AfterImageTime
triggerall = !IsHelper
trigger1 = AnimElemTime(2) >= 1 && Time < 51
time = 2

[State 1005, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2) || !AnimElemTime(4) || !AnimElemTime(6)
value = S1100+Var(21),0
volumescale = 255

[State 1005, Bullet]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(2) || !AnimElemTime(4) || !AnimElemTime(6)
name = "Bullet"
ID = 1001
stateno = 1001
pos = 40,-66
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 1005, Shell]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(2) || !AnimElemTime(4) || !AnimElemTime(6)
name = "Shell"
ID = 1081
stateno = 1081
pos = -5,-65
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 1005, Muzzle Flash]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(2) || !AnimElemTime(4) || !AnimElemTime(6)
anim = 6060
pos = 38,-66
postype = p1
scale = 0.25,0.25
facing = 1
bindtime = -1
removetime = -2
sprpriority = 3
ownpal = 1
trans = Add
removeongethit = 1
ignorehitpause = 1

[State 1005, Flag Recovery Frames]
type = StateTypeSet
triggerall = !IsHelper
trigger1 = !AnimElemTime(7)
trigger2 = MoveContact || MoveReversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 1005, End]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Rifle (Crouching)
[Statedef 1010]
type = C
movetype = A
physics = C
anim = 1010
ctrl = 0
velset = 0,0
sprpriority = 2

[State 1010, NHB]
type = NotHitBy
triggerall = !IsHelper
trigger1 = Var(57)>5
value = SCA
time = 1
ignorehitpause = 1

[State 1010, Width]
type = Width
triggerall = !IsHelper
trigger1 = Time = [3,28] 
value = 30,0

[State 1010, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S1100+Var(21),0
volumescale = 255

[State 1010, Bullet]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
name = "Bullet"
ID = 1001
stateno = 1001
pos = 57,-45
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 1010, Shell]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
name = "Shell"
ID = 1081
stateno = 1081
pos = 12,-42
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 1010, Muzzle Flash]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
anim = 6060
pos = 55,-45
postype = p1
scale = 0.25,0.25
facing = 1
bindtime = -1
removetime = -2
sprpriority = 3
ownpal = 1
trans = Add
removeongethit = 1
ignorehitpause = 1

[State 1010, Flag Recovery Frames]
type = StateTypeSet
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
trigger2 = MoveContact || MoveReversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 1010, End]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Rifle (Mid-air)
[Statedef 1020]
type = A
movetype = A
physics = A
anim = 1020
ctrl = 0
sprpriority = 2

[State 1020, Width]
type = Width
triggerall = !IsHelper
trigger1 = Time = [0,31] 
value = 22,0

[State 1020, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S1100+Var(21),0
volumescale = 255

[State 1020, Bullet]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
name = "Bullet"
ID = 1001
stateno = 1001
pos = 48,-64
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 1071, Shell]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
name = "Shell"
ID = 1081
stateno = 1081
pos = 14,-66
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 1020, Muzzle Flash]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
anim = 6060
pos = 48,-64
postype = p1
scale = 0.25,0.25
facing = 1
bindtime = -1
removetime = -2
sprpriority = 3
ownpal = 1
trans = Add
removeongethit = 1
ignorehitpause = 1

[State 1020, Flag Recovery Frames]
type = StateTypeSet
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
trigger2 = MoveContact || MoveReversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 1030, End]
type = SelfState
triggerall = !IsHelper
trigger1= Vel Y > 0 && Pos Y >= -(Vel Y)
value = 1030

;---------------------------------------------------------------------------
;Land
[Statedef 1030]
type = S
movetype = I
physics = S
anim = 1030
ctrl = 0
velset = 0,0
sprpriority = 1 
movehitpersist = 1

[State 1030, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !Time
value = S47,(Random%6)

[State 1030, Pos]
type = PosSet
triggerall = !IsHelper
trigger1 = !Time
y = 0

[State 1030, Dust]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !Time
anim = 6300
pos = 0,3
postype = p1
scale = 0.3,0.3
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
trans = Add
removeongethit = 1
ignorehitpause = 1

[State 1030, End]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Grenade
[Statedef 1050]
type = S
movetype = A
physics = S
anim = 1400
ctrl = 0
velset = 0,0
sprpriority = 2

[State 1050, NHB]
type = NotHitBy
triggerall = !IsHelper
triggerall = !Time
trigger1 = Var(57)>5
value = SCA
time = 15
ignorehitpause = 1

[State 1050, Width]
type = Width
triggerall = !IsHelper
trigger1 = Time = [3,28] 
value = 30,0

[State 1050, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(1)
value = S900,0
volumescale = 255

[State 1050, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
value = S300,(Random%4)
volumescale = 255

[State 1050, Grenade]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
name = "Grenade"
ID = 1051
stateno = 1051
pos = -13,-120
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.55
size.yscale = 0.55
ignorehitpause = 1

[State 1050, Flag Recovery Frames]
type = StateTypeSet
triggerall = !IsHelper
trigger1 = !AnimElemTime(7)
trigger2 = MoveContact || MoveReversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 1050, End]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Knife punisher
[Statedef 1060]
type = S
movetype = A
physics = S
anim = 1060
ctrl = 0
velset = 0,0

[State 1060, NHB]
type = NotHitBy
triggerall = !IsHelper
trigger1 = Var(57)>5
value = SCA
time = 1
ignorehitpause = 1

[State 1060, Voice]
type = PlaySnd
triggerall = !IsHelper && Var(20)
trigger1 = !AnimElemTime(1)
value = S190,12
channel = 0
volumescale = 255

[State 1060, Drop]
type = TargetDrop
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = !AnimElemTime(1)

[State 1060, Reversal]
type = ReversalDef
triggerall = !IsHelper
trigger1 = AnimElemTime(2)>=0
reversal.attr = SC,NA,SA,HA
pausetime = 0,0
sparkno = -1
hitsound = -1
p1stateno = 1061
p2stateno = 1065

[State 1060, End]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 1061]
type = S
movetype = A
physics = S
anim = 1061
ctrl = 0
velset = 0,0
sprpriority = 0

[State 1061, Drop]
type = TargetDrop
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = Target,IsHelper 
ignorehitpause = 1

[State 1061, End]
type = SelfState
triggerall = !IsHelper
trigger1 = !NumTarget
value = 0
ctrl = 1

[State 1061, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = !AnimElemTime(1)
time = 1
pos = 45,0

[State 1061, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(1)
value = S200,5
volumescale = 255

[State 1061, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(1)
value = S220,4
volumescale = 255

[State 1061, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S320,(Random%2)
volumescale = 255

[State 1061, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
value = S220,(Random%2)
volumescale = 255

[State 1061, Priority]
type = SprPriority
triggerall = !IsHelper
trigger1 = !AnimElemTime(3) 
value = 2

[State 1061, Blood-1]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
anim = 6402
pos = 44,-64
postype = p1
vfacing = -1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 1061, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = !AnimElemTime(3)
name = "Blood drop"
ID = 7100
stateno = 7100
pos = 44,-64
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 1061, Blood-spill]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
anim = 6408
pos = 42,-3
postype = p1
scale = 1.0,1.25
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 1061, HitAdd]
type = HitAdd
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
value = 1

[State 1061, Absord]
type = TargetLifeAdd
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
value = -40
kill = 0
absolute = 1

[State 1061, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
value = S220,3
volumescale = 255

[State 1061, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
anim = 6401
pos = 43,-67
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 1061, Absord]
type = TargetLifeAdd
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
value = -80
kill = 1
absolute = 1

[State 1061, End]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Enemy
[Statedef 1065]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 2
facep2 = 1

[State 1065, Destroy]
type = DestroySelf
trigger1 = IsHelper

[State 1065, Anim2]
type = ChangeAnim2
triggerall = !IsHelper
trigger1 = !Time
value = 1065

[State 1065, Hit voice]
type = PlaySnd
triggerall = !Ishelper
triggerall = Anim = 1065
trigger1 = !AnimElemTime(1)
trigger2 = !AnimElemTime(6)
value = 5000,(Random%7)
channel = 0

[State 1065, Priority]
type = SprPriority
triggerall = !IsHelper
triggerall = Anim = 1065
trigger1 = !AnimElemTime(5) 
value = 0

[State 1065, Anim]
type = ChangeAnim
triggerall = !Ishelper
triggerall = Anim = 1065
trigger1 = !AnimTime
value = 5300

[State 1065, Priority]
type = SprPriority
triggerall = !IsHelper
triggerall = Anim = 5300
trigger1 = !Time
value = 2

[State 1065, STS]
type = StateTypeSet
triggerall = !IsHelper
triggerall = Anim = 5300
trigger1 = !Time
movetype = I

[State 1065, Change]
type = SelfState
triggerall = !IsHelper
triggerall = Anim = 5300
trigger1 = Time >= 60
value = 0
ctrl = 1

[State 1065, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !ALive
value = 5050

;---------------------------------------------------------------------------
;Roll
[Statedef 1070]
type = S
movetype = A
physics = N
anim = 1070+2*(Var(10)=2)
ctrl = 0
velset = 5,0
sprpriority = 2
facep2 = 1

[State 1070, NHB]
type = NotHitBy
triggerall = !IsHelper
trigger1 = Var(57)>5
value = SCA
time = 1
ignorehitpause = 1

[State 1070, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = AnimElemTime(4) = 1 || AnimElemTime(8) = 1
value = S5100,0
volumescale = 255

[State 1070, Hit]
type = HitDef
triggerall = !IsHelper
trigger1 = AnimElemTime(2) = 1 || AnimElemTime(4) = 1 || AnimElemTime(8) = 1
attr = S,SA
animtype = Medium
damage = 20,5
hitflag = MAF
guardflag = MA
pausetime = 8+2*(Var(10)=2),8+2*(Var(10)=2)
sparkno = S6001
guard.sparkno = S6006
sparkxy = 3,-20
hitsound = S200,5+1*(Var(10)=2)
guardsound = S120,(Random%3)
getpower = 15+5*(Var(10)=2),15+5*(Var(10)=2)
ground.type = Low
ground.hittime = 16+2*(Var(10)=2)
ground.slidetime = 16+2*(Var(10)=2)
ground.velocity = -3.6+-2*(Var(10)=2)
ground.cornerpush.veloff = 0
guard.hittime = 13+2*(Var(10)=2)
guard.cornerpush.veloff = 0
air.velocity = -2.5+-2*(Var(10)=2),-4
air.cornerpush.veloff = 0
airguard.velocity = -1.9+-1*((Var(10)>=2)),-0.8
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
yaccel = 0.6+.1*((Var(10)>=2))
envshake.time = 5+5*(Var(10)=2)

[State 1070, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 1071

;---------------------------------------------------------------------------
;Roll shoot
[Statedef 1071]
type = S
movetype = A
physics = S
anim = 1071+2*(Var(10)=2)
ctrl = 0
velset = 0,0
sprpriority = 2

[State 1071, NHB]
type = NotHitBy
triggerall = !IsHelper
triggerall = !Time
trigger1 = Var(57)>5
value = SCA
time = 15
ignorehitpause = 1

[State 1071, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(22)=0
trigger1 = !Time
value = S20,(Random%6)
volumescale = 255

[State 1071, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(22)=1
trigger1 = !Time
value = S21,(Random%6)
volumescale = 255

[State 1071, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(22)=2
trigger1 = !Time
value = S22,(Random%6)
volumescale = 255

[State 1071, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(22)=3
trigger1 = !Time
value = S23,(Random%6)
volumescale = 255

[State 1071, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(22)=4
trigger1 = !Time
value = S24,(Random%6)
volumescale = 255

[State 1071, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(22)=5
trigger1 = !Time
value = S25,(Random%5)
volumescale = 255

[State 1071, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(22)=6
trigger1 = !Time
value = S26,(Random%4)
volumescale = 255

[State 1071, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(22)=7
trigger1 = !Time
value = S27,(Random%6)
volumescale = 255

[State 1071, Width]
type = Width
triggerall = !IsHelper
trigger1 = Time = [0,41] 
value = 37,0

[State 1071, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S1100+Var(21),0
volumescale = 255

[State 1071, Bullet]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
name = "Bullet"
ID = 1001
stateno = 1072
pos = 57,-45
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 1071, Shell]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
name = "Shell"
ID = 1081
stateno = 1081
pos = 12,-42
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 1071, Muzzle Flash]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
anim = 6060
pos = 55,-45
postype = p1
scale = 0.25,0.25
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
trans = Add
removeongethit = 1
ignorehitpause = 1

[State 1071, Flag Recovery Frames]
type = StateTypeSet
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
trigger2 = MoveContact || MoveReversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 1071, End]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Counter
[Statedef 1100]
type = S
movetype = A
physics = N
anim = 230
ctrl = 0
velset = 0,0
sprpriority = 2

[State 1100, Pause]
type = SuperPause
triggerall = !IsHelper
trigger1 = !Time
time = 10
anim = -1
sound = -1
darken = 1
ignorehitpause = 1

[State 1100, NHB]
type = NotHitBy
trigger1 = !IsHelper
value = SCA
time = 10
ignorehitpause = 1

[State 1100, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
value = S310,(Random%2)
volumescale = 255

[State 1100, Pos]
type = PosAdd
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
x = 6

[State 1100, Hit]
type = HitDef
triggerall = !IsHelper
trigger1 = !Time
attr = S,NA
damage = 80,40
animtype = Hard
priority = 4,Hit
hitflag = MAF
guardflag = M
sparkno = S6002
guard.sparkno = S6007
sparkxy = -14,-58
hitsound = S210,(Random%3)
guardsound = S120,(Random%3)
pausetime = 10,12
getpower = 80,80
ground.type = High
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -12,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.animtype = Back
air.velocity = -3.5,-6
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0
envshake.time = 12
envshake.ampl = 6

[State 1100, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !Ishelper
triggerall = MoveHit && Numtarget
trigger1 = (Target,MoveType = H) && !(Target,Time)
anim = 6402
pos = Ceil(P2Dist X-10),-88
postype = p1
bindtime = 1
sprpriority = 10
removetime = -2
facing = 1
ontop = 1
ownpal = 1
trans = None
ignorehitpause = 1
persistent = 0

[State 1100, Self]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Air Counter
[Statedef 1200]
type = A
movetype = A
physics = A
anim = 610
ctrl = 0
sprpriority = 2

[State 1200, Pause]
type = SuperPause
triggerall = !IsHelper
trigger1 = !Time
time = 10
anim = -1
sound = -1
darken = 1
ignorehitpause = 1

[State 1200, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S300,(Random%4)
volumescale = 255

[State 1200, Hit]
type = HitDef
triggerall = !IsHelper
trigger1 = !Time
attr = A,NA
damage = 60,20
animtype = Hard
priority = 4,Hit
hitflag = MAF
guardflag = H
sparkno = S6001
guard.sparkno = S6006
sparkxy = -20,-38
hitsound = S200,5
guardsound = S120,(Random%3)
pausetime = 10,13
getpower = 50,50
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = -4
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.animtype = Back
air.velocity = -2,-4
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
air.fall = 0
fall.recover = 0
envshake.time = 12
envshake.ampl = 4

[State 1200, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !Ishelper
triggerall = MoveHit && Numtarget
trigger1 = (Target,MoveType = H) && !(Target,Time)
anim = 6401
pos = Ceil(P2Dist X-10),-50
postype = p1
bindtime = 1
sprpriority = 10
removetime = -2
facing = 1
ontop = 1
ownpal = 1
trans = None
ignorehitpause = 1
persistent = 0

[State 1200, Pos]
type = PosAdd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
trigger2 = !AnimElemTime(3)
x = 6
y = -3

[State 1200, Self]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;Sliding kick
[Statedef 1300]
type = C
movetype = A
physics = N
anim = 700
ctrl = 0
sprpriority = 2

[State 1300, Vel]
type = VelSet
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
x = 6

[State 1300, Dust]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = Time = 9
trigger2 = Time = 16
trigger3 = Time = 23
anim = 6301
pos = 0,3
postype = p1
scale = 0.3,0.3
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
removeongethit = 1
ignorehitpause = 1

[State 1300, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
value = S300,4
volumescale = 255

[State 1300, Hit]
type = HitDef
triggerall = !IsHelper
trigger1 = !Time
attr = C,NA
damage = 100,10
animtype = Hard
hitflag = MAFD
guardflag = L
priority = 7,Hit
pausetime = 13,12
sparkno = S6001
guard.sparkno = S6006
sparkxy = -4,-17
hitsound = S200,5
guardsound = S120,(Random%3)
ground.type = Trip
ground.hittime = 15
ground.slidetime = 12
ground.velocity = -4,-3.5
air.velocity = -3,-4
down.velocity = -5,-6
down.hittime = 24
fall = 1
fall.recover = 0

[State 1300, Slow]
type = VelAdd
triggerall = !IsHelper
trigger1 = Time > 16
trigger1 = Vel X > 0 
x = -0.4

[State 1300, Stop]
type = VelSet
triggerall = !IsHelper
trigger1 = Vel X < 0 
x = 0

[State 1300, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 1301

;---------------------------------------------------------------------------
[Statedef 1301]
type = S
physics = S
anim = 701

[State 1301, Change]
type = SelfState
triggerall = !IsHelper
triggerall = Var(59)
triggerall = P2BodyDist X = [-50,70]
trigger1 = !AnimTime
value = 105
ctrl = 0

[State 1301, End]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Round kick
[Statedef 1310]
type = A
movetype = A
physics = N
anim = 710
ctrl = 0
velset = 6.5,-2.5
sprpriority = 2

[State 1310, Gravity]
type = VelAdd
triggerall = !IsHelper
trigger1 = Time >= 6
Y = 0.32

[State 1310, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
value = S300,5
volumescale = 255

[State 1310, Hit]
type = HitDef
triggerall = !IsHelper
trigger1 = !Time
attr = A,SA
damage = 100,10
animtype = Hard
hitflag = MAFD
guardflag = L
priority = 7,Hit
pausetime = 14,14
sparkno = S6002
guard.sparkno = S6006
sparkxy = -8,-52
hitsound = S200,(Random%5)
guardsound = S120,(Random%3)
ground.type = High
ground.hittime = 20
ground.slidetime = 18
ground.velocity = -3,-4.8
air.hittime = 36
air.velocity = -3,-4.8
fall = 1
air.fall = 1
fall.recover = 0
yaccel = 0.4

[State 1310, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = MoveContact && Pos Y <= 20
value = 1311

[State 1310, Land]
type = SelfState
triggerall = !IsHelper
trigger1 = Pos Y >= 0 && Time > 10
value = 52

;---------------------------------------------------------------------------
[Statedef 1311]
type = A
physics = N
anim = 711
ctrl = 0
velset = -1.0,-2.4
sprpriority = 2

[State 1311, Gravity]
type = VelAdd
triggerall = !IsHelper
trigger1 = Time>=0
y = 0.4

[State 1311, End]
type = SelfState
triggerall = !IsHelper
trigger1 = Time > 0 && Pos Y >= 0
value = 52