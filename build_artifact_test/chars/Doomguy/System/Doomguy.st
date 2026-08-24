;---------------------------------------------------------------------------
;Standing Light Punch
[Statedef 200]
type = S
movetype = A
physics = S
anim = 200
ctrl = 0
velset = 0,0
sprpriority = 2

[State 200, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S300,(Random%4)
volumescale = 255

[State 200, Hit]
type = HitDef
triggerall = !IsHelper
trigger1 = !Time
attr = S,NA
damage = 40,10
animtype = Light
priority = 3,Hit
hitflag = MAF
guardflag = MA
sparkno = S6000
guard.sparkno = S6005
sparkxy = -10,-80
hitsound = S200,(Random%5)
guardsound = S120,(Random%3)
pausetime = 10,12
getpower = 30,30
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = -2.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.type = High
air.animtype = Back
air.velocity = -1.5,-3
airguard.velocity = -1.5,-0.8
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
air.fall = 1
fall.recover = 0
envshake.time = 8
envshake.ampl = 6

[State 200, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !Ishelper
triggerall = MoveHit && Numtarget
trigger1 = (Target,MoveType = H) && !(Target,Time)
anim = 6400
pos = Ceil(P2Dist X-10),-80
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

[State 200, Helper]
type = Helper
triggerall = !Ishelper
triggerall = MoveHit && Numtarget
trigger1 = (Target,MoveType = H) && !(Target,Time)
name = "Blood drop"
ID = 7100
stateno = 7100
pos = Ceil(P2Dist X-10),-80
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 0

[State 200, Flag Recovery Frames]
type = StateTypeSet
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
trigger2 = MoveContact || MoveReversed
movetype = I
persistent = 0
ignorehitpause = 1

[State 200, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing Medium Kick
[Statedef 210]
type = S
movetype = A
physics = S
anim = 210
ctrl = 0
velset = 0,0
sprpriority = 2

[State 210, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S300,(Random%4)
volumescale = 255

[State 210, Hit]
type = HitDef
triggerall = !IsHelper
trigger1 = !Time
attr = S,NA
damage = 55,15
animtype = Medium
priority = 4,Hit
hitflag = MAF
guardflag = MA
sparkno = S6001
guard.sparkno = S6006
sparkxy = -10,-32
hitsound = S200,5
guardsound = S120,(Random%3)
pausetime = 10,12
getpower = 40,40
ground.type = Low
ground.hittime = 12
ground.slidetime = 12
ground.velocity = -5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.type = Low
air.animtype = Back
air.velocity = -2.5,-6
airguard.velocity = -1.5,-0.8
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
air.fall = 1
fall.recover = 0
envshake.time = 10
envshake.ampl = 6

[State 210, Flag Recovery Frames]
type = StateTypeSet
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
trigger2 = MoveContact || MoveReversed
movetype = I
persistent = 0
ignorehitpause = 1

[State 210, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing Strong Punch
[Statedef 230]
type = S
movetype = A
physics = S
anim = 230
ctrl = 0
velset = 0,0
sprpriority = 2

[State 230, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S310,(Random%2)
volumescale = 255

[State 230, Hit]
type = HitDef
triggerall = !IsHelper
trigger1 = !Time
attr = S,NA
damage = 80,30
animtype = Hard
priority = 5,Hit
hitflag = MAF
guardflag = M
sparkno = S6002
guard.sparkno = S6007
sparkxy = -10,-88
hitsound = S210,(Random%3)
guardsound = S120,(Random%3)
pausetime = 10,12
getpower = 80,80
ground.type = High
ground.hittime = 16
ground.slidetime = 16
ground.velocity = -3,-10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.animtype = Up
air.velocity = -3.6,-6
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0
envshake.time = 12
envshake.ampl = 6

[State 230, Blood]
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

[State 230, Helper]
type = Helper
triggerall = !Ishelper
triggerall = MoveHit && Numtarget
trigger1 = (Target,MoveType = H) && !(Target,Time)
name = "Blood drop"
ID = 7100
stateno = 7100
pos = Ceil(P2Dist X-10),-88
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 0

[State 230, Flag Recovery Frames]
type = StateTypeSet
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
trigger2 = MoveContact || MoveReversed
movetype = I
persistent = 0
ignorehitpause = 1

[State 230, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Crouching Light Punch
[Statedef 400]
type = C
movetype = A
physics = C
anim = 400
ctrl = 0
velset = 0,0
sprpriority = 2

[State 400, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S300,(Random%4)
volumescale = 255

[State 400, Hit]
type = HitDef
triggerall = !IsHelper
trigger1 = !Time
attr = C,NA
damage = 40,10
priority = 3,Hit
animtype = Light
hitflag = MAF
guardflag = L
sparkno = S6000
guard.sparkno = S6005
sparkxy = -10,-50
hitsound = S200,(Random%5)
guardsound = S120,(Random%3)
pausetime = 10,13
getpower = 30,30
ground.type = Low
ground.hittime = 12
ground.slidetime = 12
ground.velocity = -3.6
ground.cornerpush.veloff = 0
guard.velocity = -4
guard.cornerpush.veloff = 0
air.animtype = Back
air.velocity = -2.4,-5.4
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
envshake.time = 8
envshake.ampl = 6

[State 400, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !Ishelper
triggerall = MoveHit && Numtarget
trigger1 = (Target,MoveType = H) && !(Target,Time)
anim = 6400
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

[State 400, Helper]
type = Helper
triggerall = !Ishelper
triggerall = MoveHit && Numtarget
trigger1 = (Target,MoveType = H) && !(Target,Time)
name = "Blood drop"
ID = 7100
stateno = 7100
pos = Ceil(P2Dist X-10),-50
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 0

[State 400, Flag Recovery Frames]
type = StateTypeSet
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
trigger2 = MoveContact || MoveReversed
movetype = I
persistent = 0
ignorehitpause = 1

[State 400, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 11+(Command != "holddown")
ctrl = 1

;---------------------------------------------------------------------------
;Crouching Medium Kick
[Statedef 410]
type = C
movetype = A
physics = C
anim = 410
ctrl = 0
velset = 0,0
sprpriority = 2

[State 410, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S300,(Random%4)
volumescale = 255

[State 210, Pos]
type = VelAdd
triggerall = !IsHelper
trigger1 = PrevStateNo!=410
trigger1 = !AnimElemTime(2) 
x = 2.5

[State 210, Pos]
type = VelAdd
triggerall = !IsHelper
trigger1 = PrevStateNo!=410
trigger1 = !AnimElemTime(3) 
x = 2

[State 210, Pos]
type = VelAdd
triggerall = !IsHelper
trigger1 = PrevStateNo!=410
trigger1 = !AnimElemTime(4) 
x = 1

[State 410, Hit]
type = HitDef
triggerall = !IsHelper
trigger1 = !Time
attr = C,NA
damage = 60,20
animtype = Medium
priority = 4,Hit
hitflag = MAF
guardflag = L
sparkno = S6001
guard.sparkno = S6006
sparkxy = -10,-26
hitsound = S200,5
guardsound = S120,(Random%3)
pausetime = 10,12
getpower = 80,80
ground.type = Low
ground.hittime = 15
ground.slidetime = 15
ground.velocity = -5.6
ground.cornerpush.veloff = 0
guard.velocity = -5
guard.cornerpush.veloff = 0
air.type = High
air.animtype = Back
air.velocity = -3.4,-6
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.velocity = -5,0
down.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 5

[State 410, Flag Recovery Frames]
type = StateTypeSet
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
trigger2 = MoveContact || MoveReversed
movetype = I
persistent = 0
ignorehitpause = 1

[State 410, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 11+(Command != "holddown")
ctrl = 1

;---------------------------------------------------------------------------
;Crouch Strong Punch
[Statedef 430]
type = C
movetype = A
physics = C
anim = 430
ctrl = 0
velset = 0,0
sprpriority = 2

[State 430, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S310,(Random%2)
volumescale = 255

[State 430, Hit]
type = HitDef
triggerall = !IsHelper
trigger1 = !Time
attr = C,NA
damage = 70,30
animtype = Hard
priority = 6,Hit
hitflag = MAF
guardflag = L
sparkno = S6002
guard.sparkno = S6007
sparkxy = -5,-72
hitsound = S210,(Random%3)
guardsound = S120,(Random%3)
pausetime = 12,14
getpower = 50,50
ground.type = Trip
ground.hittime = 16
ground.slidetime = 12
ground.velocity = -1.5,-2
ground.cornerpush.veloff = 0
guard.velocity = -5
guard.cornerpush.veloff = 0
air.animtype = Back
air.velocity = -1.2,-3
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.velocity = -5,0
down.cornerpush.veloff = 0
fall = 1
fall.recover = 0
envshake.time = 10
envshake.ampl = 5
envshake.freq = 75

[State 430, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !Ishelper
triggerall = MoveHit && Numtarget
trigger1 = (Target,MoveType = H) && !(Target,Time)
anim = 6402
pos = Ceil(P2Dist X-10),-72
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

[State 430, Helper]
type = Helper
triggerall = !Ishelper
triggerall = MoveHit && Numtarget
trigger1 = (Target,MoveType = H) && !(Target,Time)
name = "Blood drop"
ID = 7100
stateno = 7100
pos = Ceil(P2Dist X-10),-80
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 0

[State 430, Flag Recovery Frames]
type = StateTypeSet
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
trigger2 = MoveContact || MoveReversed
movetype = I
persistent = 0
ignorehitpause = 1

[State 430, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 11+(Command != "holddown")
ctrl = 1

;---------------------------------------------------------------------------
;Jump Light Punch
[Statedef 600]
type = A
movetype = A
physics = A
anim = 600
ctrl = 0
sprpriority = 2

[State 600, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S300,(Random%4)
volumescale = 255

[State 600, Hit]
type = HitDef
triggerall = !IsHelper
trigger1 = !Time
attr = A,NA
damage = 40,10
animtype = Light
priority = 3,Hit
hitflag = MAF
guardflag = H
sparkno = S6000
guard.sparkno = S6005
sparkxy = -10,-67
hitsound = S200,(Random%5)
guardsound = S120,(Random%3)
pausetime = 10,12
getpower = 30,30
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = -2.6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.animtype = Back
air.velocity = -1.4,-5
air.cornerpush.veloff = 0
airguard.velocity = -2,-1
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
air.fall = 0
fall.recover = 0
envshake.time = 10
envshake.ampl = 5

[State 600, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !Ishelper
triggerall = MoveHit && Numtarget
trigger1 = (Target,MoveType = H) && !(Target,Time)
anim = 6400
pos = Ceil(P2Dist X-10),-67
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

[State 600, Helper]
type = Helper
triggerall = !Ishelper
triggerall = MoveHit && Numtarget
trigger1 = (Target,MoveType = H) && !(Target,Time)
name = "Blood drop"
ID = 7100
stateno = 7100
pos = Ceil(P2Dist X-10),-67
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 0

[State 600, Flag Recovery Frames]
type = StateTypeSet
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
trigger2 = MoveContact || MoveReversed
movetype = I
persistent = 0
ignorehitpause = 1

[State 600, Self]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;Jump Medium Kick
[Statedef 610]
type = A
movetype = A
physics = A
anim = 610
ctrl = 0
sprpriority = 2

[State 610, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S300,(Random%4)
volumescale = 255

[State 610, Vel]
type = VelAdd
triggerall = !Ishelper
trigger1 = !AnimElemTime(2)
x = 5

[State 610, Hit]
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
sparkxy = -10,-50
hitsound = S200,5
guardsound = S120,(Random%3)
pausetime = 10,13
getpower = 50,50
ground.type = High
ground.hittime = 16
ground.slidetime = 16
ground.velocity = -4.6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.animtype = Back
air.velocity = -1.4,-6
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
air.fall = 0
fall.recover = 0
envshake.time = 12
envshake.ampl = 4

[State 610, Flag Recovery Frames]
type = StateTypeSet
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
trigger2 = MoveContact || MoveReversed
movetype = I
persistent = 0
ignorehitpause = 1

[State 610, Self]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;Jump Strong Punch
[Statedef 630]
type = A
movetype = A
physics = A
anim = 630
ctrl = 0
sprpriority = 2

[State 630, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S310,(Random%2)
volumescale = 255

[State 630, Hit]
type = HitDef
triggerall = !IsHelper
trigger1 = !Time
attr = A,NA
damage = 70,30
animtype = Hard
priority = 5,Hit
hitflag = MAF
guardflag = H
sparkno = S6002
guard.sparkno = S6007
sparkxy = -10,-80
hitsound = S210,(Random%3)
guardsound = S120,(Random%3)
pausetime = 12,14
getpower = 80,80
ground.type = High
ground.hittime = 16
ground.slidetime = 16
ground.velocity = -4.6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.animtype = Back
air.velocity = -1.4,0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0
envshake.time = 12
envshake.ampl = 6

[State 630, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !Ishelper
triggerall = MoveHit && Numtarget
trigger1 = (Target,MoveType = H) && !(Target,Time)
anim = 6402
pos = Ceil(P2Dist X-10),-80
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

[State 630, Helper]
type = Helper
triggerall = !Ishelper
triggerall = MoveHit && Numtarget
trigger1 = (Target,MoveType = H) && !(Target,Time)
name = "Blood drop"
ID = 7100
stateno = 7100
pos = Ceil(P2Dist X-10),-80
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 0

[State 630, Flag Recovery Frames]
type = StateTypeSet
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
trigger2 = MoveContact || MoveReversed
movetype = I
persistent = 0
ignorehitpause = 1

[State 630, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;Throw - Punisher
[Statedef 800]
type = S
movetype = A
physics = S
anim = 800
ctrl = 0
velset = 0,0
sprpriority = 2

[State 800, Hit]
type = HitDef
triggerall = !IsHelper
trigger1 = Enemy,MoveType != H && Enemy,StateType != A
trigger1 = !Time
attr = S,NT
animtype = Hard
priority = 1,Miss
hitflag = M-
sparkno = -1
guard.sparkno = -1
hitsound = S200,5
guardsound = -1
p1facing = 1
p2facing = 1
p1stateno = 801
p2stateno = 805
numhits = 0
guard.dist = 0
ground.type = Low
ground.velocity = 0,0
ground.slidetime = 20
ground.hittime = 22
air.velocity = 0,0
air.animtype = Back
air.fall = 0
fall = 1
fall.recover = 0

[State 800, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 801]
type = S
movetype = A
physics = N
anim = 801
ctrl = 0
velset = 0,0
sprpriority = 2

[State 801, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = !AnimElemTime(1)
time = 1
pos = 10,-10

[State 801, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = !AnimElemTime(2)
time = 1
pos = 20,0

[State 801, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = !AnimElemTime(3)
time = 1
pos = 30,0

[State 802, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 802

;---------------------------------------------------------------------------
[Statedef 802]
type = S
movetype = A
physics = N
anim = 802
ctrl = 0
velset = 0,0
sprpriority = 2

[State 802, Target]
type = TargetState
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = !Time
value = 806

[State 802, Bind]
type = TargetBind
triggerall = !IsHelper
trigger1 = AnimElemTime(1)>=0 && AnimElemTime(33)<0
time = 1
pos = 80,0

[State 802, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(1)
value = S800,0
volumescale = 255

[State 802, Dust]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(1)
anim = 6300
pos = 40,3
postype = p1
scale = 0.3,0.3
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
trans = Add
ignorehitpause = 1

[State 802, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
trigger2 = !AnimElemTime(7)
trigger3 = !AnimElemTime(10)
trigger4 = !AnimElemTime(13)
trigger5 = !AnimElemTime(16)
trigger6 = !AnimElemTime(19)
trigger7 = !AnimElemTime(22)
trigger8 = !AnimElemTime(25)
trigger9 = !AnimElemTime(28)
trigger10 = !AnimElemTime(31)
value = S300,(Random%4)
volumescale = 255

[State 802, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
trigger2 = !AnimElemTime(8)
trigger3 = !AnimElemTime(11)
trigger4 = !AnimElemTime(14)
trigger5 = !AnimElemTime(17)
trigger6 = !AnimElemTime(20)
trigger7 = !AnimElemTime(23)
trigger8 = !AnimElemTime(26)
trigger9 = !AnimElemTime(29)
trigger10 = !AnimElemTime(32)
value = S200,(Random%5)
volumescale = 255

[State 802, Spark]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !Ishelper
trigger1 = !AnimElemTime(5)
trigger2 = !AnimElemTime(8)
trigger3 = !AnimElemTime(11)
trigger4 = !AnimElemTime(14)
trigger5 = !AnimElemTime(17)
trigger6 = !AnimElemTime(20)
trigger7 = !AnimElemTime(23)
trigger8 = !AnimElemTime(26)
trigger9 = !AnimElemTime(29)
trigger10 = !AnimElemTime(32)
anim = 6000
pos = 85,-15
postype = p1
bindtime = 1
sprpriority = 10
removetime = -2
facing = 1
ontop = 1
ownpal = 1
trans = Add
ignorehitpause = 1

[State 802, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !Ishelper
trigger1 = !AnimElemTime(5)
trigger2 = !AnimElemTime(8)
trigger3 = !AnimElemTime(11)
trigger4 = !AnimElemTime(14)
trigger5 = !AnimElemTime(17)
trigger6 = !AnimElemTime(20)
trigger7 = !AnimElemTime(23)
trigger8 = !AnimElemTime(26)
trigger9 = !AnimElemTime(29)
trigger10 = !AnimElemTime(32)
anim = 6403
pos = 85,-12
postype = p1
bindtime = 1
sprpriority = 5
removetime = -2
facing = 1
ontop = 1
ownpal = 1
trans = None
ignorehitpause = 1

[State 802, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = !AnimElemTime(5)
trigger2 = !AnimElemTime(8)
trigger3 = !AnimElemTime(11)
trigger4 = !AnimElemTime(14)
trigger5 = !AnimElemTime(17)
trigger6 = !AnimElemTime(20)
trigger7 = !AnimElemTime(23)
trigger8 = !AnimElemTime(26)
trigger9 = !AnimElemTime(29)
trigger10 = !AnimElemTime(32)
name = "Blood drop"
ID = 7100
stateno = 7100
pos = 85,-12
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 802, Hit]
type = HitAdd
triggerall = !Ishelper
trigger1 = !AnimElemTime(5)
trigger2 = !AnimElemTime(8)
trigger3 = !AnimElemTime(11)
trigger4 = !AnimElemTime(14)
trigger5 = !AnimElemTime(17)
trigger6 = !AnimElemTime(20)
trigger7 = !AnimElemTime(23)
trigger8 = !AnimElemTime(26)
trigger9 = !AnimElemTime(29)
trigger10 = !AnimElemTime(32)
value = 1 

[State 802, Absord]
type = TargetLifeAdd
triggerall = !Ishelper
trigger1 = !AnimElemTime(5)
trigger2 = !AnimElemTime(8)
trigger3 = !AnimElemTime(11)
trigger4 = !AnimElemTime(14)
trigger5 = !AnimElemTime(17)
trigger6 = !AnimElemTime(20)
trigger7 = !AnimElemTime(23)
trigger8 = !AnimElemTime(26)
trigger9 = !AnimElemTime(29)
value = -15
kill = 0
absolute = 1

[State 802, Final]
type = TargetLifeAdd
triggerall = !Ishelper
trigger1 = !AnimElemTime(32)
value = -45
kill = 1
absolute = 1

[State 802, Shake]
type = EnvShake
triggerall = !Ishelper
trigger1 = !AnimElemTime(5)
trigger2 = !AnimElemTime(8)
trigger3 = !AnimElemTime(11)
trigger4 = !AnimElemTime(14)
trigger5 = !AnimElemTime(17)
trigger6 = !AnimElemTime(20)
trigger7 = !AnimElemTime(23)
trigger8 = !AnimElemTime(26)
trigger9 = !AnimElemTime(29)
trigger10 = !AnimElemTime(32) 
time = 4
freq = 120
ampl = 4

[State 802, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 105

;---------------------------------------------------------------------------
[Statedef 805]
type = S
movetype = H
physics = N
ctrl = 0
sprpriority = 0

[State 805, Screen]
type = ScreenBound
trigger1 = !IsHelper
value = 0
movecamera = 0,0

[State 805, Anim]
type = ChangeAnim2
triggerall = !IsHelper
trigger1 = !Time
value = 805

[State 805, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = Time >= 47
value = 5100

;---------------------------------------------------------------------------
[Statedef 806]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 806, Screen]
type = ScreenBound
trigger1 = !IsHelper
value = 0
movecamera = 0,0

[State 806, Anim]
type = ChangeAnim2
triggerall = !IsHelper
trigger1 = !Time
value = 806

[State 806, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 5110

;---------------------------------------------------------------------------
;Throw - Pistol
[Statedef 810]
type = S
movetype = A
physics = S
anim = 800
ctrl = 0
velset = 0,0
sprpriority = 2

[State 810, Hit]
type = HitDef
triggerall = !IsHelper
trigger1 = Enemy,MoveType != H && Enemy,StateType != A
trigger1 = !Time
attr = S,NT
animtype = Hard
priority = 1,Miss
hitflag = M-
sparkno = -1
guard.sparkno = -1
hitsound = S200,5
guardsound = -1
p1facing = 1
p2facing = 1
p1stateno = 811
p2stateno = 815
numhits = 0
guard.dist = 0
ground.type = Low
ground.velocity = 0,0
ground.slidetime = 20
ground.hittime = 22
air.velocity = 0,0
air.animtype = Back
air.fall = 0
fall = 1
fall.recover = 0

[State 810, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 811]
type = S
movetype = A
physics = N
anim = 811
ctrl = 0
velset = 0,0
sprpriority = 2

[State 811, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = !AnimElemTime(1)
time = 1
pos = 50,0

[State 811, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(1)
value = S205,0
volumescale = 255

[State 802, Spark]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !Ishelper
trigger1 = !AnimElemTime(1)
anim = 6000
pos = 48,-87
postype = p1
bindtime = 1
sprpriority = 10
removetime = -2
facing = 1
ontop = 1
ownpal = 1
trans = Add
ignorehitpause = 1

[State 811, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = !AnimElemTime(2)
time = 1
pos = 33,-93

[State 811, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S300,(Random%4)
volumescale = 255

[State 811, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = !AnimElemTime(3)
time = 1
pos = 26,-100

[State 811, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = !AnimElemTime(4)
time = 1
pos = -2,-118

[State 811, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = !AnimElemTime(5)
time = 1
pos = -50,-60

[State 811, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = !AnimElemTime(6)
time = 1
pos = -55,-40

[State 811, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = !AnimElemTime(7)
time = 1
pos = -60,-20

[State 811, Target]
type = TargetState
triggerall = !Ishelper
triggerall = NumTarget
trigger1 = AnimElemTime(7)=5
value = 816

[State 811, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = AnimElemTime(7)>=5 && AnimElemTime(11)<0
time = 1
pos = -60,0

[State 811, Dust]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = AnimElemTime(7)=5
anim = 6300
pos = -50,3
postype = p1
scale = 0.3,0.3
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
trans = Add
ignorehitpause = 1

[State 811, Shake]
type = EnvShake
triggerall = !IsHelper
trigger1 =  AnimElemTime(7)=5
time = 30
freq = 60
ampl = 4
phase = 90

[State 811, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = AnimElemTime(7)=5
value = S200,5
volumescale = 255

[State 811, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(8)
value = S1000+Var(21),1
volumescale = 255

[State 811, HitAdd]
type = HitAdd
triggerall = !IsHelper
trigger1 = !AnimElemTime(9) 
value = 1

[State 811, Absord]
type = TargetLifeAdd
triggerall = !IsHelper
trigger1 = !AnimElemTime(9)
value = -180
kill = 1
absolute = 1

[State 811, Muzzle Flash]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(9)
anim = 6065
pos = -55,-41
postype = p1
scale = 0.25,0.25
facing = -1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
trans = Add
ignorehitpause = 1

[State 811, Shell]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(9)
name = "Shell"
ID = 1081
stateno = 1081
pos = -46,-51
postype = p1
facing = -1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 811, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(9)
value = S1000+Var(21),0
volumescale = 255

[State 811, Hit Spark]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(9)
anim = 6580
pos = -90,-10
postype = p1
scale = 0.25,0.25
facing = -1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
trans = Add
ignorehitpause = 1

[State 811, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(9)
anim = 6404+(Random%2)
pos = -90,-10
postype = p1
scale = 0.25,0.25
facing = -1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 811, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(9)
value = S250,0
volumescale = 255

[State 810, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 815]
type = S
movetype = H
physics = N
ctrl = 0
sprpriority = 0

[State 815, Screen]
type = ScreenBound
trigger1 = !IsHelper
value = 0
movecamera = 0,0

[State 815, Anim]
type = ChangeAnim2
triggerall = !IsHelper
trigger1 = !Time
value = 815

[State 815, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = Time >= 52
value = 5100

;---------------------------------------------------------------------------
[Statedef 816]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 816, Turn]
type = Turn
triggerall = !IsHelper
trigger1 = !Time

[State 816, Screen]
type = ScreenBound
trigger1 = !IsHelper
value = 0
movecamera = 0,0

[State 816, Anim]
type = ChangeAnim2
triggerall = !IsHelper
trigger1 = !Time
value = 816

[State 816, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 5110

;---------------------------------------------------------------------------
;Throw - Rifle
[Statedef 820]
type = S
movetype = A
physics = S
anim = 800
ctrl = 0
velset = 0,0
sprpriority = 2

[State 820, Hit]
type = HitDef
triggerall = !IsHelper
trigger1 = Enemy,MoveType != H && Enemy,StateType != A
trigger1 = !Time
attr = S,NT
animtype = Hard
priority = 1,Miss
hitflag = M-
sparkno = -1
guard.sparkno = -1
hitsound = S200,5
guardsound = -1
p1facing = 1
p2facing = 1
p1stateno = 821
p2stateno = 825
numhits = 0
guard.dist = 0
ground.type = Low
ground.velocity = 0,0
ground.slidetime = 20
ground.hittime = 22
air.velocity = 0,0
air.animtype = Back
air.fall = 0
fall = 1
fall.recover = 0

[State 820, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 821]
type = S
movetype = A
physics = N
anim = 821
ctrl = 0
velset = 0,0
sprpriority = 2

[State 821, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = !AnimElemTime(1)
time = 1
pos = 50,0

[State 821, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(1)
value = S205,0
volumescale = 255

[State 802, Spark]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !Ishelper
trigger1 = !AnimElemTime(1)
anim = 6000
pos = 48,-87
postype = p1
bindtime = 1
sprpriority = 10
removetime = -2
facing = 1
ontop = 1
ownpal = 1
trans = Add
ignorehitpause = 1

[State 821, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = !AnimElemTime(2)
time = 1
pos = 33,-93

[State 821, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S300,(Random%4)
volumescale = 255

[State 821, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = !AnimElemTime(3)
time = 1
pos = 26,-100

[State 821, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = !AnimElemTime(4)
time = 1
pos = -2,-118

[State 821, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = !AnimElemTime(5)
time = 1
pos = -55,-60

[State 821, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = !AnimElemTime(6)
time = 1
pos = -60,-40

[State 821, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = !AnimElemTime(7)
time = 1
pos = -65,-20

[State 821, Target]
type = TargetState
triggerall = !Ishelper
triggerall = NumTarget
trigger1 = AnimElemTime(7)=5
value = 826

[State 821, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = AnimElemTime(7)>=5 && AnimElemTime(11)<0
time = 1
pos = -65,0

[State 821, Dust]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = AnimElemTime(7)=5
anim = 6300
pos = -50,3
postype = p1
scale = 0.3,0.3
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
trans = Add
ignorehitpause = 1

[State 821, Shake]
type = EnvShake
triggerall = !IsHelper
trigger1 =  AnimElemTime(7)=5
time = 30
freq = 60
ampl = 4
phase = 90

[State 821, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = AnimElemTime(7)=5
value = S200,5
volumescale = 255

[State 821, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(8)
trigger2 = !AnimElemTime(11)
trigger3 = !AnimElemTime(14)
trigger4 = !AnimElemTime(17)
value = S310,(Random%2)
volumescale = 255

[State 821, HitAdd]
type = HitAdd
triggerall = !IsHelper
trigger1 = !AnimElemTime(10)
trigger2 = !AnimElemTime(13)
trigger3 = !AnimElemTime(16)
trigger4 = !AnimElemTime(19) 
value = 1

[State 821, Absord]
type = TargetLifeAdd
triggerall = !IsHelper
trigger1 = !AnimElemTime(10)
trigger2 = !AnimElemTime(13)
trigger3 = !AnimElemTime(16)
value = -45
kill = 0
absolute = 1

[State 821, Absord]
type = TargetLifeAdd
triggerall = !IsHelper
trigger1 = !AnimElemTime(19)
value = -45
kill = 1
absolute = 1

[State 821, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(10)
trigger2 = !AnimElemTime(13)
trigger3 = !AnimElemTime(16)
trigger4 = !AnimElemTime(19)
value = S210,(Random%3)
volumescale = 255

[State 821, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(10)
trigger2 = !AnimElemTime(13)
trigger3 = !AnimElemTime(16)
trigger4 = !AnimElemTime(19)
value = S2310,(Random%2)
volumescale = 255

[State 821, Hit Spark]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(10)
trigger2 = !AnimElemTime(13)
trigger3 = !AnimElemTime(16)
trigger4 = !AnimElemTime(19)
anim = 6002
pos = -36,-14
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
trans = Add
ignorehitpause = 1

[State 821, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(10)
trigger2 = !AnimElemTime(13)
trigger3 = !AnimElemTime(16)
trigger4 = !AnimElemTime(19)
anim = 6402
pos = -36,-14
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 821, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = !AnimElemTime(10)
trigger2 = !AnimElemTime(13)
trigger3 = !AnimElemTime(16)
trigger4 = !AnimElemTime(19)
name = "Blood drop"
ID = 7100
stateno = 7100
pos = -36,-14
postype = p1
facing = -1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 821, Shake]
type = EnvShake
triggerall = !IsHelper
trigger1 = !AnimElemTime(10)
trigger2 = !AnimElemTime(13)
trigger3 = !AnimElemTime(16)
trigger4 = !AnimElemTime(19)
time = 4
freq = 120
ampl = 2

[State 821, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 825]
type = S
movetype = H
physics = N
ctrl = 0
sprpriority = 0

[State 825, Screen]
type = ScreenBound
trigger1 = !IsHelper
value = 0
movecamera = 0,0

[State 825, Anim]
type = ChangeAnim2
triggerall = !IsHelper
trigger1 = !Time
value = 825

[State 825, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = Time >= 52
value = 5100

;---------------------------------------------------------------------------
[Statedef 826]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 826, Screen]
type = ScreenBound
trigger1 = !IsHelper
value = 0
movecamera = 0,0

[State 826, Anim]
type = ChangeAnim2
triggerall = !IsHelper
trigger1 = !Time
value = 826

[State 826, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 5110

;---------------------------------------------------------------------------
;Throw - Helmet
[Statedef 830]
type = S
movetype = A
physics = S
anim = 800
ctrl = 0
velset = 0,0
sprpriority = 2

[State 830, Hit]
type = HitDef
triggerall = !IsHelper
trigger1 = Enemy,MoveType != H && Enemy,StateType != A
trigger1 = !Time
attr = S,NT
animtype = Hard
priority = 1,Miss
hitflag = M-
sparkno = -1
guard.sparkno = -1
hitsound = -1
guardsound = -1
p1facing = 1
p2facing = 1
p1stateno = 831
p2stateno = 835
numhits = 0
guard.dist = 0
ground.type = Low
ground.velocity = 0,0
ground.slidetime = 20
ground.hittime = 22
air.velocity = 0,0
air.animtype = Back
air.fall = 0
fall = 1
fall.recover = 0

[State 830, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 831]
type = S
movetype = A
physics = N
anim = 831
ctrl = 0
velset = 0,0
sprpriority = 2

[State 831, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = !AnimElemTime(1)
time = 1
pos = 35,0

[State 831, Hit Spark]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
anim = 6000
pos = 35,-70
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
trans = Add
ignorehitpause = 1

[State 831, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
anim = 6400
pos = 35,-70
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 831, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = !AnimElemTime(3)
name = "Blood drop"
ID = 7100
stateno = 7100
pos = 35,-70
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 831, Shake]
type = EnvShake
triggerall = !Ishelper
trigger1 = !AnimElemTime(3)
time = 8
freq = 120
ampl = 6

[State 831, Absord]
type = TargetLifeAdd
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
value = -40
kill = 0
absolute = 1

[State 831, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = !AnimElemTime(10)
time = 1
pos = 80,0

[State 831, Hit Spark]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(11)
anim = 6001
pos = 80,-92
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
trans = Add
ignorehitpause = 1

[State 831, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(11)
anim = 6401
pos = 80,-92
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 831, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = !AnimElemTime(11)
name = "Blood drop"
ID = 7100
stateno = 7100
pos = 80,-92
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 831, Shake]
type = EnvShake
triggerall = !Ishelper
trigger1 = !AnimElemTime(11)
time = 12
freq = 120
ampl = 6

[State 831, Absord]
type = TargetLifeAdd
triggerall = !IsHelper
trigger1 = !AnimElemTime(11)
value = -60
kill = 0
absolute = 1

[State 831, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = !AnimElemTime(16)
time = 1
pos = 55,0

[State 831, Hit Spark]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(17)
anim = 6002
pos = 55,-80
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
trans = Add
ignorehitpause = 1

[State 831, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(17)
anim = 6402
pos = 55,-80
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 831, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = !AnimElemTime(17)
name = "Blood drop"
ID = 7100
stateno = 7100
pos = 55,-80
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 831, Shake]
type = EnvShake
triggerall = !Ishelper
trigger1 = !AnimElemTime(17)
time = 12
freq = 60
ampl = 6

[State 831, Absord]
type = TargetLifeAdd
triggerall = !IsHelper
trigger1 = !AnimElemTime(17)
value = -80
kill = 1
absolute = 1

[State 831, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
trigger2 = !AnimElemTime(10)
trigger3 = !AnimElemTime(16)
value = S300,(Random%4)
volumescale = 255

[State 831, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
trigger2 = !AnimElemTime(11)
trigger3 = !AnimElemTime(17)
value = S200,(Random%5)
volumescale = 255

[State 831, HitAdd]
type = HitAdd
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
trigger2 = !AnimElemTime(11)
trigger3 = !AnimElemTime(17)
value = 1

[State 831, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 835]
type = S
movetype = H
physics = N
ctrl = 0
sprpriority = 0

[State 835, Screen]
type = ScreenBound
trigger1 = !IsHelper
value = 0
movecamera = 0,0

[State 835, push]
type = PlayerPush
trigger1 = !IsHelper
value = 0

[State 835, Anim]
type = ChangeAnim2
triggerall = !IsHelper
trigger1 = !Time
value = 835

[State 835, Pos]
type = PosAdd
triggerall = !IsHelper
trigger1 = Time = [12,42]
x = -1

[State 835, Pos]
type = PosAdd
triggerall = !IsHelper
trigger1 = Time = [70,90]
x = 1

[State 835, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 5110

;---------------------------------------------------------------------------
;Throw - Knee
[Statedef 840]
type = S
movetype = A
physics = S
anim = 800
ctrl = 0
velset = 0,0
sprpriority = 2

[State 840, Hit]
type = HitDef
triggerall = !IsHelper
trigger1 = Enemy,MoveType != H && Enemy,StateType != A
trigger1 = !Time
attr = S,NT
animtype = Hard
priority = 1,Miss
hitflag = M-
sparkno = -1
guard.sparkno = -1
hitsound = S200,5
guardsound = -1
p1facing = 1
p2facing = 1
p1stateno = 841
p2stateno = 845
numhits = 0
guard.dist = 0
ground.type = Low
ground.velocity = 0,0
ground.slidetime = 20
ground.hittime = 22
air.velocity = 0,0
air.animtype = Back
air.fall = 0
fall = 1
fall.recover = 0

[State 840, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 841]
type = S
movetype = A
physics = N
anim = 841
ctrl = 0
velset = 0,0
sprpriority = 2

[State 841, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = !AnimElemTime(1)
time = 1
pos = 44,0

[State 841, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = AnimElemTime(2)>=0 && AnimElemTime(9)<0
trigger2 = !AnimElemTime(11)
trigger3 = !AnimElemTime(14)
trigger4 = !AnimElemTime(17)
trigger5 = !AnimElemTime(20)
time = 1
pos = 48,0

[State 841, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(1)
trigger2 = !AnimElemTime(8)
trigger3 = !AnimElemTime(11)
trigger4 = !AnimElemTime(14)
trigger5 = !AnimElemTime(17)
trigger6 = !AnimElemTime(20)
value = S300,(Random%4)
volumescale = 255

[State 841, Hit Spark]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
anim = 6002
pos = 44,-86
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
trans = Add
ignorehitpause = 1

[State 841, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
anim = 6400
pos = 44,-86
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 841, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = !AnimElemTime(9)
trigger2 = !AnimElemTime(12)
trigger3 = !AnimElemTime(15)
trigger4 = !AnimElemTime(18)
trigger5 = !AnimElemTime(21)
time = 1
pos = 45,0

[State 841, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = !AnimElemTime(10)
trigger2 = !AnimElemTime(13)
trigger3 = !AnimElemTime(16)
trigger4 = !AnimElemTime(19)
trigger5 = !AnimElemTime(22)
time = 1
pos = 43,0

[State 841, Hit Spark]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(10)
trigger2 = !AnimElemTime(13)
trigger3 = !AnimElemTime(16)
trigger4 = !AnimElemTime(19)
trigger5 = !AnimElemTime(22)
anim = 6003
pos = 50,-70
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
trans = Add
ignorehitpause = 1

[State 841, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(10)
trigger2 = !AnimElemTime(13)
trigger3 = !AnimElemTime(16)
trigger4 = !AnimElemTime(19)
trigger5 = !AnimElemTime(22)
anim = 6401
pos = 50,-70
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 841, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = !AnimElemTime(10)
trigger2 = !AnimElemTime(13)
trigger3 = !AnimElemTime(16)
trigger4 = !AnimElemTime(19)
trigger5 = !AnimElemTime(22)
name = "Blood drop"
ID = 7100
stateno = 7100
pos = 50,-70
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 841, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
trigger2 = !AnimElemTime(10)
trigger3 = !AnimElemTime(13)
trigger4 = !AnimElemTime(16)
trigger5 = !AnimElemTime(19)
trigger6 = !AnimElemTime(22)
value = S200,(Random%5)
volumescale = 255

[State 841, HitAdd]
type = HitAdd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
trigger2 = !AnimElemTime(10)
trigger3 = !AnimElemTime(13)
trigger4 = !AnimElemTime(16)
trigger5 = !AnimElemTime(19)
trigger6 = !AnimElemTime(22)
value = 1

[State 841, Absord]
type = TargetLifeAdd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
trigger2 = !AnimElemTime(10)
trigger3 = !AnimElemTime(13)
trigger4 = !AnimElemTime(16)
trigger5 = !AnimElemTime(19)
trigger6 = !AnimElemTime(22)
value = -20
kill = 0
absolute = 1

[State 841, Shake]
type = EnvShake
triggerall = !Ishelper
trigger1 = !AnimElemTime(2)
time = 8
freq = 120
ampl = 6

[State 841, Shake]
type = EnvShake
triggerall = !Ishelper
trigger1 = !AnimElemTime(10)
trigger2 = !AnimElemTime(13)
trigger3 = !AnimElemTime(16)
trigger4 = !AnimElemTime(19)
trigger5 = !AnimElemTime(22)
time = 4
freq = 120
ampl = 4

[State 841, Dust]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(23)
anim = 6300
pos = 48,3
postype = p1
scale = 0.3,0.3
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
trans = Add
ignorehitpause = 1

[State 841, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(23)
value = S200,5
volumescale = 255

[State 841, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 845]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 845, Screen]
type = ScreenBound
trigger1 = !IsHelper
value = 0
movecamera = 0,0

[State 845, Anim]
type = ChangeAnim2
triggerall = !IsHelper
trigger1 = !Time
value = 845

[State 845, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 5110

;---------------------------------------------------------------------------
;Throw - Neck grab
[Statedef 850]
type = S
movetype = A
physics = S
anim = 800
ctrl = 0
velset = 0,0
sprpriority = 2

[State 850, Hit]
type = HitDef
triggerall = !IsHelper
trigger1 = Enemy,MoveType != H && Enemy,StateType != A
trigger1 = !Time
attr = S,NT
animtype = Hard
priority = 1,Miss
hitflag = M-
sparkno = -1
guard.sparkno = -1
hitsound = S200,5
guardsound = -1
p1facing = 1
p2facing = 1
p1stateno = 851
p2stateno = 855
numhits = 0
guard.dist = 0
ground.type = Low
ground.velocity = 0,0
ground.slidetime = 20
ground.hittime = 22
air.velocity = 0,0
air.animtype = Back
air.fall = 0
fall = 1
fall.recover = 0

[State 850, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 851]
type = S
movetype = A
physics = N
anim = 851
ctrl = 0
velset = 0,0
sprpriority = 2

[State 851, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = !AnimElemTime(1)
time = 1
pos = 47,0

[State 851, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = AnimElemTime(2)>=0 && AnimElemTime(13)<0
time = 1
pos = 30,-110

[State 851, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
trigger2 = !AnimElemTime(4)
trigger3 = !AnimElemTime(6)
trigger4 = !AnimElemTime(8)
trigger5 = !AnimElemTime(10)
trigger6 = !AnimElemTime(14)
value = S300,(Random%4)
volumescale = 255

[State 851, Hit Spark]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
trigger2 = !AnimElemTime(5)
trigger3 = !AnimElemTime(7)
trigger4 = !AnimElemTime(9)
trigger5 = !AnimElemTime(11)
anim = 6002
pos = 30,-110
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
trans = Add
ignorehitpause = 1

[State 851, Blood-1]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
trigger2 = !AnimElemTime(5)
trigger3 = !AnimElemTime(7)
trigger4 = !AnimElemTime(9)
trigger5 = !AnimElemTime(11)
anim = 6400
pos = 30,-110
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 851, Blood-2]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
trigger2 = !AnimElemTime(5)
trigger3 = !AnimElemTime(7)
trigger4 = !AnimElemTime(9)
trigger5 = !AnimElemTime(11)
anim = 6401
pos = 30,-110
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 841, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = !AnimElemTime(3)
trigger2 = !AnimElemTime(5)
trigger3 = !AnimElemTime(7)
trigger4 = !AnimElemTime(9)
trigger5 = !AnimElemTime(11)
name = "Blood drop"
ID = 7100
stateno = 7100
pos = 30,-110
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 851, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
trigger2 = !AnimElemTime(5)
trigger3 = !AnimElemTime(7)
trigger4 = !AnimElemTime(9)
trigger5 = !AnimElemTime(11)
value = S200,(Random%5)
volumescale = 255

[State 851, HitAdd]
type = HitAdd
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
trigger2 = !AnimElemTime(5)
trigger3 = !AnimElemTime(7)
trigger4 = !AnimElemTime(9)
trigger5 = !AnimElemTime(11)
value = 1

[State 851, Absord]
type = TargetLifeAdd
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
trigger2 = !AnimElemTime(5)
trigger3 = !AnimElemTime(7)
trigger4 = !AnimElemTime(9)
trigger5 = !AnimElemTime(11)
value = -20
kill = 0
absolute = 1

[State 851, Shake]
type = EnvShake
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
trigger2 = !AnimElemTime(5)
trigger3 = !AnimElemTime(7)
trigger4 = !AnimElemTime(9)
trigger5 = !AnimElemTime(11)
time = 4
freq = 120
ampl = 2

[State 851, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = !AnimElemTime(13)
time = 1
pos = 28,-110

[State 851, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = !AnimElemTime(14)
time = 1
pos = 32,-110

[State 851, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = !AnimElemTime(15)
time = 1
pos = 34,-20

[State 851, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 855]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 855, Anim]
type = ChangeAnim2
triggerall = !IsHelper
trigger1 = !Time
value = 855

[State 855, Screen]
type = ScreenBound
trigger1 = !IsHelper
value = 0
movecamera = 0,0

[State 855, STS]
type = StateTypeSet
triggerall = !IsHelper
triggerall = Anim = 855
trigger1 = !AnimElemTime(2)
statetype = A

[State 855, Change]
type = ChangeState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 856

[State 855, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !Enemy,Alive || Enemy,Lose
trigger2 = Time> 100
value = 5050

;---------------------------------------------------------------------------
[Statedef 856]
type = A
movetype = H
physics = N
ctrl = 0

[State 856, Anim]
type = ChangeAnim2
triggerall = !IsHelper
trigger1 = !Time
value = 856

[State 856, Velocity]
type = VelSet
triggerall = !IsHelper
trigger1 = !Time
x = -17

[State 856, No scroll]
type = ScreenBound
triggerall = !IsHelper
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 856, Hit wall]
type = ChangeState
triggerall = !IsHelper
trigger1 = BackEdgeBodyDist <= 5
trigger2 = FrontEdgeBodyDist <= 5
value = 857

[State 856, Hit ground]
type = SelfState
triggerall = !IsHelper
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;---------------------------------------------------------------------------
[Statedef 857]
type = A
movetype = H
physics = N
ctrl = 0

[State 857, Absord]
type = LifeAdd
triggerall = !IsHelper
trigger1 = !Time
value = -40
absolute = 1

[State 857, Pos]
type = PosAdd
triggerall = !IsHelper
trigger1 = !Time
x = 5 - BackEdgeBodyDist

[State 857, Stop moving]
type = PosFreeze
trigger1 = !IsHelper
x = 1
y = 1

[State 857, No scroll]
type = ScreenBound
trigger1 = !IsHelper
value = 1
movecamera = 0,1

[State 857, Anim]
type = ChangeAnim2
triggerall = !IsHelper
trigger1 = !Time
value = 857

[State 857, Sound]
type = PlaySnd
triggerall = !IsHelper
trigger1 = Time = 1
value = F7,2
volumescale = 255

[State 857, Effect]
type = Explod
triggerall = !IsHelper
trigger1 = Time = 1
anim = F72
pos = -40,0 
postype = p1
bindtime = -1
removetime = -2
sprpriority = 8
ownpal = 1
trans = Add
ignorehitpause = 1

[State 857, Shake]
type = EnvShake
triggerall = !IsHelper
trigger1 = Time = 1
time = 50
ampl = 5
freq = 100
phase = 30

[State 857, State]
type = ChangeState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 858

;----------------------------------------------------------------------
[Statedef 858]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 858, NHB]
type = NotHitBy
trigger1 = !IsHelper
value = SCA
time = 50

[State 858, Anim 5050]
type = ChangeAnim
triggerall = !IsHelper
trigger1 = !Time
value = 5050

[State 858, Vel Y]
type = VelSet
triggerall = !IsHelper
trigger1 = !Time
y = -5

[State 858, Vel X]
type = VelSet
triggerall = !IsHelper
trigger1 = !Time
x = 1

[State 858, Gravity]
type = VelAdd
triggerall = !IsHelper
trigger1 = Time>0
y = 0.35

[State 858, Hit ground]
type = SelfState
triggerall = !IsHelper
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100