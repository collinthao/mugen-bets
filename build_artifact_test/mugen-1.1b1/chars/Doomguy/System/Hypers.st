;---------------------------------------------------------------------------
;Shotgun
[Statedef 2000]
type = S
movetype = A
physics = S
anim = 1100
ctrl = 0
velset = 0,0
poweradd = -1500
sprpriority = 2
facep2 = 1

[State 2000, Pause]
type = SuperPause
triggerall = !IsHelper
trigger1 = !Time
time = 55
movetime = 55
anim = -1
sound = -1
darken = 0
ignorehitpause = 1

[State 2000, NHB]
type = NotHitBy
triggerall = !IsHelper
triggerall = Var(57)<=4
trigger1 = Time<=60
value = SCA
time = 1
ignorehitpause = 1

[State 2000, NHB]
type = NotHitBy
triggerall = !IsHelper
trigger1 = Var(57)>4
value = SCA
time = 1
ignorehitpause = 1

[State 2000, BGPalFX]
type = BGPalFX
triggerall = !IsHelper
trigger1 = !Time
time = 55
add = -100,-100,-100
sinadd = 20,30,22,70
ignorehitpause = 1

[State 2000, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !Time
value = S3000,0
volumescale = 100

[State 2000, Hyper-Back]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !Time
anim = 6010
pos = 0,-60
postype = p1
scale = 0.4,0.4
bindtime = 1
removetime = -2
sprpriority = -2
ownpal = 1
trans = Add
supermovetime = 55
pausemovetime = 55
ignorehitpause = 1

[State 2000, Hyper-Front]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !Time
anim = 6011
pos = 0,-60
postype = p1
scale = 0.4,0.4
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1
trans = Add
supermovetime = 55
pausemovetime = 55
ignorehitpause = 1

[State 2000, AfterImage]
type = AfterImage
triggerall = !IsHelper
trigger1 = AnimElemTime(1)=1
time = 2

[State 2000, Super C]
type = AfterImageTime
triggerall = !IsHelper
trigger1 = AnimElemTime(2) >= 0 && AnimTime < 0
time = 2

[State 2000, Hit]
type = HitDef
triggerall = !IsHelper
trigger1 = !AnimElemTime(6)
attr = S,NA
animtype = Hard
damage = 0,0
hitflag = MAF
guardflag = MA
sparkno = S6002
guard.sparkno = S6007
sparkxy = -10,-66
pausetime = 0,10
hitsound = S200,(Random%5)
guardsound = S120,(Random%3)
pausetime = 0,10
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = -2.6,0
ground.cornerpush.veloff = 0
guard.hittime = 13
guard.cornerpush.veloff = 0
air.hittime = 36
air.velocity = -2.8,-4.6
air.cornerpush.veloff = 0
airguard.velocity = -3.6,-0.8
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall = 0
fall.recover = 0

[State 2000, Width]
type = Width
triggerall = !IsHelper
trigger1 = Time = [55,58] 
value = 55,8

[State 2000, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
trigger2 = !AnimElemTime(10)
trigger3 = !AnimElemTime(17)
value = S1200+Var(21),1
volumescale = 255

[State 2000, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(8)
trigger2 = !AnimElemTime(15)
value = S1200+Var(21),0
volumescale = 255

[State 2000, Muzzle Flash]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(8)
trigger2 = !AnimElemTime(15)
anim = 6060
pos = 50,-66
postype = p1
scale = 0.25,0.25
facing = 1
bindtime = -1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
removeongethit = 1
ignorehitpause = 1

[State 2000, Helper]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(8)
trigger2 = !AnimElemTime(15)
name = "Bullet-1"
ID = 2001
stateno = 2001
pos = 50,-66
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 2000, Helper]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(8)
trigger2 = !AnimElemTime(15)
name = "Bullet-2"
ID = 2002
stateno = 2001
pos = 50,-66
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 2000, Helper]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(8)
trigger2 = !AnimElemTime(15)
name = "Bullet-3"
ID = 2003
stateno = 2001
pos = 50,-66
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 2000, Helper]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(8)
trigger2 = !AnimElemTime(15)
name = "Bullet-4"
ID = 2004
stateno = 2001
pos = 50,-66
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 2000, Helper]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(8)
trigger2 = !AnimElemTime(15)
name = "Bullet-5"
ID = 2005
stateno = 2001
pos = 50,-66
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 2000, Shell]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(11)
trigger2 = !AnimElemTime(18)
name = "Shell"
ID = 1081
stateno = 1081
pos = 6,-72
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 2000, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Super Shotgun
[Statedef 2050]
type = S
movetype = A
physics = S
anim = 1200
ctrl = 0
velset = 0,0
poweradd = -1500
sprpriority = 2
facep2 = 1

[State 2050, Pause]
type = SuperPause
triggerall = !IsHelper
trigger1 = !Time
time = 55
movetime = 55
anim = -1
sound = -1
darken = 0
ignorehitpause = 1

[State 2050, NHB]
type = NotHitBy
triggerall = !IsHelper
triggerall = Var(57)<=4
trigger1 = Time<=60
value = SCA
time = 1
ignorehitpause = 1

[State 2050, NHB]
type = NotHitBy
triggerall = !IsHelper
trigger1 = Var(57)>4
value = SCA
time = 1
ignorehitpause = 1

[State 2050, BGPalFX]
type = BGPalFX
triggerall = !IsHelper
trigger1 = !Time
time = 55
add = -100,-100,-100
sinadd = 20,30,22,70
ignorehitpause = 1

[State 2050, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !Time
value = S3000,0
volumescale = 100

[State 2050, Hyper-Back]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !Time
anim = 6010
pos = 0,-60
postype = p1
scale = 0.4,0.4
bindtime = 1
removetime = -2
sprpriority = -2
ownpal = 1
trans = Add
supermovetime = 55
pausemovetime = 55
ignorehitpause = 1

[State 2050, Hyper-Front]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !Time
anim = 6011
pos = 0,-60
postype = p1
scale = 0.4,0.4
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1
trans = Add
supermovetime = 55
pausemovetime = 55
ignorehitpause = 1

[State 2050, AfterImage]
type = AfterImage
triggerall = !IsHelper
trigger1 = AnimElemTime(1)=1
time = 2

[State 2050, Super C]
type = AfterImageTime
triggerall = !IsHelper
trigger1 = AnimElemTime(2) >= 0 && AnimTime < 0
time = 2

[State 2050, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = AnimElemTime(1)=20
value = S1300+Var(21),1
volumescale = 255

[State 2050, Hit]
type = HitDef
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
attr = S,NA
animtype = Hard
damage = 0,0
hitflag = MAF
guardflag = MA
sparkno = S6002
guard.sparkno = S6007
sparkxy = -10,-66
pausetime = 0,10
hitsound = S200,(Random%5)
guardsound = S120,(Random%3)
pausetime = 0,10
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = -2.6,0
ground.cornerpush.veloff = 0
guard.hittime = 13
guard.cornerpush.veloff = 0
air.hittime = 12
air.velocity = -2.8,-4.6
air.cornerpush.veloff = 0
airguard.velocity = -3.6,-0.8
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall = 0
fall.recover = 0

[State 2050, Width]
type = Width
triggerall = !IsHelper
trigger1 = Time = [55,58] 
value = 55,8

[State 2050, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
value = S1300+Var(21),0
volumescale = 255

[State 2050, Muzzle Flash]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
anim = 6060
pos = 58,-65
postype = p1
scale = 0.25,0.25
facing = 1
bindtime = -1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
removeongethit = 1
ignorehitpause = 1

[State 2050, Helper]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
name = "Bullet-1"
ID = 2002
stateno = 2002
pos = 50,-65
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 2050, Helper]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
name = "Bullet-2"
ID = 2002
stateno = 2002
pos = 50,-65
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 2050, Helper]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
name = "Bullet-3"
ID = 2002
stateno = 2002
pos = 50,-65
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 2050, Helper]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
name = "Bullet-4"
ID = 2002
stateno = 2002
pos = 50,-65
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 2050, Helper]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
name = "Bullet-5"
ID = 2002
stateno = 2002
pos = 50,-65
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 2050, Helper]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
name = "Bullet-6"
ID = 2002
stateno = 2002
pos = 50,-65
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 2050, Helper]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
name = "Bullet-7"
ID = 2002
stateno = 2002
pos = 50,-65
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 2050, Helper]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
name = "Bullet-8"
ID = 2002
stateno = 2002
pos = 50,-65
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 2050, Helper]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
name = "Bullet-9"
ID = 2002
stateno = 2002
pos = 50,-65
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 2050, Helper]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
name = "Bullet-10"
ID = 2002
stateno = 2002
pos = 50,-65
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 2050, Shell]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(7)
name = "Shell-1"
ID = 1081
stateno = 1081
pos = 1,-77
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 2050, Shell]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(7)
name = "Shell-2"
ID = 1081
stateno = 1081
pos = 3,-75
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 2050, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Double Pistols
[Statedef 2100]
type = S
movetype = A
physics = S
anim = 1300
ctrl = 0
velset = 0,0
poweradd = -2000
sprpriority = 2
facep2 = 1

[State 2100, Pause]
type = SuperPause
triggerall = !IsHelper
trigger1 = !Time
time = 55
movetime = 55
anim = -1
sound = -1
darken = 0
ignorehitpause = 1

[State 2100, NHB]
type = NotHitBy
triggerall = !IsHelper
triggerall = Var(57)<=4
trigger1 = Time<=60
value = SCA
time = 1
ignorehitpause = 1

[State 2100, NHB]
type = NotHitBy
triggerall = !IsHelper
trigger1 = Var(57)>4
value = SCA
time = 1
ignorehitpause = 1

[State 2100, BGPalFX]
type = BGPalFX
triggerall = !IsHelper
trigger1 = !Time
time = 55
add = -100,-100,-100
sinadd = 20,30,22,70
ignorehitpause = 1

[State 2100, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !Time
value = S3000,1
volumescale = 100

[State 2100, Hyper-Back]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !Time
anim = 6010
pos = 0,-60
postype = p1
scale = 0.4,0.4
bindtime = 1
removetime = -2
sprpriority = -2
ownpal = 1
trans = Add
supermovetime = 55
pausemovetime = 55
ignorehitpause = 1

[State 2100, Hyper-Front]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !Time
anim = 6011
pos = 0,-60
postype = p1
scale = 0.4,0.4
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1
trans = Add
supermovetime = 55
pausemovetime = 55
ignorehitpause = 1

[State 2100, Width]
type = Width
triggerall = !IsHelper
trigger1 = Time = [0,142] 
value = 35,8

[State 2100, AfterImage]
type = AfterImage
triggerall = !IsHelper
trigger1 = AnimElemTime(1) = 1
time = 2

[State 2100, Super C]
type = AfterImageTime
triggerall = !IsHelper
trigger1 = AnimElemTime(2) >= 1 && AnimTime < 0
time = 2

[State 2100, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = AnimElemTime(1)=20
value = S1000+Var(21),1
volumescale = 255

[State 2100, Muzzle Flash-1]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
trigger2 = !AnimElemTime(7)
trigger3 = !AnimElemTime(9)
trigger4 = !AnimElemTime(11)
trigger5 = !AnimElemTime(13)
trigger6 = !AnimElemTime(15)
anim = 6061
pos = 38,-100
postype = p1
scale = 0.25,0.25
facing = 1
bindtime = -1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
removeongethit = 1
ignorehitpause = 1

[State 2100, Muzzle Flash-2]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
trigger2 = !AnimElemTime(7)
trigger3 = !AnimElemTime(9)
trigger4 = !AnimElemTime(11)
trigger5 = !AnimElemTime(13)
trigger6 = !AnimElemTime(15)
anim = 6061
pos = 62,-104
postype = p1
scale = 0.25,0.25
facing = 1
bindtime = -1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
removeongethit = 1
ignorehitpause = 1

[State 2100, Helper]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
trigger2 = !AnimElemTime(7)
trigger3 = !AnimElemTime(9)
trigger4 = !AnimElemTime(11)
trigger5 = !AnimElemTime(13)
trigger6 = !AnimElemTime(15)
name = "Bullet-1"
ID = 2101
stateno = 2101
pos = 38,-96
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 2100, Helper]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
trigger2 = !AnimElemTime(7)
trigger3 = !AnimElemTime(9)
trigger4 = !AnimElemTime(11)
trigger5 = !AnimElemTime(13)
trigger6 = !AnimElemTime(15)
name = "Bullet-2"
ID = 2102
stateno = 2102
pos = 62,-100
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 2100, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
trigger2 = !AnimElemTime(7)
trigger3 = !AnimElemTime(9)
trigger4 = !AnimElemTime(11)
trigger5 = !AnimElemTime(13)
trigger6 = !AnimElemTime(15)
value = S1000+Var(21),0
volumescale = 255

[State 2000, Shell]
type = Helper
triggerall = !IsHelper
trigger1 = AnimElemTime(5)=1
trigger2 = AnimElemTime(7)=1
trigger3 = AnimElemTime(9)=1
trigger4 = AnimElemTime(11)=1
trigger5 = AnimElemTime(13)=1
trigger6 = AnimElemTime(15)=1
name = "Shell-1"
ID = 1081
stateno = 1081
pos = 22,-98
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 2000, Shell]
type = Helper
triggerall = !IsHelper
trigger1 = AnimElemTime(5)=1
trigger2 = AnimElemTime(7)=1
trigger3 = AnimElemTime(9)=1
trigger4 = AnimElemTime(11)=1
trigger5 = AnimElemTime(13)=1
trigger6 = AnimElemTime(15)=1
name = "Shell-2"
ID = 1082
stateno = 1081
pos = 46,-102
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 2100, End]
type = SelfState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Minigun
[Statedef 2200]
type = S
movetype = A
physics = S
anim = 2000
ctrl = 0
velset = 0,0
poweradd = -2000
sprpriority = 2
facep2 = 1

[State 2200, Pause]
type = SuperPause
triggerall = !IsHelper
trigger1 = !Time
time = 125
movetime = 125
anim = -1
sound = -1
darken = 0
ignorehitpause = 1

[State 2200, NHB]
type = NotHitBy
trigger1 = !IsHelper
value = SCA
time = 1
ignorehitpause = 1

[State 2200, BGPalFX]
type = BGPalFX
triggerall = !IsHelper
trigger1 = !Time
time = 125
add = -100,-100,-100
sinadd = 20,30,22,70
ignorehitpause = 1

[State 2200, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !Time
value = S3000,2
volumescale = 100

[State 2200, Hyper-Back]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !Time
anim = 6020
pos = 0,-60
postype = p1
scale = 0.4,0.4
bindtime = 1
removetime = -2
sprpriority = -2
ownpal = 1
trans = Add
supermovetime = 55
pausemovetime = 55
ignorehitpause = 1

[State 2200, Hyper-Front]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !Time
anim = 6021
pos = 0,-60
postype = p1
scale = 0.4,0.4
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1
trans = Add
supermovetime = 55
pausemovetime = 55
ignorehitpause = 1

[State 2200, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)<3
trigger1 = !AnimElemTime(2)
value = S1400,3
channel = 2
volumescale = 255

[State 2200, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=3
trigger1 = !AnimElemTime(2)
value = S1403,3
channel = 2
volumescale = 255

[State 2200, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)>3
trigger1 = !AnimElemTime(2)
value = S1405,3
channel = 2
volumescale = 255

[State 2200, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)<2
trigger1 = !AnimElemTime(4)
value = S1400,0
channel = 3
volumescale = 255

[State 2200, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=2 || Var(21)=5
trigger1 = !AnimElemTime(4)
value = S1402,0
channel = 3
volumescale = 255

[State 2200, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=3
trigger1 = !AnimElemTime(4)
value = S1403,0
channel = 3
volumescale = 255

[State 2200, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=4
trigger1 = !AnimElemTime(4)
value = S1404,0
channel = 3
volumescale = 255

[State 2200, Hit]
type = HitDef
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
attr = S,NA
animtype = Hard
damage = 50,10
hitflag = MAF
guardflag = MA
sparkno = S6002
guard.sparkno = S6007
sparkxy = -10,-55
pausetime = 0,10
hitsound = S200,(Random%5)
guardsound = S120,(Random%3)
pausetime = 0,10
ground.type = High
ground.hittime = 36
ground.slidetime = 36
ground.velocity = -4.8,0
ground.cornerpush.veloff = 0
guard.hittime = 13
guard.cornerpush.veloff = 0
air.hittime = 36
air.velocity = -4.8,-11.1
air.cornerpush.veloff = 0
airguard.velocity = -3.6,-0.8
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall = 0
fall.recover = 0

[State 2200, Width]
type = Width
triggerall = !IsHelper
trigger1 = Time = [125,130] 
value = 66,8

[State 2200, Change]
type = SelfState
triggerall = !Ishelper
trigger1 = !AnimTime
value = 2201
ctrl = 0

;---------------------------------------------------------------------------
;Minigun - Shoots
[Statedef 2201]
type = S
movetype = A
physics = S
anim = 2001
ctrl = 0
velset = 0,0
sprpriority = 2

[State 2201, NHB]
type = NotHitBy
triggerall = !IsHelper
trigger1 = Var(57)>4
value = SCA
time = 1
ignorehitpause = 1

[State 2201, Width]
type = Width
triggerall = !Ishelper
trigger1 = Time = [0,120] 
value = 66,8

[State 2201, Stop]
type = StopSnd
triggerall = !IsHelper
trigger1 = !Time
channel = 3

[State 2201, PlaySnd]
type = PlaySnd
triggerall = !Ishelper
trigger1 = !(Time%5)
value = S1400+Var(21),2
volumescale = 255

[State 2201, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = (Time%5) = 1
name = "Bullet"
ID = 2203
stateno = 2203
pos = 66,-55
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 2201, Shell]
type = Helper
triggerall = !Ishelper
trigger1 = (Time%5) = 1
name = "Shell-1"
ID = 1081
stateno = 1081
pos = 22,-60
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 2201, Muzzle Flash]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !NumExplod(6070)
anim = 6070
ID = 6070
pos = 66,-55
postype = p1
scale = 0.25,0.25
facing = 1
bindtime = -1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
removeongethit = 1
ignorehitpause = 1

[State 2201, Change]
type = SelfState
triggerall = !Ishelper
trigger1 = Time >= 120
value = 2202
ctrl = 0

;---------------------------------------------------------------------------
;Minigun - End
[Statedef 2202]
type = S
movetype = A
physics = S
anim = 2002
ctrl = 0
velset = 0,0
sprpriority = 2

[State 2202, Remove]
type = RemoveExplod
triggerall = !IsHelper
trigger1 = NumExplod(6070)
id = 6070

[State 2202, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)<2
trigger1 = !AnimElemTime(1)
value = S1400,1
volumescale = 255

[State 2202, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=2 || Var(21)=5
trigger1 = !AnimElemTime(1)
value = S1402,1
volumescale = 255

[State 2202, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=3
trigger1 = !AnimElemTime(1)
value = S1403,1
volumescale = 255

[State 2202, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=4
trigger1 = !AnimElemTime(1)
value = S1404,1
volumescale = 255

[State 2202, End]
type = SelfState
triggerall = !Ishelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Rocket launcher
[Statedef 2300]
type = S
movetype = A
physics = S
anim = 2100
ctrl = 0
velset = 0,0
poweradd = -2500
sprpriority = 2
facep2 = 1

[State 2300, Pause]
type = SuperPause
triggerall = !IsHelper
trigger1 = !Time
time = 60
movetime = 60
anim = -1
sound = -1
darken = 0
ignorehitpause = 1

[State 2300, NHB]
type = NotHitBy
triggerall = !IsHelper
triggerall = Var(57)<=4
trigger1 = Time<=60
value = SCA
time = 1
ignorehitpause = 1

[State 2300, NHB]
type = NotHitBy
triggerall = !IsHelper
trigger1 = Var(57)>4
value = SCA
time = 1
ignorehitpause = 1

[State 2300, BGPalFX]
type = BGPalFX
triggerall = !IsHelper
trigger1 = !Time
time = 60
add = -100,-100,-100
sinadd = 20,30,22,70
ignorehitpause = 1

[State 2300, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !Time
value = S3000,2
volumescale = 100

[State 2300, Hyper-Back]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !Time
anim = 6020
pos = 0,-60
postype = p1
scale = 0.4,0.4
bindtime = 1
removetime = -2
sprpriority = -2
ownpal = 1
trans = Add
supermovetime = 55
pausemovetime = 55
ignorehitpause = 1

[State 2300, Hyper-Front]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !Time
anim = 6021
pos = 0,-60
postype = p1
scale = 0.4,0.4
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1
trans = Add
supermovetime = 55
pausemovetime = 55
ignorehitpause = 1

[State 2300, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = AnimElemTime(1)=20
value = S1500,0
volumescale = 255

[State 2300, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)<=2
trigger1 = !AnimElemTime(4)
value = S1500,1
volumescale = 255

[State 2300, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)>2
trigger1 = !AnimElemTime(4)
value = S1500+Var(21),1
volumescale = 255

[State 2300, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = !AnimElemTime(4)
name = "Rocket"
ID = 2301
stateno = 2301
pos = 65,-83
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 2300, Smoke Front]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
anim = 6600
pos = 65,-83
postype = p1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
removeongethit = 1
ignorehitpause = 1

[State 2300, Smoke Back]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
anim = 6610
pos = -40,-83
postype = p1
bindtime = 1
removetime = -2
sprpriority = -2
ownpal = 1
trans = Add
removeongethit = 1
ignorehitpause = 1

[State 2300, Width]
type = Width
triggerall = !Ishelper
trigger1 = Time = [60,110] 
value = 65,8

[State 2300, End]
type = SelfState
triggerall = !Ishelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Plasma rifle
[Statedef 2400]
type = S
movetype = A
physics = S
anim = 2200
ctrl = 0
velset = 0,0
poweradd = -2500
sprpriority = 2
facep2 = 1

[State 2400, Pause]
type = SuperPause
triggerall = !IsHelper
trigger1 = !Time
time = 60
movetime = 60
anim = -1
sound = -1
darken = 0
ignorehitpause = 1

[State 2400, NHB]
type = NotHitBy
triggerall = !IsHelper
triggerall = Var(57)<=4
trigger1 = Time<=60
value = SCA
time = 1
ignorehitpause = 1

[State 2400, NHB]
type = NotHitBy
triggerall = !IsHelper
trigger1 = Var(57)>4
value = SCA
time = 1
ignorehitpause = 1

[State 2400, BGPalFX]
type = BGPalFX
triggerall = !IsHelper
trigger1 = !Time
time = 60
add = -100,-100,-100
sinadd = 20,30,22,70
ignorehitpause = 1

[State 2400, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !Time
value = S3000,3
volumescale = 100

[State 2400, Hyper-Back]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !Time
anim = 6020
pos = 0,-60
postype = p1
scale = 0.4,0.4
bindtime = 1
removetime = -2
sprpriority = -2
ownpal = 1
trans = Add
supermovetime = 55
pausemovetime = 55
ignorehitpause = 1

[State 2400, Hyper-Front]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !Time
anim = 6021
pos = 0,-60
postype = p1
scale = 0.4,0.4
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1
trans = Add
supermovetime = 55
pausemovetime = 55
ignorehitpause = 1

[State 2400, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)<2
trigger1 = AnimElemTime(1)=20
value = S1600,0
volumescale = 255

[State 2400, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=[2,4]
trigger1 = AnimElemTime(1)=20
value = S1602,0
volumescale = 255

[State 2400, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=5
trigger1 = AnimElemTime(1)=20
value = S1605,0
volumescale = 255

[State 2400, Charge]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = AnimElemTime(3)=5
anim = 2210
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1
trans = None
supermovetime = 10
pausemovetime = 10
removeongethit = 1
ignorehitpause = 1

[State 2400, Heat]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = AnimElemTime(4)=5
anim = 2220
pos = 65,-66
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
ownpal = 1
trans = Add
removeongethit = 1
ignorehitpause = 1

[State 2400, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = AnimElemTime(4)=5
trigger2 = AnimElemTime(4)=15
trigger3 = AnimElemTime(4)=25
trigger4 = AnimElemTime(4)=35
trigger5 = AnimElemTime(4)=45
trigger6 = AnimElemTime(4)=55
trigger7 = AnimElemTime(4)=65
trigger8 = AnimElemTime(4)=75
trigger9 = AnimElemTime(4)=85
name = "Plasma"
ID = 2401
stateno = 2401
pos = 65,-66
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 2400, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = AnimElemTime(4)=5
trigger2 = AnimElemTime(4)=15
trigger3 = AnimElemTime(4)=25
trigger4 = AnimElemTime(4)=35
trigger5 = AnimElemTime(4)=45
trigger6 = AnimElemTime(4)=55
trigger7 = AnimElemTime(4)=65
trigger8 = AnimElemTime(4)=75
trigger9 = AnimElemTime(4)=85
value = S1600+Var(21),1
volumescale = 255

[State 2400, Width]
type = Width
triggerall = !Ishelper
trigger1 = Time = [60,160] 
value = 70,8

[State 2400, End]
type = SelfState
triggerall = !Ishelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;BFG9000
[Statedef 2500]
type = S
movetype = A
physics = S
anim = 2300
ctrl = 0
velset = 0,0
poweradd = -3000
sprpriority = 2
facep2 = 1

[State 2500, Pause]
type = SuperPause
triggerall = !IsHelper
trigger1 = !Time
time = 120
movetime = 120
anim = -1
sound = -1
darken = 0
ignorehitpause = 1

[State 2500, NHB]
type = NotHitBy
triggerall = !IsHelper
triggerall = Var(57)<=4
trigger1 = Time<=120
value = SCA
time = 1
ignorehitpause = 1

[State 2500, NHB]
type = NotHitBy
triggerall = !IsHelper
trigger1 = Var(57)>4
value = SCA
time = 1
ignorehitpause = 1

[State 2500, BGPalFX]
type = BGPalFX
triggerall = !IsHelper
trigger1 = !Time
time = 120
add = -100,-100,-100
sinadd = 20,30,22,70
ignorehitpause = 1

[State 2500, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !Time
value = S3000,3
volumescale = 100

[State 2500, Hyper-Back]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !Time
anim = 6030
pos = 0,-60
postype = p1
scale = 0.4,0.4
bindtime = 1
removetime = -2
sprpriority = -2
ownpal = 1
trans = Add
supermovetime = 55
pausemovetime = 55
ignorehitpause = 1

[State 2500, Hyper-Front]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !Time
anim = 6031
pos = 0,-60
postype = p1
scale = 0.4,0.4
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1
trans = Add
supermovetime = 55
pausemovetime = 55
ignorehitpause = 1

[State 2500, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)<2
trigger1 = AnimElemTime(1)=20
value = S1700,0
volumescale = 255

[State 2500, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=[2,4]
trigger1 = AnimElemTime(1)=20
value = S1700+Var(21),0
volumescale = 255

[State 2500, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=5
trigger1 = AnimElemTime(1)=20
value = S1704,0
volumescale = 255

[State 2500, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)<2
trigger1 = AnimElemTime(3)=15
value = S1700,1
channel = 2
volumescale = 255

[State 2500, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)>=2
trigger1 = AnimElemTime(3)=15
value = S1700+Var(21),1
channel = 2
volumescale = 255

[State 2500, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)<2
trigger1 = !AnimElemTime(4)
value = S1700,2
channel = 2
volumescale = 255

[State 2500, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)>=2
trigger1 = !AnimElemTime(4)
value = S1700+Var(21),2
channel = 2
volumescale = 255

[State 2500, Energy]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
anim = 6210
pos = 65,-65
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
ownpal = 1
trans = Add
removeongethit = 1
supermovetime = 30
pausemovetime = 30
ignorehitpause = 1

[State 2500, Enbergy]
type = Helper
triggerall = !Ishelper
trigger1 = !AnimElemTime(3)
name = "BFG charge"
ID = 2501
stateno = 2501
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 75
pausemovetime = 75
ignorehitpause = 1

[State 2500, Enbergy]
type = Helper
triggerall = !Ishelper
trigger1 = !AnimElemTime(4)
name = "BFG shot"
ID = 2502
stateno = 2502
pos = 65,-65
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 2500, End]
type = SelfState
triggerall = !Ishelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Flamer
[Statedef 2600]
type = S
movetype = A
physics = S
anim = 2500
ctrl = 0
velset = 0,0
poweradd = -3000
sprpriority = 2
facep2 = 1

[State 2600, Pause]
type = SuperPause
triggerall = !IsHelper
trigger1 = !Time
time = 60
movetime = 60
anim = -1
sound = -1
darken = 0
ignorehitpause = 1

[State 2600, NHB]
type = NotHitBy
triggerall = !IsHelper
triggerall = Var(57)<=4
trigger1 = Time<=60
value = SCA
time = 1
ignorehitpause = 1

[State 2600, NHB]
type = NotHitBy
triggerall = !IsHelper
trigger1 = Var(57)>4
value = SCA
time = 1
ignorehitpause = 1

[State 2600, BGPalFX]
type = BGPalFX
triggerall = !IsHelper
trigger1 = !Time
time = 120
add = -100,-100,-100
sinadd = 20,30,22,70
ignorehitpause = 1

[State 2600, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !Time
value = S3000,4
volumescale = 100

[State 2600, Hyper-Back]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !Time
anim = 6030
pos = 0,-60
postype = p1
scale = 0.4,0.4
bindtime = 1
removetime = -2
sprpriority = -2
ownpal = 1
trans = Add
supermovetime = 55
pausemovetime = 55
ignorehitpause = 1

[State 2600, Hyper-Front]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !Time
anim = 6031
pos = 0,-60
postype = p1
scale = 0.4,0.4
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1
trans = Add
supermovetime = 55
pausemovetime = 55
ignorehitpause = 1

[State 2600, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)<2
trigger1 = AnimElemTime(1)=20
value = S1800,0
channel = 2
volumescale = 255

[State 2600, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)>=2
trigger1 = AnimElemTime(1)=20
value = S1802,0
channel = 2
volumescale = 255

[State 2600, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)<2
trigger1 = !AnimElemTime(4)
value = S1800,1
channel = 2
volumescale = 255

[State 2600, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)>=2
trigger1 = !AnimElemTime(4)
value = S1802,1
channel = 2
volumescale = 255

[State 2600, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)>=2
trigger1 = !AnimElemTime(4)
value = S1802,3
channel = 3
volumescale = 255

[State 2600, Flame]
type = Helper
triggerall = !Ishelper
triggerall = Time = [60,180]
trigger1 = Time%3=1
name = "Flame"
ID = 2601
stateno = 2601
pos = 62,-65
postype = p1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 2600, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)<2
trigger1 = !AnimElemTime(5)
value = S1800,2
channel = 2
volumescale = 255

[State 2600, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)>=2
trigger1 = !AnimElemTime(5)
value = S1802,2
channel = 3
volumescale = 255

[State 2600, End]
type = SelfState
triggerall = !Ishelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Revenant launcher
[Statedef 2700]
type = S
movetype = A
physics = S
anim = 2400
ctrl = 0
velset = 0,0
poweradd = -3000
sprpriority = 2
facep2 = 1

[State 2700, Pause]
type = SuperPause
triggerall = !IsHelper
trigger1 = !Time
time = 60
movetime = 60
anim = -1
sound = -1
darken = 0
ignorehitpause = 1

[State 2700, NHB]
type = NotHitBy
triggerall = !IsHelper
triggerall = Var(57)<=4
trigger1 = Time<=60
value = SCA
time = 1
ignorehitpause = 1

[State 2700, NHB]
type = NotHitBy
triggerall = !IsHelper
trigger1 = Var(57)>4
value = SCA
time = 1
ignorehitpause = 1

[State 2700, BGPalFX]
type = BGPalFX
triggerall = !IsHelper
trigger1 = !Time
time = 120
add = -100,-100,-100
sinadd = 20,30,22,70
ignorehitpause = 1

[State 2700, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !Time
value = S3000,4
volumescale = 100

[State 2700, Hyper-Back]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !Time
anim = 6030
pos = 0,-60
postype = p1
scale = 0.4,0.4
bindtime = 1
removetime = -2
sprpriority = -2
ownpal = 1
trans = Add
supermovetime = 55
pausemovetime = 55
ignorehitpause = 1

[State 2700, Hyper-Front]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !Time
anim = 6031
pos = 0,-60
postype = p1
scale = 0.4,0.4
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1
trans = Add
supermovetime = 55
pausemovetime = 55
ignorehitpause = 1

[State 2700, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = AnimElemTime(1)=10
value = S1900,0
volumescale = 255

[State 2700, Muzzle flash right]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = AnimElemTime(3)=4
trigger2 = AnimElemTime(3)=12
trigger3 = AnimElemTime(3)=20
trigger4 = AnimElemTime(3)=28
trigger5 = AnimElemTime(3)=36
trigger6 = AnimElemTime(3)=44
anim = 6090
pos = 2,-95
postype = p1
scale = 0.25,0.25
bindtime = -1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
removeongethit = 1
ignorehitpause = 1

[State 2700, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = AnimElemTime(3)=4
trigger2 = AnimElemTime(3)=12
trigger3 = AnimElemTime(3)=20
trigger4 = AnimElemTime(3)=28
trigger5 = AnimElemTime(3)=36
trigger6 = AnimElemTime(3)=44
name = "Right rocket"
ID = 2701
stateno = 2701
pos = 1,-95
postype = p1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 2700, Muzzle flash left]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = AnimElemTime(3)=8
trigger2 = AnimElemTime(3)=16
trigger3 = AnimElemTime(3)=24
trigger4 = AnimElemTime(3)=32
trigger5 = AnimElemTime(3)=40
trigger6 = AnimElemTime(3)=48
anim = 6090
pos = 16,-98
postype = p1
scale = 0.25,0.25
bindtime = -1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
removeongethit = 1
ignorehitpause = 1

[State 2700, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = AnimElemTime(3)=8
trigger2 = AnimElemTime(3)=16
trigger3 = AnimElemTime(3)=24
trigger4 = AnimElemTime(3)=32
trigger5 = AnimElemTime(3)=40
trigger6 = AnimElemTime(3)=48
name = "Left rocket"
ID = 2702
stateno = 2701
pos = 15,-98
postype = p1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 2700, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = AnimElemTime(3)=4
trigger2 = AnimElemTime(3)=8
trigger3 = AnimElemTime(3)=12
trigger4 = AnimElemTime(3)=16
trigger5 = AnimElemTime(3)=20
trigger6 = AnimElemTime(3)=24
trigger7 = AnimElemTime(3)=28
trigger8 = AnimElemTime(3)=32
trigger9 = AnimElemTime(3)=36
trigger10 = AnimElemTime(3)=40
trigger11 = AnimElemTime(3)=44
trigger12 = AnimElemTime(3)=48
value = S1900,1+(Random%3)
volumescale = 255

[State 2700, End]
type = SelfState
triggerall = !Ishelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Chainsaw
[Statedef 2800]
type = S
movetype = A
physics = S
anim = 2600
ctrl = 0
velset = 0,0
poweradd = -2000
sprpriority = 2
facep2 = 1

[State 2800, Pause]
type = SuperPause
triggerall = !IsHelper
trigger1 = !Time
time = 60
movetime = 60
anim = -1
sound = -1
darken = 0
ignorehitpause = 1

[State 2800, NHB]
type = NotHitBy
trigger1 = !IsHelper
value = SCA
time = 1
ignorehitpause = 1

[State 2800, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !Time
value = S3000,1
volumescale = 100

[State 2800, Hyper-Back]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !Time
anim = 6010
pos = 0,-60
postype = p1
scale = 0.4,0.4
bindtime = 1
removetime = -2
sprpriority = -2
ownpal = 1
trans = Add
supermovetime = 55
pausemovetime = 55
ignorehitpause = 1

[State 2800, Hyper-Front]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !Time
anim = 6011
pos = 0,-60
postype = p1
scale = 0.4,0.4
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1
trans = Add
supermovetime = 55
pausemovetime = 55
ignorehitpause = 1

[State 2800, BGPalFX]
type = BGPalFX
triggerall = !IsHelper
trigger1 = !Time
time = 55
add = -100,-100,-100
sinadd = 20,30,22,70
ignorehitpause = 1

[State 2800, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)<2
trigger1 = !AnimElemTime(1)
value = S2000,0
channel = 2
volumescale = 255

[State 2800, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=2
trigger1 = !AnimElemTime(1)
value = S2002,0
channel = 2
volumescale = 255

[State 2800, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=3
trigger1 = !AnimElemTime(1)
value = S2003,0
channel = 2
volumescale = 255

[State 2800, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)>3
trigger1 = !AnimElemTime(1)
value = S2004,0
channel = 2
volumescale = 255

[State 2800, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)<2
trigger1 = !AnimElemTime(1)
value = S2000,5
channel = 3
volumescale = 255

[State 2800, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)>=2
trigger1 = !AnimElemTime(1)
value = S2002,4
channel = 3
volumescale = 255

[State 2800, Width]
type = Width
triggerall = !IsHelper
trigger1 = Time = [55,60] 
value = 55,8

[State 2800, End]
type = SelfState
triggerall = !Ishelper
trigger1 = !AnimTime
value = 2801

;---------------------------------------------------------------------------
[Statedef 2801]
type = S
movetype = A
physics = N
anim = 2601
ctrl = 0
velset = 0,0
sprpriority = 2

[State 2801, Vel]
type = VelSet
triggerall = !IsHelper
trigger1 = !Time
x = 6

[State 2801, Push]
type = PlayerPush
triggerall = !IsHelper
trigger1 = Time>0
value = 0

[State 2801, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(22)=0
trigger1 = Time>=0 && (Time%15)=1
value = S20,(Random%6)
volumescale = 255

[State 2801, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(22)=1
trigger1 = Time>=0 && (Time%15)=1
value = S21,(Random%6)
volumescale = 255

[State 2801, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(22)=2
trigger1 = Time>=0 && (Time%15)=1
value = S22,(Random%6)
volumescale = 255

[State 2801, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(22)=3
trigger1 = Time>=0 && (Time%15)=1
value = S23,(Random%6)
volumescale = 255

[State 2801, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(22)=4
trigger1 = Time>=0 && (Time%15)=1
value = S24,(Random%6)
volumescale = 255

[State 2801, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(22)=5
trigger1 = Time>=0 && (Time%15)=1
value = S25,(Random%5)
volumescale = 255

[State 2801, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(22)=6
trigger1 = Time>=0 && (Time%15)=1
value = S26,(Random%4)
volumescale = 255

[State 2801, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(22)=7
trigger1 = Time>=0 && (Time%15)=1
value = S27,(Random%6)
volumescale = 255

[State 2801, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)<2
trigger1 = !Time
value = S2000,1
channel = 2
volumescale = 255

[State 2801, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=2
trigger1 = Time>=0 && Time%92=0
value = S2002,2
channel = 2
volumescale = 255

[State 2801, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=3
trigger1 = !Time
value = S2003,1
channel = 2
volumescale = 255

[State 2801, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)>3
trigger1 = Time>=0 && Time%92=0
value = S2004,2
channel = 2
volumescale = 255

[State 2801, Hit]
type = HitDef
triggerall = !IsHelper
trigger1 = !Time && !NumTarget
attr = S,HT
animtype = Hard
priority = 5,Miss
hitflag = M-
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = -1
guardsound = -1
p1facing = 1
p2facing = 1
p1stateno = 2804
p2stateno = 2805
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

[State 2801, Self]
type = SelfState
triggerall = !IsHelper
trigger1 = FrontEdgeBodyDist <= 5
value = 2802

[State 2801, Self]
type = SelfState
triggerall = !IsHelper
trigger1 = MoveGuarded
value = 2803

;---------------------------------------------------------------------------
[Statedef 2802]
type = S
movetype = I
physics = S
anim = 2602
ctrl = 0
velset = 0,0
sprpriority = 2

[State 2802, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)<2
trigger1 = !AnimElemTime(1)
value = S2000,4
channel = 2
volumescale = 255

[State 2802, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=2
trigger1 = !AnimElemTime(1)
value = S2002,3
channel = 2
volumescale = 255

[State 2802, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=3
trigger1 = !AnimElemTime(1)
value = S2003,2
channel = 2
volumescale = 255

[State 2802, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)>3
trigger1 = !AnimElemTime(1)
value = S2004,1
channel = 2
volumescale = 255

[State 2802, End]
type = SelfState
triggerall = !Ishelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 2803]
type = S
movetype = I
physics = S
anim = 2603
ctrl = 0
velset = 0,0
sprpriority = 2

[State 2803, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(1)
value = S140,(Random%4)
volumescale = 255

[State 2803, Spark-1]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(1)
anim = 6580
pos = 0,-110
postype = p2
scale = 0.25,0.25
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 2803, Spark-2]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(1)
anim = 6250
pos = 0,-110
postype = p2
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
trans = Add
ignorehitpause = 1

[State 2803, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)<2
trigger1 = !AnimElemTime(2)
value = S2000,4
channel = 2
volumescale = 255

[State 2803, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=2
trigger1 = !AnimElemTime(2)
value = S2002,3
channel = 2
volumescale = 255

[State 2803, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=3
trigger1 = !AnimElemTime(2)
value = S2003,2
channel = 2
volumescale = 255

[State 2803, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)>3
trigger1 = !AnimElemTime(2)
value = S2004,1
channel = 2
volumescale = 255

[State 2803, End]
type = SelfState
triggerall = !Ishelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 2804]
type = S
movetype = A
physics = N
anim = 2604
ctrl = 0
velset = 0,0
sprpriority = 2

[State 2804, NHB]
type = NotHitBy
trigger1 = !IsHelper
value = SCA
time = 1
ignorehitpause = 1

[State 2804, Bind]
type = TargetBind
triggerall = !IsHelper
trigger1 = !AnimElemTime(1) 
time = 1
pos = 60,0

[State 2804, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)<2
trigger1 = AnimElemTime(1)>=0 && Time%26=0 && AnimElemTime(7)<0
trigger2 = !AnimElemTime(11)
value = S2000,4
channel = 2
volumescale = 255

[State 2804, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=2 || Var(21)=3
trigger1 = !AnimElemTime(1)
trigger2 = !AnimElemTime(11)
value = S2002,1
channel = 2
volumescale = 255

[State 2804, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)>3
trigger1 = !AnimElemTime(1)
trigger2 = !AnimElemTime(11)
value = S2004,3
channel = 2
volumescale = 255

[State 2804, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
value = S300,4
volumescale = 255

[State 2804, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
value = S200,4
volumescale = 255

[State 2804, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
value = S2310,(Random%2)
volumescale = 255

[State 2804, Spark]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
anim = 6003
pos = 65,-100
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 2804, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
anim = 6402
pos = 65,-100
postype = p1
vfacing = -1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 2804, HitAdd]
type = HitAdd
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
value = 1

[State 2804, Absord]
type = TargetLifeAdd
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
value = -40
kill = 0
absolute = 1

[State 2804, Shake]
type = EnvShake
triggerall = !Ishelper
trigger1 = !AnimElemTime(4)
time = 8
freq = 120
ampl = 6

[State 2804, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)<2
trigger1 = !AnimElemTime(7)
value = S2000,1
channel = 2
volumescale = 255

[State 2804, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=2
trigger1 = !AnimElemTime(7)
value = S2002,2
channel = 2
volumescale = 255

[State 2804, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=3
trigger1 = !AnimElemTime(7)
value = S2003,1
channel = 2
volumescale = 255

[State 2804, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)>3
trigger1 = !AnimElemTime(7)
value = S2004,2
channel = 2
volumescale = 255

[State 2804, Bind]
type = TargetBind
triggerall = !IsHelper
trigger1 = !AnimElemTime(8) 
time = 1
pos = 75,0

[State 2804, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = AnimElemTime(9)>=0 && Time%8=0 && AnimElemTime(11)<0
anim = 6410
pos = 80,-68
postype = p1
facing = 1
bindtime = 1
random = 10,10
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 2804, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = AnimElemTime(9)>=0 && Time%8=0 && AnimElemTime(11)<0
name = "Blood drop"
ID = 7100
stateno = 7100
pos = 80,-68
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 2804, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = AnimElemTime(9)>=0 && Time%8=0 && AnimElemTime(11)<0
value = S2310,(Random%2)
volumescale = 255

[State 2804, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = AnimElemTime(9)>=0 && Time%8=0 && AnimElemTime(11)<0
value = S2320,0
volumescale = 255

[State 2804, HitAdd]
type = HitAdd
triggerall = !IsHelper
trigger1 = AnimElemTime(9)>=0 && Time%1=0 && AnimElemTime(11)<0
value = 1

[State 2804, Absord]
type = TargetLifeAdd
triggerall = !IsHelper
trigger1 = AnimElemTime(9)>=0 && Time%1=0 && AnimElemTime(11)<0
value = -4
kill = 0
absolute = 1

[State 2804, Shake]
type = EnvShake
triggerall = !IsHelper
trigger1 = AnimElemTime(9)>=0 && Time%4=0 && AnimElemTime(11)<0
time = 4
freq = 130
ampl = 6

[State 2804, HitAdd]
type = HitAdd
triggerall = !IsHelper
trigger1 = !AnimElemTime(11)
value = 1

[State 2804, Absord]
type = TargetLifeAdd
triggerall = !IsHelper
trigger1 = !AnimElemTime(11)
value = -20
kill = 0
absolute = 1

[State 2804, Finisher]
type = TargetState
triggerall = !IsHelper
triggerall = NumTarget
triggerall = Target,Life <25
trigger1 = !AnimElemTime(11)
value = 2855

[State 2804, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)<2
trigger1 = !AnimElemTime(14)
value = S2000,4
channel = 2
volumescale = 255

[State 2804, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=2 || Var(21)=3
trigger1 = !AnimElemTime(14)
value = S2002,3
channel = 2
volumescale = 255

[State 2804, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)>3
trigger1 = !AnimElemTime(14)
value = S2004,1
channel = 2
volumescale = 255

[State 2804, End]
type = SelfState
triggerall = !Ishelper
trigger1 = Target,StateNo = 2855
value = 2850

[State 2804, End]
type = SelfState
triggerall = !Ishelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Enemy
[Statedef 2805]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 2805, Anim]
type = ChangeAnim2
triggerall = !IsHelper
trigger1 = !Time
value = 2605

[State 2805, Pos]
type = PosAdd
triggerall = !IsHelper
trigger1 = Time = [20,32]
x = -1

[State 2805, Priority]
type = SprPriority
triggerall = !IsHelper
triggerall = Anim = 2805
trigger1 = !AnimElemTime(7)
value = 3

[State 2805, Change]
type = ChangeState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 2806

[State 2805, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !Enemy,Alive || Enemy,Lose
trigger2 = Enemy,StateNo != 2804
value = 5050

;---------------------------------------------------------------------------
;Enemy
[Statedef 2806]
type = A
movetype = H
physics = N
ctrl = 0
velset = -0.3,-8
sprpriority = 0

[State 2806, Anim]
type = ChangeAnim2
triggerall = !IsHelper
trigger1 = !Time
value = 2606

[State 2806, Gravity]
type = VelAdd
triggerall = !IsHelper
trigger1 = Time>0
y = 0.35

[State 2806, Shake]
type = EnvShake
triggerall = !IsHelper
trigger1 = Time > 10 && Pos Y >= 0
time = 20
freq = 90
ampl = 4

[State 2806, Hit ground]
type = SelfState
triggerall = !IsHelper
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;---------------------------------------------------------------------------
[Statedef 2850]
type = S
movetype = A
physics = N
anim = 2650
ctrl = 0
velset = 0,0
sprpriority = 2

[State 2850, NHB]
type = NotHitBy
trigger1 = !IsHelper
value = SCA
time = 1
ignorehitpause = 1

[State 2850, Bind]
type = TargetBind
triggerall = !IsHelper
trigger1 = !AnimElemTime(1) 
time = 1
pos = 75,0

[State 2850, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)<2
trigger1 = !AnimElemTime(1)
value = S2000,1
channel = 2
volumescale = 255

[State 2850, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=2
trigger1 = !AnimElemTime(1)
value = S2002,2
channel = 2
volumescale = 255

[State 2850, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=3
trigger1 = !AnimElemTime(1)
value = S2003,1
channel = 2
volumescale = 255

[State 2850, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)>3
trigger1 = !AnimElemTime(1)
value = S2004,2
channel = 2
volumescale = 255

[State 2850, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = AnimElemTime(5)>=0 && Time%8=0 && AnimElemTime(7)<0
anim = 6410
pos = 75,-52
postype = p1
facing = 1
bindtime = 1
random = 10,10
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 2850, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = AnimElemTime(5)>=0 && Time%8=0 && AnimElemTime(7)<0
name = "Blood drop"
ID = 7100
stateno = 7100
pos = 75,-52
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 2850, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = AnimElemTime(5)>=0 && Time%8=0 && AnimElemTime(7)<0
value = S2310,(Random%2)
volumescale = 255

[State 2850, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = AnimElemTime(5)>=0 && Time%8=0 && AnimElemTime(7)<0
value = S2320,0
volumescale = 255

[State 2850, HitAdd]
type = HitAdd
triggerall = !IsHelper
trigger1 = AnimElemTime(5)>=0 && Time%1=0 && AnimElemTime(7)<0
value = 1

[State 2850, Absord]
type = TargetLifeAdd
triggerall = !IsHelper
trigger1 = AnimElemTime(5)>=0 && Time%1=0 && AnimElemTime(7)<0
value = -4
kill = 0
absolute = 1

[State 2850, Shake]
type = EnvShake
triggerall = !IsHelper
trigger1 = AnimElemTime(5)>=0 && Time%4=0 && AnimElemTime(7)<0
time = 4
freq = 120
ampl = 6

[State 2850, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(7)
value = S2325,4
volumescale = 255

[State 2850, Blood-ground]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(7)
anim = 6409
pos = 65,3
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = -3
ownpal = 1
trans = Default
ignorehitpause = 1

[State 2850, Guts-ground]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(7)
anim = IfElse(Var(45)=0,6472,6473)
pos = 65,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = -2
ownpal = 1
trans = None
ignorehitpause = 1

[State 2850, Gore-ground]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(7)
anim = IfElse(Var(45)=0,6480,6481)
pos = 65,3
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = -1
ownpal = 1
trans = None
ignorehitpause = 1

[State 2850, Blood-spill]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(7)
anim = 6408
pos = 65,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 2850, Blood-spill]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(7)
anim = 6408
pos = 75,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 2850, Blood-spill]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(7)
anim = 6408
pos = 55,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 2850, Blood-spill]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(7)
anim = 6408
pos = 60,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 2850, Blood-spill]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(7)
anim = 6408
pos = 70,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 2850, Shake]
type = EnvShake
triggerall = !IsHelper
trigger1 = !AnimElemTime(7)
time = 30
freq = 120
ampl = 5

[State 2850, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)<2
trigger1 = !AnimElemTime(8)
value = S2000,4
channel = 2
volumescale = 255

[State 2850, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=2
trigger1 = !AnimElemTime(8)
value = S2002,3
channel = 2
volumescale = 255

[State 2850, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=3
trigger1 = !AnimElemTime(8)
value = S2003,2
channel = 2
volumescale = 255

[State 2850, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)>3
trigger1 = !AnimElemTime(8)
value = S2004,1
channel = 2
volumescale = 255

[State 2850, Voice]
type = PlaySnd
triggerall = !IsHelper && Var(20)
trigger1 = !AnimElemTime(8)
value = S180,9
channel = 0
volumescale = 255

[State 2850, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = !AnimElemTime(8)
name = "Blood drop 1"
ID = 2860
stateno = 2860
pos = 54,-105
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 2850, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = AnimElemTime(8)=4
name = "Blood drop 2"
ID = 2860
stateno = 2860
pos = 62,-120
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 2850, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = !AnimElemTime(8)=8
name = "Blood drop 3"
ID = 2860
stateno = 2860
pos = 58,-112
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 2850, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = AnimElemTime(8)=12
name = "Blood drop 4"
ID = 2860
stateno = 2860
pos = 55,-108
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 2850, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = AnimElemTime(8)=16
name = "Blood drop 5"
ID = 2860
stateno = 2860
pos = 65,-126
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 2850, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = AnimElemTime(8)=20
name = "Blood drop 6"
ID = 2860
stateno = 2860
pos = 52,-104
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 2850, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = AnimElemTime(8)=24
name = "Blood drop 7"
ID = 2860
stateno = 2860
pos = 48,-109
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 2850, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = AnimElemTime(8)=28
name = "Blood drop 8"
ID = 2860
stateno = 2860
pos = 53,-106
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 2850, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = AnimElemTime(8)=32
name = "Blood drop 9"
ID = 2860
stateno = 2860
pos = 63,-126
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 2850, Var]
type = VarSet
triggerall = !IsHelper
trigger1 = !Var(40) && Win
var(40) = 1
ignorehitpause = 1

[State 2850, End]
type = SelfState
triggerall = !Ishelper
trigger1 = Time>=200
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Enemy
[Statedef 2855]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 2855, Anim]
type = ChangeAnim2
triggerall = !IsHelper
trigger1 = !Time
value = 2655

[State 2855, Priority]
type = SprPriority
triggerall = !IsHelper
triggerall = Anim = 2805
trigger1 = !AnimElemTime(5)
value = 3

[State 2855, Change]
type = ChangeState
triggerall = !IsHelper
trigger1 = !AnimTime
value = 10000

[State 2855, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !Enemy,Alive || Enemy,Lose
value = 5050

;---------------------------------------------------------------------------
;Pre-Fataliy
[Statedef 2999]
type = S
movetype = A
physics = N
anim = 2998
ctrl = 0
velset = 0,0
sprpriority = 2

[State 2999, Pause]
type = SuperPause
triggerall = !IsHelper
triggerall = Anim=2998
trigger1 = !Time
time = 120
movetime = 120
anim = -1
sound = -1
darken = 0
ignorehitpause = 1

[State 2999, NHB]
type = NotHitBy
triggerall = !IsHelper
triggerall = Var(57)<=4
trigger1 = Time<=120
value = SCA
time = 1
ignorehitpause = 1

[State 2999, NHB]
type = NotHitBy
triggerall = !IsHelper
trigger1 = Var(57)>4
value = SCA
time = 1
ignorehitpause = 1

[State 2999, Hyper-Back]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
triggerall = Anim=2998
trigger1 = !Time
anim = 6010
pos = 0,-60
postype = p1
scale = 0.4,0.4
bindtime = 1
removetime = -2
sprpriority = -2
ownpal = 1
trans = Add
supermovetime = 55
pausemovetime = 55
ignorehitpause = 1

[State 2999, Hyper-Front]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
triggerall = Anim=2998
trigger1 = !Time
anim = 6011
pos = 0,-60
postype = p1
scale = 0.4,0.4
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1
trans = Add
supermovetime = 55
pausemovetime = 55
ignorehitpause = 1

[State 2999, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Anim=2998
trigger1 = !Time
value = S3000,4
volumescale = 100

[State 2999, BGPalFX]
type = BGPalFX
triggerall = !IsHelper
triggerall = Anim=2998
trigger1 = !Time
time = 120
add = -100,-100,-100
sinadd = 20,30,22,70
ignorehitpause = 1

[State 2999, Voice]
type = PlaySnd
triggerall = !IsHelper
triggerall = Anim=2998
trigger1 = Time=20
value = S193,0
channel = 0
volumescale = 255

[State 2999, Anim]
type = ChangeAnim
triggerall = !IsHelper
triggerall = Anim=2998
trigger1 = !AnimTime
value = 2999

[State 2999, Vel]
type = VelSet
triggerall = !IsHelper
trigger1 = Anim=2999
x = 6

[State 2999, Push]
type = PlayerPush
triggerall = !IsHelper
trigger1 = Anim=2999
value = 0

[State 2999, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Anim=2999
triggerall = Var(22)=0
trigger1 = Time>=0 && (Time%15)=1
value = S20,(Random%6)
volumescale = 255

[State 2999, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Anim=2999
triggerall = Var(22)=1
trigger1 = Time>=0 && (Time%15)=1
value = S21,(Random%6)
volumescale = 255

[State 2999, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Anim=2999
triggerall = Var(22)=2
trigger1 = Time>=0 && (Time%15)=1
value = S22,(Random%6)
volumescale = 255

[State 2999, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Anim=2999
triggerall = Var(22)=3
trigger1 = Time>=0 && (Time%15)=1
value = S23,(Random%6)
volumescale = 255

[State 2999, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Anim=2999
triggerall = Var(22)=4
trigger1 = Time>=0 && (Time%15)=1
value = S24,(Random%6)
volumescale = 255

[State 2999, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Anim=2999
triggerall = Var(22)=5
trigger1 = Time>=0 && (Time%15)=1
value = S25,(Random%5)
volumescale = 255

[State 2999, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Anim=2999
triggerall = Var(22)=6
trigger1 = Time>=0 && (Time%15)=1
value = S26,(Random%4)
volumescale = 255

[State 2999, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Anim=2999
triggerall = Var(22)=7
trigger1 = Time>=0 && (Time%15)=1
value = S27,(Random%6)
volumescale = 255

[State 2999, Hit]
type = HitDef
triggerall = !IsHelper
trigger1 = Anim=2999
attr = S,HA
animtype = Hard
priority = 7,Hit
hitflag = MAFD
sparkno = -1
guard.sparkno = -1
hitsound = -1
guardsound = -1
p1facing = 1
p2facing = 1
hitonce = 1
numhits = 0
guard.dist = 0
air.fall = 0
fall = 1
fall.recover = 0

[State 2999, Drop]
type = TargetDrop
triggerall = !IsHelper
triggerall = Anim=2999
triggerall = NumTarget
trigger1 = Target,IsHelper 
ignorehitpause = 1

[State 2999, Target]
type = TargetState
triggerall = !IsHelper
triggerall = NumTarget
triggerall = !Target,IsHelper
trigger1 = Target,Stateno!= 10040
value = 10040

[State 2999, AI]
type = SelfState
triggerall = !IsHelper && Var(59)
triggerall = Anim=2999 && MoveHit
triggerall = !(Target,Name = "Duke Nukem" && Target,AuthorName = "T.O.P.S")
triggerall = !(Target,Name = "Bushwacker" && Target,AuthorName = "JARRO77")
triggerall = !(Target,Name = "cvsyoko" && Target,AuthorName = "Warusaki3")
triggerall = !(Target,Name = "A Pair Of Jiggling Tits" && Target,AuthorName = "DrKelexo")
triggerall = !(Target,Name = "Master Chief" && (Target,AuthorName = "Xihark" || Target,AuthorName = "Pyrovivi"))
triggerall = !(Target,Name = "Jin Kazama" && Target,AuthorName = "Infinite")
triggerall = !(Target,Name = "CFJ_Jin" && Target,AuthorName = "chuchoryu")
triggerall = !(Target,Name = "Ash Williams" || Target,Name = "Ash_Williams")
triggerall = !(Target,Name = "RoboCop" || Target,Name = "RoboCable" || Target,Name = "Automat" || Target,Name = "R2 Prototype A" || Target,Name = "Otomo" && (Target,AuthorName = "Ryou Win"))
triggerall = !(Target,Name = "T-800" && (Target,AuthorName = "Boss" || Target,AuthorName = "Ghost rider"))
triggerall = !(Target,Name = "Panty Anarchy" && (Target,AuthorName = "Shimmering Brony" || Target,AuthorName = "smhungary89"))
triggerall = !(Target,Name = "Brutal Doom Guy" && Target,AuthorName = "smhungary89")
trigger1 = NumTarget && !Target,IsHelper
value = 3000+(Random%4*100)

[State 2999, Axe]
type = SelfState
triggerall = !IsHelper && !Var(59)
triggerall = Anim=2999 && MoveHit
triggerall = NumTarget && !Target,IsHelper
triggerall = !(Target,Name = "Duke Nukem" && Target,AuthorName = "T.O.P.S")
triggerall = !(Target,Name = "Bushwacker" && Target,AuthorName = "JARRO77")
triggerall = !(Target,Name = "cvsyoko" && Target,AuthorName = "Warusaki3")
triggerall = !(Target,Name = "A Pair Of Jiggling Tits" && Target,AuthorName = "DrKelexo")
triggerall = !(Target,Name = "Master Chief" && (Target,AuthorName = "Xihark" || Target,AuthorName = "Pyrovivi"))
triggerall = !(Target,Name = "Jin Kazama" && Target,AuthorName = "Infinite")
triggerall = !(Target,Name = "CFJ_Jin" && Target,AuthorName = "chuchoryu")
triggerall = !(Target,Name = "Ash Williams" || Target,Name = "Ash_Williams")
triggerall = !(Target,Name = "RoboCop" || Target,Name = "RoboCable" || Target,Name = "Automat" || Target,Name = "R2 Prototype A" || Target,Name = "Otomo" && (Target,AuthorName = "Ryou Win"))
triggerall = !(Target,Name = "T-800" && (Target,AuthorName = "Boss" || Target,AuthorName = "Ghost rider"))
triggerall = !(Target,Name = "Panty Anarchy" && (Target,AuthorName = "Shimmering Brony" || Target,AuthorName = "smhungary89"))
triggerall = !(Target,Name = "Brutal Doom Guy" && Target,AuthorName = "smhungary89")
trigger1 = Command = "holdfwd"
value = 3000

[State 2999, Tear]
type = SelfState
triggerall = !IsHelper && !Var(59)
triggerall = Anim=2999 && MoveHit
triggerall = NumTarget && !Target,IsHelper
triggerall = !(Target,Name = "Duke Nukem" && Target,AuthorName = "T.O.P.S")
triggerall = !(Target,Name = "Bushwacker" && Target,AuthorName = "JARRO77")
triggerall = !(Target,Name = "cvsyoko" && Target,AuthorName = "Warusaki3")
triggerall = !(Target,Name = "A Pair Of Jiggling Tits" && Target,AuthorName = "DrKelexo")
triggerall = !(Target,Name = "Master Chief" && (Target,AuthorName = "Xihark" || Target,AuthorName = "Pyrovivi"))
triggerall = !(Target,Name = "Jin Kazama" && Target,AuthorName = "Infinite")
triggerall = !(Target,Name = "CFJ_Jin" && Target,AuthorName = "chuchoryu")
triggerall = !(Target,Name = "Ash Williams" || Target,Name = "Ash_Williams")
triggerall = !(Target,Name = "RoboCop" || Target,Name = "RoboCable" || Target,Name = "Automat" || Target,Name = "R2 Prototype A" || Target,Name = "Otomo" && (Target,AuthorName = "Ryou Win"))
triggerall = !(Target,Name = "T-800" && (Target,AuthorName = "Boss" || Target,AuthorName = "Ghost rider"))
triggerall = !(Target,Name = "Panty Anarchy" && (Target,AuthorName = "Shimmering Brony" || Target,AuthorName = "smhungary89"))
triggerall = !(Target,Name = "Brutal Doom Guy" && Target,AuthorName = "smhungary89")
trigger1 = Command = "holdup"
value = 3100

[State 2999, Rip]
type = SelfState
triggerall = !IsHelper && !Var(59)
triggerall = Anim=2999 && MoveHit
triggerall = NumTarget && !Target,IsHelper
triggerall = !(Target,Name = "Duke Nukem" && Target,AuthorName = "T.O.P.S")
triggerall = !(Target,Name = "Bushwacker" && Target,AuthorName = "JARRO77")
triggerall = !(Target,Name = "cvsyoko" && Target,AuthorName = "Warusaki3")
triggerall = !(Target,Name = "A Pair Of Jiggling Tits" && Target,AuthorName = "DrKelexo")
triggerall = !(Target,Name = "Master Chief" && (Target,AuthorName = "Xihark" || Target,AuthorName = "Pyrovivi"))
triggerall = !(Target,Name = "Jin Kazama" && Target,AuthorName = "Infinite")
triggerall = !(Target,Name = "CFJ_Jin" && Target,AuthorName = "chuchoryu")
triggerall = !(Target,Name = "Ash Williams" || Target,Name = "Ash_Williams")
triggerall = !(Target,Name = "RoboCop" || Target,Name = "RoboCable" || Target,Name = "Automat" || Target,Name = "R2 Prototype A" || Target,Name = "Otomo" && (Target,AuthorName = "Ryou Win"))
triggerall = !(Target,Name = "T-800" && (Target,AuthorName = "Boss" || Target,AuthorName = "Ghost rider"))
triggerall = !(Target,Name = "Panty Anarchy" && (Target,AuthorName = "Shimmering Brony" || Target,AuthorName = "smhungary89"))
triggerall = !(Target,Name = "Brutal Doom Guy" && Target,AuthorName = "smhungary89")
trigger1 = Command = "holddown"
value = 3200

[State 2999, Shotgun]
type = SelfState
triggerall = !IsHelper && !Var(59)
triggerall = Anim=2999 && MoveHit
triggerall = NumTarget && !Target,IsHelper
triggerall = !(Target,Name = "Duke Nukem" && Target,AuthorName = "T.O.P.S")
triggerall = !(Target,Name = "Bushwacker" && Target,AuthorName = "JARRO77")
triggerall = !(Target,Name = "cvsyoko" && Target,AuthorName = "Warusaki3")
triggerall = !(Target,Name = "A Pair Of Jiggling Tits" && Target,AuthorName = "DrKelexo")
triggerall = !(Target,Name = "Master Chief" && (Target,AuthorName = "Xihark" || Target,AuthorName = "Pyrovivi"))
triggerall = !(Target,Name = "Jin Kazama" && Target,AuthorName = "Infinite")
triggerall = !(Target,Name = "CFJ_Jin" && Target,AuthorName = "chuchoryu")
triggerall = !(Target,Name = "Ash Williams" || Target,Name = "Ash_Williams")
triggerall = !(Target,Name = "RoboCop" || Target,Name = "RoboCable" || Target,Name = "Automat" || Target,Name = "R2 Prototype A" || Target,Name = "Otomo" && (Target,AuthorName = "Ryou Win"))
triggerall = !(Target,Name = "T-800" && (Target,AuthorName = "Boss" || Target,AuthorName = "Ghost rider"))
triggerall = !(Target,Name = "Panty Anarchy" && (Target,AuthorName = "Shimmering Brony" || Target,AuthorName = "smhungary89"))
triggerall = !(Target,Name = "Brutal Doom Guy" && Target,AuthorName = "smhungary89")
trigger1 = Command = "holdback"
value = 3300

[State 2999, Change]
type = SelfState
triggerall = !IsHelper && !Var(59)
triggerall = Anim=2999 && MoveHit
triggerall = NumTarget && !Target,IsHelper
triggerall = !(Target,Name = "Duke Nukem" && Target,AuthorName = "T.O.P.S")
triggerall = !(Target,Name = "Bushwacker" && Target,AuthorName = "JARRO77")
triggerall = !(Target,Name = "cvsyoko" && Target,AuthorName = "Warusaki3")
triggerall = !(Target,Name = "A Pair Of Jiggling Tits" && Target,AuthorName = "DrKelexo")
triggerall = !(Target,Name = "Master Chief" && (Target,AuthorName = "Xihark" || Target,AuthorName = "Pyrovivi"))
triggerall = !(Target,Name = "Jin Kazama" && Target,AuthorName = "Infinite")
triggerall = !(Target,Name = "CFJ_Jin" && Target,AuthorName = "chuchoryu")
triggerall = !(Target,Name = "Ash Williams" || Target,Name = "Ash_Williams")
triggerall = !(Target,Name = "RoboCop" || Target,Name = "RoboCable" || Target,Name = "Automat" || Target,Name = "R2 Prototype A" || Target,Name = "Otomo" && (Target,AuthorName = "Ryou Win"))
triggerall = !(Target,Name = "T-800" && (Target,AuthorName = "Boss" || Target,AuthorName = "Ghost rider"))
triggerall = !(Target,Name = "Panty Anarchy" && (Target,AuthorName = "Shimmering Brony" || Target,AuthorName = "smhungary89"))
triggerall = !(Target,Name = "Brutal Doom Guy" && Target,AuthorName = "smhungary89")
trigger1 = !(Command = "holdfwd" && Command = "holdback" &&  Command = "holdup" && Command = "holddown")
value = 3000+(Random%4*100)

[State 2999, Dukey Nukey]
type = SelfState
triggerall = !IsHelper
triggerall = Anim=2999 && MoveHit
triggerall = NumTarget && !Target,IsHelper
trigger1 = Target,Name = "Duke Nukem" && Target,AuthorName = "T.O.P.S"
value = 3400

[State 2999, Arm cannon guy]
type = SelfState
triggerall = !IsHelper
triggerall = Anim=2999 && MoveHit
triggerall = NumTarget && !Target,IsHelper
trigger1 = Target,Name = "Bushwacker" && Target,AuthorName = "JARRO77"
value = 3450

[State 2999, Tekken guy]
type = SelfState
triggerall = !IsHelper
triggerall = Anim=2999 && MoveHit
triggerall = NumTarget && !Target,IsHelper
trigger1 = Target,Name = "Jin Kazama" && Target,AuthorName = "Infinite"
trigger2 = Target,Name = "CFJ_Jin" && Target,AuthorName = "chuchoryu"
value = 3500

[State 2999, Rival guy]
type = SelfState
triggerall = !IsHelper
triggerall = Anim=2999 && MoveHit
triggerall = NumTarget && !Target,IsHelper
trigger1 = Target,Name = "Brutal Doom Guy" && Target,AuthorName = "smhungary89"
value = 3550

[State 2999, Spez Mahreen]
type = SelfState
triggerall = !IsHelper
triggerall = Anim=2999 && MoveHit
triggerall = NumTarget && !Target,IsHelper
trigger1 = Target,Name = "Master Chief" && (Target,AuthorName = "Xihark" || Target,AuthorName = "Pyrovivi")
value = 3600

[State 2999, Robo guy]
type = SelfState
triggerall = !IsHelper
triggerall = Anim=2999 && MoveHit
triggerall = NumTarget && !Target,IsHelper
trigger1 = (Target,Name = "RoboCop" || Target,Name = "RoboCable" || Target,Name = "Automat" || Target,Name = "R2 Prototype A" || Target,Name = "Otomo" && (Target,AuthorName = "Ryou Win"))
value = 3650

[State 2999, Living tissue over a metal endoskeleton]
type = SelfState
triggerall = !IsHelper
triggerall = Anim=2999 && MoveHit
triggerall = NumTarget && !Target,IsHelper
trigger1 = (Target,Name = "T-800" && (Target,AuthorName = "Boss" || Target,AuthorName = "Ghost rider"))
value = 3660

[State 2999, Wisecracking classic]
type = SelfState
triggerall = !IsHelper
triggerall = Anim=2999 && MoveHit
triggerall = NumTarget && !Target,IsHelper
trigger1 = Target,Name = "Ash Williams" || Target,Name = "Ash_Williams"
value = 3700

[State 2999, Bitch Angel]
type = SelfState
triggerall = !IsHelper
triggerall = Anim=2999 && MoveHit
triggerall = NumTarget && !Target,IsHelper
trigger1 = Target,Name = "Panty Anarchy" && Target,AuthorName = "Shimmering Brony"
trigger2 = Target,Name = "Panty Anarchy" && Target,AuthorName = "smhungary89"
value = 3800

[State 2999, Ms. Fanservice]
type = SelfState
triggerall = !IsHelper
triggerall = Anim=2999 && MoveHit
triggerall = NumTarget && !Target,IsHelper
trigger1 = Target,Name = "cvsyoko" && Target,AuthorName = "Warusaki3"
trigger2 = Target,Name = "A Pair Of Jiggling Tits" && Target,AuthorName = "DrKelexo"
value = 3850

[State 2999, Self]
type = SelfState
triggerall = !IsHelper
triggerall = Anim=2999
trigger1 = FrontEdgeBodyDist <= 5
trigger2 = MoveGuarded
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Fataliy - Axe
[Statedef 3000]
type = S
movetype = A
physics = N
anim = 3000
ctrl = 0
velset = 0,0
sprpriority = 2

[State 3000, Target]
type = TargetState
triggerall = !IsHelper && Target,Name = "Haruhi Suzumiya"
triggerall = NumTarget
triggerall = !Target,IsHelper
trigger1 = !AnimElemTime(1)
value = 3015

[State 3000, Change]
type = SelfState
triggerall = !IsHelper && Target,Name = "Haruhi Suzumiya"
triggerall = NumTarget
triggerall = !Target,IsHelper
trigger1 = Target,StateNo = 3015
value = 3010

[State 3000, Target]
type = TargetState
triggerall = !IsHelper && Target,Name != "Haruhi Suzumiya"
triggerall = NumTarget
triggerall = !Target,IsHelper
trigger1 = !AnimElemTime(1)
value = 3005

[State 3000, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = AnimElemTime(1)>=0 && AnimElemTime(35)<0
time = 1
pos = 62,0

[State 3000, Voice]
type = PlaySnd
triggerall = !IsHelper && Var(20)
trigger1 = !AnimElemTime(1)
value = S190,5
channel = 0
volumescale = 255

[State 3000, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(1)
value = S500,0
volumescale = 255

[State 3000, Spark]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
anim = 6002
pos = 62,-93
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3000, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
anim = 6402
pos = 62,-93
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 3000, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S500,1
volumescale = 255

[State 3000, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S200,5
volumescale = 255

[State 3000, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
value = S500,5
volumescale = 255

[State 3000, Blood-1]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(6)
anim = 6401
pos = 62,-105
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 3000, Blood-2]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(6)
anim = 6406
pos = 62,-105
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 3000, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(6)
trigger2 = !AnimElemTime(9)
trigger3 = !AnimElemTime(13)
trigger4 = !AnimElemTime(17)
trigger5 = !AnimElemTime(21)
trigger6 = !AnimElemTime(25)
trigger7 = !AnimElemTime(29)
trigger8 = !AnimElemTime(35)
value = S2300,0
volumescale = 255

[State 3000, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(6)
trigger2 = !AnimElemTime(9)
trigger3 = !AnimElemTime(13)
trigger4 = !AnimElemTime(17)
trigger5 = !AnimElemTime(21)
trigger6 = !AnimElemTime(25)
trigger7 = !AnimElemTime(29)
trigger8 = !AnimElemTime(35)
value = S2310,(Random%2)
volumescale = 255

[State 3000, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(8)
trigger2 = !AnimElemTime(12)
trigger3 = !AnimElemTime(16)
trigger4 = !AnimElemTime(20)
trigger5 = !AnimElemTime(24)
trigger6 = !AnimElemTime(28)
value = S500,3
volumescale = 255

[State 3000, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(9)
trigger2 = !AnimElemTime(13)
trigger3 = !AnimElemTime(17)
trigger4 = !AnimElemTime(21)
trigger5 = !AnimElemTime(25)
trigger6 = !AnimElemTime(29)
anim = 6410
pos = 62,-62
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 3000, Shake]
type = EnvShake
triggerall = !IsHelper
trigger1 = !AnimElemTime(9)
trigger2 = !AnimElemTime(13)
trigger3 = !AnimElemTime(17)
trigger4 = !AnimElemTime(21)
trigger5 = !AnimElemTime(25)
trigger6 = !AnimElemTime(29)
time = 4
freq = 120
ampl = 2

[State 3000, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(35)
anim = 6410
pos = 62,-46
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 3000, Shake]
type = EnvShake
triggerall = !IsHelper
trigger1 = !AnimElemTime(35)
time = 10
freq = 120
ampl = 5

[State 3000, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = AnimElemTime(9)>=0 && Time%2=0 && AnimElemTime(10)<0
trigger2 = AnimElemTime(13)>=0 && Time%2=0 && AnimElemTime(14)<0
trigger3 = AnimElemTime(17)>=0 && Time%2=0 && AnimElemTime(19)<0
trigger4 = AnimElemTime(21)>=0 && Time%2=0 && AnimElemTime(22)<0
trigger5 = AnimElemTime(25)>=0 && Time%2=0 && AnimElemTime(26)<0
trigger6 = AnimElemTime(29)>=0 && Time%2=0 && AnimElemTime(30)<0
name = "Blood drops"
ID = 2860
stateno = 2860
pos = 61+(Random%6*IfElse(Random%2=0,1,-1)),-63+(Random%3*IfElse(Random%2=0,1,-1))
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 3000, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = AnimElemTime(35)>=0 && Time%2=0 && AnimElemTime(36)<0
name = "Blood drops"
ID = 2860
stateno = 2860
pos = 61+(Random%6*IfElse(Random%2=0,1,-1)),-44+(Random%3*IfElse(Random%2=0,1,-1))
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 3000, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(34)
value = S500,4
volumescale = 255

[State 3000, Target]
type = TargetState
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = !AnimElemTime(35)
value = 10000

[State 3000, Blood-ground]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(35)
anim = 6409
pos = 62,3
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = -3
ownpal = 1
trans = Default
ignorehitpause = 1

[State 3000, Guts-ground]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(35)
anim = IfElse(Var(45)=0,6472,6473)
pos = 62,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = -2
ownpal = 1
trans = None
ignorehitpause = 1

[State 3000, Gore-ground]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(35)
anim = IfElse(Var(45)=0,6480,6481)
pos = 62,3
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = -1
ownpal = 1
trans = None
ignorehitpause = 1

[State 3000, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(36)
value = S500,5
volumescale = 255

[State 3000, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(38)
value = S500,6
volumescale = 255

[State 3000, Var]
type = VarSet
triggerall = !IsHelper
trigger1 = !Var(40) && Win
var(40) = 1
ignorehitpause = 1

[State 3000, End]
type = SelfState
triggerall = !Ishelper
trigger1 = !AnimTime
value = 3001

;---------------------------------------------------------------------------
[Statedef 3001]
type = S
movetype = I
physics = S
anim = 3001
ctrl = 0
velset = 0,0
sprpriority = 2

[State 3001, Axe]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !Time
anim = 3002
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -1
sprpriority = -2
ownpal = 1
trans = None
ignorehitpause = 1

[State 3001, End]
type = SelfState
triggerall = !Ishelper && !Var(40)
trigger1 = Time > 30
value = 0
ctrl = 1

[State 3001, End]
type = SelfState
triggerall = !Ishelper && Var(40)
trigger1 = Time > 10
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Enemy
[Statedef 3005]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 3005, Anim]
type = ChangeAnim2
triggerall = !IsHelper
trigger1 = !Time
value = 3005

[State 3005, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !Enemy,Alive || Enemy,Lose
trigger2 = Enemy,StateNo != [3000,3001]
value = 5050

;---------------------------------------------------------------------------
[Statedef 3010]
type = S
movetype = A
physics = N
anim = 3010
ctrl = 0
velset = 0,0
sprpriority = 2

[State 3010, tBind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = !Time
time = 1
pos = 62,0

[State 3010, Helper]
type = Helper
triggerall = !IsHelper
trigger1 = !Time
name = "Dummy"
ID = 3011
stateno = 6000
pos = 62,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 3010, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(1)
value = S500,0
volumescale = 255

[State 3010, Spark]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
anim = 6002
pos = 62,-93
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3010, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
anim = 6402
pos = 62,-93
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 3010, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S500,1
volumescale = 255

[State 3010, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S200,5
volumescale = 255

[State 3010, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
value = S500,4
volumescale = 255

[State 3010, Blood-1]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(6)
anim = 6405
pos = 59,-36
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 3010, Blood-2]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(6)
anim = 6406
pos = 59,-36
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 3010, Blood-3]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(6)
anim = 6406
pos = 59,-36
postype = p1
facing = 1
vfacing = -1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 3010, Blood-ground]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(6)
anim = 6409
pos = 62,3
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = -2
ownpal = 1
trans = Default
ignorehitpause = 1

[State 3010, Blood-spill]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(6)
anim = 6408
pos = 61,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 3010, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = AnimElemTime(6)>=0 && Time%3=1 && AnimElemTime(6)<0
name = "Blood drop 1"
ID = 2860
stateno = 2860
pos = 58+(Random%5),-35
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 3010, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(6)
value = S2330,1
volumescale = 255

[State 3010, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(6)
value = S2340,0
volumescale = 255

[State 3010, Target]
type = TargetState
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = !AnimElemTime(6)
value = 10050

[State 3010, Shake]
type = EnvShake
triggerall = !IsHelper
trigger1 = !AnimElemTime(6)
time = 15
freq = 120
ampl = 10

[State 3010, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(8)
trigger2 = !AnimElemTime(12)
trigger3 = !AnimElemTime(16)
trigger4 = !AnimElemTime(20)
value = S500,3
volumescale = 255

[State 3010, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(9)
trigger2 = !AnimElemTime(13)
trigger3 = !AnimElemTime(17)
trigger4 = !AnimElemTime(21)
value = S2300,0
volumescale = 255

[State 3010, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(9)
trigger2 = !AnimElemTime(13)
trigger3 = !AnimElemTime(17)
trigger4 = !AnimElemTime(21)
value = S2310,(Random%2)
volumescale = 255

[State 3010, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(9)
trigger2 = !AnimElemTime(13)
trigger3 = !AnimElemTime(17)
trigger4 = !AnimElemTime(21)
anim = 6410
pos = 59,-28
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 3010, Shake]
type = EnvShake
triggerall = !IsHelper
trigger1 = !AnimElemTime(9)
trigger2 = !AnimElemTime(13)
trigger3 = !AnimElemTime(17)
trigger4 = !AnimElemTime(21)
time = 4
freq = 120
ampl = 2

[State 3010, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(25)
value = S500,5
volumescale = 255

[State 3010, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(27)
value = S500,6
volumescale = 255

[State 3010, Var]
type = VarSet
triggerall = !IsHelper
trigger1 = !Var(40) && Win
var(40) = 1
ignorehitpause = 1

[State 3010, End]
type = SelfState
triggerall = !Ishelper
trigger1 = !AnimTime
value = 3001

;---------------------------------------------------------------------------
;Enemy
[Statedef 3015]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 3015, Assert]
type = AssertSpecial
trigger1 = !IsHelper
flag = Invisible
flag2 = NoShadow

[State 3015, Anim]
type = ChangeAnim2
triggerall = !IsHelper
trigger1 = !Time
value = 9999

[State 3015, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !Enemy,Alive || Enemy,Lose
trigger2 = Enemy,StateNo != [3000,3010]
value = 5050

;---------------------------------------------------------------------------
;Fataliy - Tear
[Statedef 3100]
type = S
movetype = A
physics = N
anim = 3100
ctrl = 0
velset = 0,0
sprpriority = 2

[State 3100, Target]
type = TargetState
triggerall = !IsHelper
triggerall = NumTarget
triggerall = !Target,IsHelper
trigger1 = !AnimElemTime(1)
value = 3105

[State 3100, Voice]
type = PlaySnd
triggerall = !IsHelper && Var(20)
trigger1 = !AnimElemTime(1)
value = S190,3
channel = 0
volumescale = 255

[State 3100, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = AnimElemTime(1)>=0 && AnimElemTime(3)<0
time = 1
pos = 50,0

[State 3100, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S205,0
volumescale = 255

[State 3100, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S300,5
volumescale = 255

[State 3100, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = AnimElemTime(3)>=0 && AnimElemTime(4)<0
time = 1
pos = 50,-10

[State 3100, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = AnimElemTime(4)>=0 && AnimElemTime(5)<0
time = 1
pos = 35,-120

[State 3100, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = AnimElemTime(5)>=0 && AnimElemTime(6)<0
time = 1
pos = 32,-120

[State 3100, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = AnimElemTime(6)>=0 && AnimElemTime(7)<0
time = 1
pos = 35,-120

[State 3100, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = AnimElemTime(7)>=0 && AnimElemTime(8)<0
time = 1
pos = 30,-110

[State 3100, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = AnimElemTime(8)>=0 && AnimElemTime(14)<0
time = 1
pos = 1,-116

[State 3100, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(9)
value = S2360,0
volumescale = 255

[State 3100, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(11)
value = S2360,1
volumescale = 255

[State 3100, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(13)
value = S2360,2
volumescale = 255

[State 3100, Target]
type = TargetState
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = !AnimElemTime(14)
value = 10000

[State 3100, Shake]
type = EnvShake
triggerall = !IsHelper
trigger1 = !AnimElemTime(14)
time = 15
freq = 120
ampl = 10

[State 3100, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = Time>=202 && Time%3=1 && Time<217
name = "Blood drops"
ID = 2860
stateno = 2860
pos = 0+(Random%21*IfElse(Random%2=0,1,-1)),-115
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 3100, Blood-ground]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(16)
anim = 6409
pos = -1,3
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = -3
ownpal = 1
trans = Default
ignorehitpause = 1

[State 3100, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = Time>=220 && Time%5=1 && Time<270
name = "Blood drops"
ID = 2861
stateno = 2860
pos = 47+(Random%11*IfElse(Random%2=0,1,-1)),-75
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 3100, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = Time>=220 && Time%5=1 && Time<270
name = "Blood drops"
ID = 2862
stateno = 2860
pos = -47+(Random%11*IfElse(Random%2=0,1,-1)),-75
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 3100, Var]
type = VarSet
triggerall = !IsHelper
trigger1 = !Var(40) && Win
var(40) = 1
ignorehitpause = 1

[State 3100, End]
type = SelfState
triggerall = !Ishelper
trigger1 = Time > 300
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Enemy
[Statedef 3105]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 3105, Anim]
type = ChangeAnim2
triggerall = !IsHelper
trigger1 = !Time
value = 3105

[State 3105, Priority]
type = SprPriority
triggerall = !Ishelper
triggerall = Anim = 3105
trigger1 = Time = 82
value = 3

[State 3105, Hit voice]
type = PlaySnd
triggerall = !Ishelper
triggerall = Anim = 3105
trigger1 = Time = 60
trigger2 = Time = 152
trigger3 = Time = 192
value = 5000,(Random%7)
channel = 0

[State 3105, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !Enemy,Alive || Enemy,Lose
trigger2 = Enemy,StateNo != 3100
value = 5050

;---------------------------------------------------------------------------
;Fataliy - Rip
[Statedef 3200]
type = S
movetype = A
physics = N
anim = 3200
ctrl = 0
velset = 0,0
sprpriority = 2

[State 3200, Target]
type = TargetState
triggerall = !IsHelper
triggerall = NumTarget
triggerall = !Target,IsHelper
trigger1 = !AnimElemTime(1)
value = 3205

[State 3200, Voice]
type = PlaySnd
triggerall = !IsHelper && Var(20)
trigger1 = !AnimElemTime(1)
value = S190,2
channel = 0
volumescale = 255

[State 3200, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = AnimElemTime(1)>=0 && AnimElemTime(3)<0
time = 1
pos = 47,0

[State 3200, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = AnimElemTime(3)>=0 && AnimElemTime(4)<0
time = 1
pos = 42,0

[State 3200, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = AnimElemTime(4)>=0 && AnimElemTime(11)<0
time = 1
pos = 37,0

[State 3200, Wound]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
anim = 6420
pos = 37,-54
postype = p1
scale = 0.75,0.75
facing = 1
bindtime = 1
removetime = 79
sprpriority = 1
ownpal = 1
trans = None
ignorehitpause = 1

[State 3200, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
trigger2 = !AnimElemTime(6)
anim = 6404
pos = 37,-54
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
trans = None
ignorehitpause = 1

[State 3200, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
trigger2 = !AnimElemTime(6)
anim = 6401
pos = 37,-54
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 3200, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
trigger2 = !AnimElemTime(6)
anim = 6402
pos = 37,-54
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 3200, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
trigger2 = !AnimElemTime(6)
anim = 6408
pos = 37,0
postype = p1
scale = 1.0,1.2
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 3200, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
value = S2340,1
volumescale = 255

[State 3200, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
trigger2 = !AnimElemTime(6)
value = S2300,0
volumescale = 255

[State 3200, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
trigger2 = !AnimElemTime(6)
value = S2325,4
volumescale = 255

[State 3200, Shake]
type = EnvShake
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
trigger2 = !AnimElemTime(8)
trigger3 = !AnimElemTime(11)
time = 4
freq = 120
ampl = 2

[State 3200, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(8)
anim = 6401
pos = 37,-54
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
ownpal = 1
trans = None
ignorehitpause = 1

[State 3200, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(8)
anim = 6404
pos = 37,-54
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 3200, Wound]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(11)
anim = 6420
pos = 37,-77
postype = p1
scale = 0.75,0.75
facing = 1
bindtime = 1
removetime = 8
sprpriority = 1
ownpal = 1
trans = None
ignorehitpause = 1

[State 3200, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(11)
anim = 6401
pos = 38,-76
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
ownpal = 1
trans = None
ignorehitpause = 1

[State 3200, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(11)
anim = 6404
pos = 38,-76
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 3200, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(11)
value = S2330,1
volumescale = 255

[State 3200, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = AnimElemTime(11)>=0 && AnimElemTime(12)<0
time = 1
pos = 37,-77

[State 3200, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = AnimElemTime(12)>=0 && AnimElemTime(13)<0
time = 1
pos = 24,-117

[State 3200, Wound]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(12)
anim = 6420
pos = 24,-117
postype = p1
scale = 0.75,0.75
facing = 1
bindtime = 1
removetime = 8
sprpriority = 1
ownpal = 1
trans = None
ignorehitpause = 1

[State 3200, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = AnimElemTime(13)>=0 && AnimElemTime(14)<0
time = 1
pos = 24,-104

[State 3200, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(13)
value = S2340,2
volumescale = 255

[State 3200, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = AnimElemTime(13)>=0 && Time%3=1 && AnimElemTime(14)<0
anim = 6404
pos = 24,-104
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 3200, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = AnimElemTime(13)>=0 && Time%3=1 && AnimElemTime(14)<0
name = "Blood drops"
ID = 2860
stateno = 2860
pos = 24+(Random%6*IfElse(Random%2=0,1,-1)),-102
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 3200, Blood-ground]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = AnimElemTime(13)=26
anim = 6409
pos = 24,3
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = -3
ownpal = 1
trans = Default
ignorehitpause = 1

[State 3200, Guts]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(14)
name = "Guts"
ID = 3201
stateno = 3201
pos = 52,-90
postype = p1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 3200, Blood-1]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(14)
anim = 6406
pos = 24,-104
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 3200, Blood-2]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(14)
anim = 6406
pos = 24,-104
postype = p1
facing = 1
vfacing= -1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 3200, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(14)
value = S2340,1
volumescale = 255

[State 3200, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = !AnimElemTime(14)
time = 1
pos = 48,-100

[State 3200, Shake]
type = EnvShake
triggerall = !IsHelper
trigger1 = !AnimElemTime(14)
time = 10
freq = 120
ampl = 4

[State 3200, Var]
type = VarSet
triggerall = !IsHelper
trigger1 = !Var(40) && Win
var(40) = 1
ignorehitpause = 1

[State 3200, End]
type = SelfState
triggerall = !Ishelper
trigger1 = Time>=245
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Enemy
[Statedef 3205]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 3

[State 3205, Anim]
type = ChangeAnim2
triggerall = !IsHelper
trigger1 = !Time
value = 3205

[State 3205, Priority]
type = SprPriority
triggerall = !IsHelper
triggerall = Anim = 3205
trigger1 = !AnimElemTime(3)
value = 0

[State 3205, Hit voice]
type = PlaySnd
triggerall = !Ishelper
triggerall = Anim = 3205
trigger1 = Time = 35
trigger2 = Time = 90
trigger3 = Time = 115
value = 5000,(Random%7)
channel = 0

[State 3205, Gravity]
type = VelAdd
triggerall = !IsHelper
triggerall = Anim = 3205
trigger1 = Time>185
y = 0.35

[State 3205, Dead]
type = LifeSet
triggerall = !IsHelper && Alive
triggerall = Anim = 3205
trigger1 = Time>190
value = 0

[State 3205, Stop]
type = VelSet
triggerall = !IsHelper
trigger1 = (Pos y > 0)
y = 0

[State 3205, Change]
type = SelfState
triggerall = !IsHelper && !Alive
triggerall = Anim = 3205
trigger1 = !AnimTime
value = 5150

[State 3205, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !Enemy,Alive || Enemy,Lose
trigger2 = Enemy,StateNo != 3200
value = 5050

;---------------------------------------------------------------------------
;Fataliy - Shotgun
[Statedef 3300]
type = S
movetype = A
physics = N
anim = 3300
ctrl = 0
velset = 0,0
sprpriority = 2

[State 3300, Target]
type = TargetState
triggerall = !IsHelper
triggerall = NumTarget
triggerall = !Target,IsHelper
trigger1 = !AnimElemTime(1)
value = 3305

[State 3300, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = AnimElemTime(1)>=0 && AnimElemTime(6)<0
time = 1
pos = 55,0

[State 3300, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S1200+Var(21),1
volumescale = 255

[State 3300, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = AnimElemTime(6)>=0 && AnimElemTime(7)<0
time = 1
pos = 58,0

[State 3300, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(6)
value = S310,(Random%2)
volumescale = 255

[State 3300, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = AnimElemTime(7)>=0 && AnimElemTime(8)<0
time = 1
pos = 44,-70

[State 3300, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = AnimElemTime(8)>=0 && AnimElemTime(9)<0
time = 1
pos = 44,-103

[State 3300, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = AnimElemTime(9)>=0 && AnimElemTime(10)<0
time = 1
pos = 23,-135

[State 3300, Target]
type = TargetState
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = !AnimElemTime(10)
value = 10000

[State 3300, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(10)
value = S1200+Var(21),0
volumescale = 255

[State 3300, Hit Spark]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(10)
anim = 6580
pos = 21,-138
postype = p1
scale = 0.25,0.25
facing = -1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3300, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(10)
anim = 6404+(Random%2)
pos = 21,-138
postype = p1
scale = 0.25,0.25
facing = -1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 3300, Shell]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(10)
name = "Shell"
ID = 1081
stateno = 1081
pos = 21,-102
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 3300, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = AnimElemTime(10)>=0 && Time%2=1 && AnimElemTime(12)<0
name = "Blood drops"
ID = 2860
stateno = 2860
pos = 21+(Random%10*IfElse(Random%2=0,1,-1)),-134
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 3300, Blood-ground]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(12)
anim = 6409
pos = 21,3
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = -3
ownpal = 1
trans = Default
ignorehitpause = 1

[State 3300, Voice]
type = PlaySnd
triggerall = !IsHelper && Var(20)
trigger1 = !AnimElemTime(12)
value = S180,8
channel = 0
volumescale = 255

[State 3300, Var]
type = VarSet
triggerall = !IsHelper
trigger1 = !Var(40) && Win
var(40) = 1
ignorehitpause = 1

[State 3300, End]
type = SelfState
triggerall = !Ishelper
trigger1 = Time >= 180
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Enemy
[Statedef 3305]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 3305, Anim]
type = ChangeAnim2
triggerall = !IsHelper
trigger1 = !Time
value = 3305

[State 3305, STS]
type = StateTypeSet
triggerall = !IsHelper
triggerall = Anim = 3305
trigger1 = !AnimElemTime(4)
statetype = A

[State 3205, Priority]
type = SprPriority
triggerall = !IsHelper
triggerall = Anim = 3305
trigger1 = !AnimElemTime(5)
value = 3

[State 3305, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !Enemy,Alive || Enemy,Lose
trigger2 = Enemy,StateNo != 3300
value = 5050

;---------------------------------------------------------------------------
;Fataliy - vs Duke Nukem
[Statedef 3400]
type = S
movetype = A
physics = N
anim = 3400
ctrl = 0
velset = 0,0
sprpriority = 2

[State 3400, Target]
type = TargetState
triggerall = !IsHelper
triggerall = NumTarget
triggerall = !Target,IsHelper
trigger1 = !AnimElemTime(1)
value = 3405

[State 3400, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = AnimElemTime(1)>=0 && AnimElemTime(23)<0
time = 1
pos = 100,0

[State 3400, Helper]
type = Helper
triggerall = !IsHelper
trigger1 = !Time
name = "Dummy"
ID = 3401
stateno = 6000
pos = 85,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 3400, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S205,0
volumescale = 255

[State 3400, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S300,5
volumescale = 255

[State 3400, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
value = S2330,0
volumescale = 255

[State 3400, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(11)
value = S2330,1
volumescale = 255

[State 3400, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(11)
anim = 6403
pos = 63,-80
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 3400, Duke arm]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(11)
anim = 3406
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 3
ownpal = 1
trans = None
ignorehitpause = 1

[State 3400, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(17)
value = S300,5
volumescale = 255

[State 3400, Target]
type = TargetState
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = !AnimElemTime(20)
value = 10050

[State 3400, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(20)
value = S200,5
volumescale = 255

[State 3400, Hit Spark]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(20)
anim = 6003
pos = 95,-112
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3400, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(20)
anim = 6403
pos = 95,-112
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
trans = None
ignorehitpause = 1

[State 3400, Duke arm]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(23)
name = "Duke arm"
ID = 3402
stateno = 3401
pos = 57,-100
postype = p1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 3400, Voice]
type = PlaySnd
triggerall = !IsHelper && Var(20)
trigger1 = !AnimElemTime(23)
value = S180,10
channel = 0
volumescale = 255

[State 3400, Var]
type = VarSet
triggerall = !IsHelper
trigger1 = !Var(40) && Win
var(40) = 1
ignorehitpause = 1

[State 3400, End]
type = SelfState
triggerall = !Ishelper
trigger1 = Time>=280
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Enemy
[Statedef 3405]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 3405, Anim]
type = ChangeAnim2
triggerall = !IsHelper
trigger1 = !Time
value = 9999

[State 3405, Assert]
type = AssertSpecial
trigger1 = !IsHelper
flag = Invisible
flag2 = NoShadow

[State 3405, Hit voice]
type = PlaySnd
triggerall = !Ishelper
trigger1 = Time = 10
value = 0,31
channel = 0

[State 3405, Hit voice]
type = PlaySnd
triggerall = !Ishelper
trigger1 = Time = 95
value = 50,15
channel = 0

[State 3405, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !Enemy,Alive || Enemy,Lose
trigger2 = Enemy,StateNo != 3400
value = 5050

;---------------------------------------------------------------------------
;Fataliy - vs Bushwacker
[Statedef 3450]
type = S
movetype = A
physics = N
anim = 3450
ctrl = 0
velset = 0,0
sprpriority = 2

[State 3450, Target]
type = TargetState
triggerall = !IsHelper
triggerall = NumTarget
triggerall = !Target,IsHelper
trigger1 = !AnimElemTime(1)
value = 3455

[State 3450, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = AnimElemTime(1)>=0 && AnimElemTime(14)<0
time = 1
pos = 100,0

[State 3450, Helper]
type = Helper
triggerall = !IsHelper
trigger1 = !Time
name = "Dummy"
ID = 3451
stateno = 6000
pos = 100,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 3450, Voice]
type = PlaySnd
triggerall = !IsHelper && Var(20)
trigger1 = !AnimElemTime(1)
value = S190,11
channel = 0
volumescale = 255

[State 3450, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S205,0
volumescale = 255

[State 3450, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S300,5
volumescale = 255

[State 3450, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
value = S2330,0
volumescale = 255

[State 3450, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(10)
value = S2330,1
volumescale = 255

[State 3450, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(10)
anim = 6403
pos = 94,-80
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 3450, Bushwacker arm]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(10)
name = "Bushwacker arm"
ID = 3452
stateno = 3451
pos = 15,-68
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 3450, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(11)
value = S300,5
volumescale = 255

[State 3450, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)<=2
trigger1 = !AnimElemTime(12)
value = S1500,1
volumescale = 255

[State 3450, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)>2
trigger1 = !AnimElemTime(12)
value = S1500+Var(21),1
volumescale = 255

[State 3450, Explosion-1]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = AnimElemTime(12)=6
anim = 6150
pos = 110,-90
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3450, Explosion-2]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = AnimElemTime(12)=12
anim = 6150
pos = 107,-84
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3450, Explosion-3]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = AnimElemTime(12)=18
anim = 6150
pos = 113,-77
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3450, Explosion-4]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = AnimElemTime(12)=24
anim = 6150
pos = 113,-77
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3450, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = AnimElemTime(12)=6
trigger2 = AnimElemTime(12)=12
trigger3 = AnimElemTime(12)=18
trigger4 = AnimElemTime(12)=24
value = S2150,(Random%3)
volumescale = 100

[State 3450, Explosion-5]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = AnimElemTime(14)=8
anim = 6130
pos = 110,-65
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 15
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3450, Explosion-6]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(14)
anim = 6140
pos = 110,-60
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3450, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(14)
value = S2100,1
volumescale = 100

[State 3450, Target]
type = TargetState
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = AnimElemTime(14)=2
value = 10000

[State 3450, Shake]
type = EnvShake
triggerall = !Ishelper
trigger1 = AnimElemTime(14)=2
time = 30
freq = 80
ampl = 6

[State 3450, Voice]
type = PlaySnd
triggerall = !IsHelper && Var(20)
trigger1 = !AnimElemTime(15)
value = S190,15+(Random%3)
channel = 0
volumescale = 255

[State 3450, Var]
type = VarSet
triggerall = !IsHelper
trigger1 = !Var(40) && Win
var(40) = 1
ignorehitpause = 1

[State 3450, End]
type = SelfState
triggerall = !Ishelper
trigger1 = Time>=300
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Enemy
[Statedef 3455]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 3455, Anim]
type = ChangeAnim2
triggerall = !IsHelper
trigger1 = !Time
value = 9999

[State 3405, Assert]
type = AssertSpecial
trigger1 = !IsHelper
flag = Invisible
flag2 = NoShadow

[State 3455, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !Enemy,Alive || Enemy,Lose
trigger2 = Enemy,StateNo != 3450
value = 5050

;---------------------------------------------------------------------------
;Fataliy - vs Jin Kazama
[Statedef 3500]
type = S
movetype = A
physics = N
anim = 3500
ctrl = 0
velset = 0,0
sprpriority = 2

[State 3500, Target]
type = TargetState
triggerall = !IsHelper
triggerall = NumTarget
triggerall = !Target,IsHelper
trigger1 = !AnimElemTime(1)
value = 3505

[State 3500, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = AnimElemTime(1)>=0 && AnimElemTime(9)<0
time = 1
pos = 85,0

[State 3500, Helper]
type = Helper
triggerall = !IsHelper
trigger1 = !Time
name = "Dummy"
ID = 3501
stateno = 6000
pos = 85,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 3500, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
value = S300,5
volumescale = 255

[State 3500, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
value = S205,0
volumescale = 255

[State 3500, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
anim = 6403
pos = 67,-78
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 3500, Voice]
type = PlaySnd
triggerall = !IsHelper && Var(20)
trigger1 = !AnimElemTime(5)
value = S190,13
channel = 0
volumescale = 255

[State 3500, Arm]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
anim = 3506
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
ownpal = 1
trans = None
ignorehitpause = 1

[State 3500, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
trigger2 = !AnimElemTime(7)
value = S2300,0
volumescale = 255

[State 3500, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
value = S2340,1
volumescale = 255

[State 3500, Shake]
type = EnvShake
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
time = 4
freq = 120
ampl = 2

[State 3500, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(7)
value = S2340,2
volumescale = 255

[State 3500, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(7)
anim = 6403
pos = 76,-78
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 3500, Shake]
type = EnvShake
triggerall = !IsHelper
trigger1 = !AnimElemTime(7)
time = 15
freq = 120
ampl = 10

[State 3500, Target]
type = TargetState
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = !AnimElemTime(8)
value = 10050

[State 3500, Var]
type = VarSet
triggerall = !IsHelper
trigger1 = !Var(40) && Win
var(40) = 1
ignorehitpause = 1

[State 3500, End]
type = SelfState
triggerall = !Ishelper
trigger1 = Time>=150
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Enemy
[Statedef 3505]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 3505, Anim]
type = ChangeAnim2
triggerall = !IsHelper
trigger1 = !Time
value = 9999

[State 3505, Assert]
type = AssertSpecial
trigger1 = !IsHelper
flag = Invisible
flag2 = NoShadow

[State 3505, Hit voice]
type = PlaySnd
triggerall = !Ishelper
trigger1 = Time = 62
value = 0,2+(Random%3)
channel = 0

[State 3505, Hit voice]
type = PlaySnd
triggerall = !Ishelper
trigger1 = Time = 95
value = 5000,2
channel = 0

[State 3505, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !Enemy,Alive || Enemy,Lose
trigger2 = Enemy,StateNo != 3500
value = 5050

;---------------------------------------------------------------------------
;Fataliy - vs Rival Doomguy
[Statedef 3550]
type = S
movetype = A
physics = N
anim = 3600
ctrl = 0
velset = 0,0
sprpriority = 2

[State 3550, Target]
type = TargetState
triggerall = !IsHelper
triggerall = NumTarget
triggerall = !Target,IsHelper
trigger1 = !AnimElemTime(1)
value = 3555

[State 3550, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = AnimElemTime(1)>=0 && AnimElemTime(4)<0
time = 1
pos = 50,0

[State 3550, Voice]
type = PlaySnd
triggerall = !IsHelper && Var(20)
trigger1 = !AnimElemTime(1)
value = S180,7
channel = 0
volumescale = 255

[State 3550, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S300,5
volumescale = 255

[State 3550, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S205,0
volumescale = 255

[State 3550, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
anim = 6406
pos = 48,-88
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 3550, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
anim = 6403
pos = 48,-88
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 3550, Head]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
ID = 3611
anim = 3611
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -1
sprpriority = 3
ownpal = 1
trans = None
ignorehitpause = 1

[State 3550, Spine]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
anim = 6475
ID = 6555
pos = 48,-54
postype = p1
scale = 0.5,1.0
facing = 1
bindtime = 1
removetime = 5
sprpriority = -2
ownpal = 1
trans = None
ignorehitpause = 1

[State 3550, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
value = S2300,0
volumescale = 255

[State 3550, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
value = S2340,0
volumescale = 255

[State 3550, Shake]
type = EnvShake
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
time = 4
freq = 120
ampl = 4

[State 3550, Spine]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
anim = 6475
ID = 6555
pos = 36,-71
postype = p1
scale = 0.5,1.0
facing = 1
bindtime = 1
removetime = -1
sprpriority = -2
ownpal = 1
trans = None
ignorehitpause = 1

[State 3550, Var]
type = VarSet
triggerall = !IsHelper
trigger1 = !Var(40) && Win
var(40) = 1
ignorehitpause = 1

[State 3550, End]
type = SelfState
triggerall = !Ishelper
trigger1 = Time>=150
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Enemy
[Statedef 3555]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 3555, Anim]
type = ChangeAnim2
triggerall = !IsHelper
trigger1 = !Time
value = 3610

[State 3555, Dead]
type = LifeSet
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
value = 0

[State 3555, Anim]
type = ChangeAnim
triggerall = !IsHelper
triggerall = Anim = 3610
trigger1 = !AnimTime
value = 29994

[State 3555, Change]
type = SelfState
triggerall = !IsHelper && !Alive
trigger1 = Anim = 29994
value = 5150

[State 3555, Change]
type = SelfState
triggerall = !IsHelper && Alive
trigger1 = !Enemy,Alive || Enemy,Lose
trigger2 = Enemy,StateNo != 3550
value = 5050

;---------------------------------------------------------------------------
;Fataliy - vs Master Chief
[Statedef 3600]
type = S
movetype = A
physics = N
anim = 3600
ctrl = 0
velset = 0,0
sprpriority = 2

[State 3600, Target]
type = TargetState
triggerall = !IsHelper
triggerall = NumTarget
triggerall = !Target,IsHelper
trigger1 = !AnimElemTime(1)
value = 3605

[State 3600, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = AnimElemTime(1)>=0 && AnimElemTime(4)<0
time = 1
pos = 50,0

[State 3600, Voice]
type = PlaySnd
triggerall = !IsHelper && Var(20)
trigger1 = !AnimElemTime(1)
value = S180,7
channel = 0
volumescale = 255

[State 3600, Helper]
type = Helper
triggerall = !IsHelper
trigger1 = !Time
name = "Dummy"
ID = 3601
stateno = 6000
pos = 50,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 3600, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S300,5
volumescale = 255

[State 3600, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S205,0
volumescale = 255

[State 3600, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
anim = 6406
pos = 48,-88
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 3600, Blood]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
anim = 6403
pos = 48,-88
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = None
ignorehitpause = 1

[State 3600, Head]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
ID = 3606
anim = 3606
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -1
sprpriority = 3
ownpal = 1
trans = None
ignorehitpause = 1

[State 3600, Spine]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
anim = 6475
ID = 6475
pos = 48,-54
postype = p1
scale = 0.5,1.0
facing = 1
bindtime = 1
removetime = 5
sprpriority = -2
ownpal = 1
trans = None
ignorehitpause = 1

[State 3600, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
value = S2300,0
volumescale = 255

[State 3600, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
value = S2340,0
volumescale = 255

[State 3600, Target]
type = TargetState
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = !AnimElemTime(4)
value = 10050

[State 3600, Shake]
type = EnvShake
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
time = 4
freq = 120
ampl = 4

[State 3600, Spine]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
anim = 6475
ID = 6475
pos = 36,-71
postype = p1
scale = 0.5,1.0
facing = 1
bindtime = 1
removetime = -1
sprpriority = -2
ownpal = 1
trans = None
ignorehitpause = 1

[State 3600, Var]
type = VarSet
triggerall = !IsHelper
trigger1 = !Var(40) && Win
var(40) = 1
ignorehitpause = 1

[State 3600, End]
type = SelfState
triggerall = !Ishelper
trigger1 = Time>=150
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Enemy
[Statedef 3605]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 3605, Anim]
type = ChangeAnim2
triggerall = !IsHelper
trigger1 = !Time
value = 9999

[State 3605, Assert]
type = AssertSpecial
trigger1 = !IsHelper
flag = Invisible
flag2 = NoShadow

[State 3605, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !Enemy,Alive || Enemy,Lose
trigger2 = Enemy,StateNo != 3600
value = 5050

;---------------------------------------------------------------------------
;Fataliy - vs RoboCop
[Statedef 3650]
type = S
movetype = A
physics = N
anim = 3650
ctrl = 0
velset = 0,0
sprpriority = 2

[State 3650, Target]
type = TargetState
triggerall = !IsHelper
triggerall = NumTarget
triggerall = !Target,IsHelper
trigger1 = !AnimElemTime(1)
value = 3655

[State 3650, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = AnimElemTime(1)>=0 && AnimElemTime(8)<0
time = 1
pos = 130,0

[State 3650, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S300,0
volumescale = 255

[State 3650, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
value = S1950,0
volumescale = 255

[State 3650, Weapon]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
name = "Cobra Assault Cannon"
ID = 3651
stateno = 3651
pos = 20,-66
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 3650, Muzzle Flash]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(7)
anim = 6060
pos = 93,-80
postype = p1
scale = 0.25,0.25
facing = 1
bindtime = -1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3650, Bullet]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(7)
anim = 6571
pos = 93,-80
postype = p1
scale = 0.3,0.3
facing = 1
bindtime = 1
vel = 10,0
removetime = 3
sprpriority = 3
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3650, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(7)
value = S1950,1
volumescale = 255

[State 3650, Spark]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = AnimElemTime(7)=5
anim = 6580
pos = 0,-80
postype = p2
scale = 0.25,0.25
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3650, Explode]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = Time >= 79 && (Time%3)=1 && Time <= 109
anim = 6150
pos = 0,-40
postype = p2
facing = 1
bindtime = 1
random = 30,80
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3650, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = Time >= 79 && (Time%5)=1 && Time <= 109
value = S2150,3+(Random%2)
volumescale = 255

[State 3650, Explode]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = Time = 119
anim = 6130
pos = 0,-20
postype = p2
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3650, Explode]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = Time = 119
anim = 6140
pos = 0,-50
postype = p2
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3650, Explode]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = Time = 119
anim = 6140
pos = 10,-50
postype = p2
facing = 1
bindtime = 1
removetime = -2
sprpriority = -2
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3650, Ground]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = Time = 119
anim = 6370
pos = 0,0
postype = p2
scale = 1.0,1.0
facing = 1
bindtime = 1
removetime = -2
sprpriority = -3
ownpal = 1
trans = Default
ignorehitpause = 1

[State 3650, Metal-Helper]
type = Helper
triggerall = !IsHelper
trigger1 = Time = 119
name = "Metal parts"
ID = 10020
stateno = 10020
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 3650, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = Time = 119
value = S2150,(Random%3)
volumescale = 255

[State 3650, Shake]
type = EnvShake
triggerall = !IsHelper
trigger1 = Time = 119 
time = 20
freq = 120
ampl = 4

[State 3650, Target]
type = TargetState
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = Time = 120
value = 10050

[State 3650, Var]
type = VarSet
triggerall = !IsHelper
trigger1 = !Var(40) && Win
var(40) = 1
ignorehitpause = 1

[State 3650, End]
type = SelfState
triggerall = !Ishelper
trigger1 = Time>=162
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Enemy
[Statedef 3655]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 3855, NHB]
type = NotHitBy
trigger1 = !IsHelper
value = SCA
time = 1

[State 3655, Anim]
type = ChangeAnim2
triggerall = !IsHelper
trigger1 = Time = 69
value = 3655

[State 3655, FX]
type = PalFX
triggerall = !IsHelper
trigger1 = Time = 79 
time = 50
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,10
invertall = 1
color = 0

[State 3655, Change]
type = SelfState
triggerall = !IsHelper && Alive
trigger1 = !Enemy,Alive || Enemy,Lose
trigger2 = Enemy,StateNo != 3650
value = 5050

;---------------------------------------------------------------------------
;Fataliy - vs Terminator
[Statedef 3660]
type = S
movetype = A
physics = N
anim = 3660
ctrl = 0
velset = 0,0
sprpriority = 2

[State 3660, Target]
type = TargetState
triggerall = !IsHelper
triggerall = NumTarget
triggerall = !Target,IsHelper
trigger1 = !AnimElemTime(1)
value = 3665

[State 3660, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = AnimElemTime(1)>=0 && AnimElemTime(8)<0
time = 1
pos = 100,0

[State 3660, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S300,0
volumescale = 255

[State 3660, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
value = S1955,0
volumescale = 255

[State 3660, Weapon]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(5)
name = "Phased Plasma Rifle"
ID = 3661
stateno = 3651
pos = -4,-71
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 3660, Plasma]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(7)
trigger2 = AnimElemTime(7)=8
trigger3 = AnimElemTime(7)=16
trigger4 = AnimElemTime(7)=24
anim = 6575
pos = 49,-87
postype = p1
scale = 0.3,0.3
facing = 1
bindtime = 1
vel = 10,0
removetime = 5
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3660, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(7)
trigger2 = AnimElemTime(7)=8
trigger3 = AnimElemTime(7)=16
trigger4 = AnimElemTime(7)=24
value = S1955,1
volumescale = 255

[State 3660, Burn]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = AnimElemTime(7)=2
trigger2 = AnimElemTime(7)=10
trigger3 = AnimElemTime(7)=18
trigger4 = AnimElemTime(7)=26
ID = 6042
anim = 6042
pos = 0,-87
postype = p2
facing = 1
bindtime = 1
random = 20,10
removetime = 30
sprpriority = 10
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3660, Remove]
type = RemoveExplod
triggerall = !IsHelper
trigger1 = Time = 99
id = 6042

[State 3660, Explode]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = Time >= 99 && (Time%3)=1 && Time <= 129
anim = 6150
pos = 0,-40
postype = p2
facing = 1
bindtime = 1
random = 30,80
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3660, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = Time >= 99 && (Time%5)=1 && Time <= 129
value = S2150,3+(Random%2)
volumescale = 255

[State 3660, Explode]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = Time = 139
anim = 6130
pos = 0,-20
postype = p2
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3660, Explode]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = Time = 139
anim = 6140
pos = 0,-50
postype = p2
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3660, Explode]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = Time = 139
anim = 6140
pos = 10,-50
postype = p2
facing = 1
bindtime = 1
removetime = -2
sprpriority = -2
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3660, Ground]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = Time = 119
anim = 6370
pos = 0,0
postype = p2
scale = 1.0,1.0
facing = 1
bindtime = 1
removetime = -2
sprpriority = -3
ownpal = 1
trans = Default
ignorehitpause = 1

[State 3660, Metal-Helper]
type = Helper
triggerall = !IsHelper
trigger1 = Time = 139
name = "Metal parts"
ID = 10020
stateno = 10020
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 3660, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = Time = 139
value = S2150,(Random%3)
volumescale = 255

[State 3660, Shake]
type = EnvShake
triggerall = !IsHelper
trigger1 = Time = 139 
time = 20
freq = 120
ampl = 4

[State 3660, Target]
type = TargetState
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = Time = 140
value = 10050

[State 3660, Var]
type = VarSet
triggerall = !IsHelper
trigger1 = !Var(40) && Win
var(40) = 1
ignorehitpause = 1

[State 3660, End]
type = SelfState
triggerall = !Ishelper
trigger1 = Time>=160
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Enemy
[Statedef 3665]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 3855, NHB]
type = NotHitBy
trigger1 = !IsHelper
value = SCA
time = 1

[State 3665, Anim]
type = ChangeAnim2
triggerall = !IsHelper
trigger1 = Time = 69
value = 3655

[State 3665, FX]
type = PalFX
triggerall = !IsHelper
trigger1 = Time = 99 
time = 50
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,10
invertall = 1
color = 0

[State 3665, Change]
type = SelfState
triggerall = !IsHelper && Alive
trigger1 = !Enemy,Alive || Enemy,Lose
trigger2 = Enemy,StateNo != 3660
value = 5050

;---------------------------------------------------------------------------
;Fataliy - vs Ash Williams
[Statedef 3700]
type = S
movetype = A
physics = N
anim = 3700
ctrl = 0
velset = 0,0
sprpriority = 2

[State 3700, Target]
type = TargetState
triggerall = !IsHelper
triggerall = NumTarget
triggerall = !Target,IsHelper
trigger1 = !AnimElemTime(1)
value = 3705

[State 3700, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = AnimElemTime(1)>=0 && AnimElemTime(14)<0
time = 1
pos = 110,0

[State 3700, Helper]
type = Helper
triggerall = !IsHelper
trigger1 = !Time
name = "Dummy"
ID = 3701
stateno = 6000
pos = 110,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 3700, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)<2
trigger1 = !AnimElemTime(1)
value = S2000,0
channel = 2
volumescale = 255

[State 3700, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=2
trigger1 = !AnimElemTime(1)
value = S2002,0
channel = 2
volumescale = 255

[State 3700, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=3
trigger1 = !AnimElemTime(1)
value = S2003,0
channel = 2
volumescale = 255

[State 3700, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)>3
trigger1 = !AnimElemTime(1)
value = S2004,0
channel = 2
volumescale = 255

[State 3700, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)<2
trigger1 = !AnimElemTime(1)
value = S2000,5
channel = 3
volumescale = 255

[State 3700, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)>=2
trigger1 = !AnimElemTime(1)
value = S2002,4
channel = 3
volumescale = 255

[State 3700, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)<2
trigger1 = !AnimElemTime(2)
value = S2000,1
channel = 2
volumescale = 255

[State 3700, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=2
trigger1 = !AnimElemTime(2)
value = S2002,2
channel = 2
volumescale = 255

[State 3700, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=3
trigger1 = !AnimElemTime(2)
value = S2003,1
channel = 2
volumescale = 255

[State 3700, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)>3
trigger1 = !AnimElemTime(2)
value = S2004,2
channel = 2
volumescale = 255

[State 3700, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = AnimElemTime(6)>=0 && Time%10=0 && AnimElemTime(7)<0
value = S140,(Random%4)
volumescale = 255

[State 3700, Spark-1]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = AnimElemTime(6)>=0 && Time%5=0 && AnimElemTime(7)<0
anim = 6580
pos = 66,-112
postype = p1
scale = 0.25,0.25
facing = 1
bindtime = 1
random = 4,4
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3700, Spark-2]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = AnimElemTime(6)>=0 && Time%5=0 && AnimElemTime(7)<0
anim = 6250
pos = 66,-112
postype = p1
facing = IfElse(Random%2=0,1,-1)
bindtime = 1
random = 6,6
removetime = -2
sprpriority = 3
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3700, Shake]
type = EnvShake
triggerall = !IsHelper
trigger1 = AnimElemTime(6)>=0 && Time%5=0 && AnimElemTime(7)<0
time = 5
freq = 120
ampl = 2

[State 3700, Spark-1]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(7)
anim = 6580
pos = 90,-60
postype = p1
scale = 0.25,0.25
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3700, Spark-2]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(7)
anim = 6250
pos = 90,-60
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3700, Shake]
type = EnvShake
triggerall = !IsHelper
trigger1 = !AnimElemTime(7)
time = 4
freq = 120
ampl = 4

[State 3700, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(8)
value = S2420,0
volumescale = 255

[State 3700, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(8)
value = S2420,2
volumescale = 255

[State 3700, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)<2
trigger1 = !AnimElemTime(9)
value = S2000,4
channel = 2
volumescale = 255

[State 3700, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)=2 || Var(21)=3
trigger1 = !AnimElemTime(9)
value = S2002,3
channel = 2
volumescale = 255

[State 3700, Snd]
type = PlaySnd
triggerall = !IsHelper
triggerall = Var(21)>3
trigger1 = !AnimElemTime(9)
value = S2004,1
channel = 2
volumescale = 255

[State 3700, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(10)
value = S1000+Var(21),1
volumescale = 255

[State 3700, Muzzle Flash]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(13)
anim = 6065
pos = 54,-42
postype = p1
scale = 0.25,0.25
facing = 1
bindtime = -1
removetime = -2
sprpriority = 3
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3700, Shell]
type = Helper
triggerall = !IsHelper
triggerall = !IsHelper
trigger1 = !AnimElemTime(13)
name = "Shell"
ID = 1081
stateno = 1081
pos = 46,-51
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.25
size.yscale = 0.25
ignorehitpause = 1

[State 3700, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(13)
value = S1000+Var(21),0
volumescale = 255

[State 3700, Spark-1]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(14)
anim = 6580
pos = 100,0
postype = p1
scale = 0.25,0.25
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3700, Spark-2]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(14)
anim = 6250
pos = 100,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3700, Target]
type = TargetState
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = AnimElemTime(14)=5
value = 10001

[State 3700, Voice]
type = PlaySnd
triggerall = !IsHelper && Var(20)
trigger1 = !AnimElemTime(16)
value = S180,10
channel = 0
volumescale = 255

[State 3700, Var]
type = VarSet
triggerall = !IsHelper
trigger1 = !Var(40) && Win
var(40) = 1
ignorehitpause = 1

[State 3700, End]
type = SelfState
triggerall = !Ishelper
trigger1 = Time>=340
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Enemy
[Statedef 3705]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 3705, Anim]
type = ChangeAnim2
triggerall = !IsHelper
trigger1 = !Time
value = 9999

[State 3705, Assert]
type = AssertSpecial
trigger1 = !IsHelper
flag = Invisible
flag2 = NoShadow

[State 3705, Hit voice]
type = PlaySnd
triggerall = !Ishelper
trigger1 = Time = 160
value = 16,2
channel = 0

[State 3705, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !Enemy,Alive || Enemy,Lose
trigger2 = Enemy,StateNo != 3700
value = 5050

;---------------------------------------------------------------------------
;Fataliy - vs Panty
[Statedef 3800]
type = S
movetype = A
physics = N
anim = 3800
ctrl = 0
velset = 0,0
sprpriority = 2

[State 3800, Target]
type = TargetState
triggerall = !IsHelper
triggerall = NumTarget
triggerall = !Target,IsHelper
trigger1 = !AnimElemTime(1)
value = 3805

[State 3800, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = Time>=0
time = 1
pos = 50,0

[State 3800, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S205,0
volumescale = 255

[State 3800, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S300,5
volumescale = 255

[State 3800, Curtain]
type = Helper
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
name = "Curtain"
ID = 3802
stateno = 3802
pos = 0,-300
postype = p1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 3800, Voice]
type = PlaySnd
triggerall = !IsHelper && Var(20)
trigger1 = Time = 90
value = S190,10
channel = 0
volumescale = 255

[State 3800, Voice]
type = PlaySnd
triggerall = !IsHelper && !Var(20)
trigger1 = Time >= 85 && !Time%30
value = S181,0
channel = 0
volumescale = 255

[State 3800, Assert]
type = AssertSpecial
triggerall = !IsHelper
trigger1 = Time >= 85
flag = NoShadow
ignorehitpause = 1

[State 3800, Var]
type = VarSet
triggerall = !IsHelper
trigger1 = !Var(40) && Win
var(40) = 1
ignorehitpause = 1

[State 3800, End]
type = SelfState
triggerall = !Ishelper
triggerall = Win
trigger1 = Time >= 280
value = 0
ctrl = 1

[State 3800, End]
type = SelfState
triggerall = !Ishelper
triggerall = !Win
trigger1 = Time >= 280
value = 3801

;---------------------------------------------------------------------------
[Statedef 3801]
type = S
movetype = I
physics = N
anim = 3810
ctrl = 0
velset = 0,0
sprpriority = 2

[State 3801, NHB]
type = NotHitBy
triggerall = !IsHelper
triggerall = Var(57)<=4
trigger1 = Time<=30
value = SCA
time = 1
ignorehitpause = 1

[State 3801, NHB]
type = NotHitBy
triggerall = !IsHelper
trigger1 = Var(57)>4
value = SCA
time = 1
ignorehitpause = 1

[State 3801, Flash]
type = Explod
triggerall = !IsHelper
trigger1 = !Time
anim = 4044
pos = 160,119
postype = Left
facing = Facing
vfacing = 1
removetime = -2
scale = 6,6.06
sprpriority = 50
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 3801, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !Time
value = S2400,0
volumescale = 255

[State 3801, Warp]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = Time = 10
anim = 6260
pos = 0,-50
postype = p1
scale = 1.5,1.5
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3801, End]
type = SelfState
triggerall = !Ishelper
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Enemy
[Statedef 3805]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 3805, Asser5]
type = AssertSpecial
trigger1 = !IsHelper
flag = NoKoSnd
ignorehitpause = 1

[State 3805, Anim]
type = ChangeAnim2
triggerall = !IsHelper
trigger1 = !Time
value = 3805

[State 3805, Assert]
type = AssertSpecial
triggerall = !IsHelper
trigger1 = Time >= 85
flag = NoShadow
ignorehitpause = 1

[State 3805, Hit voice]
type = PlaySnd
triggerall = !Ishelper
trigger1 = Time = 90
value = 4000,2+(Random%2)
channel = 0

[State 3805, Life]
type = LifeSet
triggerall = !IsHelper && Alive
triggerall = Enemy,StateNo = 3800
trigger1 = Time >= 220
value = 0

[State 3805, Change]
type = ChangeState
triggerall = !IsHelper && !Alive
trigger1 = Time >= 279
value = 10050

[State 3805, Change]
type = SelfState
triggerall = !IsHelper && Alive
trigger1 = !Enemy,Alive || Enemy,Lose
trigger2 = Enemy,StateNo != [3800,3801]
value = 5050

;---------------------------------------------------------------------------
;Fataliy - vs Yoko
[Statedef 3850]
type = S
movetype = A
physics = N
anim = 3850
ctrl = 0
velset = 0,0
sprpriority = 2

[State 3850, Target]
type = TargetState
triggerall = !IsHelper
triggerall = NumTarget
triggerall = !Target,IsHelper
trigger1 = !AnimElemTime(1)
value = 3855

[State 3850, Bind]
type = TargetBind
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = Time>=0
time = 1
pos = 60,0

[State 3850, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(2)
value = S300,5
volumescale = 255

[State 3850, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
value = S200,(Random%5)
volumescale = 255

[State 3850, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
value = S2420,1
volumescale = 255

[State 3850, Hit Spark]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(4)
anim = 6002
pos = 41,-96
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3850, Crack]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = AnimElemTime(4)=5
ID = 6075
anim = 6075
pos = 41,-80
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
ownpal = 1
trans = None
ignorehitpause = 1

[State 3850, Crack glow]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = AnimElemTime(4)=5
ID = 6076
anim = 6076
pos = 41,-80
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 6
ownpal = 1
trans = Default
ignorehitpause = 1

[State 3850, Explode]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(8)
anim = 6130
pos = 60,-80
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1
trans = Add
ignorehitpause = 1

[State 3850, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(8)
value = S2100,1
volumescale = 255

[State 3850, Voice]
type = PlaySnd
triggerall = !IsHelper && Var(20)
trigger1 = !AnimElemTime(8)
value = S190,1
channel = 0
volumescale = 255

[State 3850, Shake]
type = EnvShake
triggerall = !IsHelper
trigger1 = !AnimElemTime(8)
time = 10
freq = 120
ampl = 4

[State 3850, Var]
type = VarSet
triggerall = !IsHelper
trigger1 = !Var(40) && Win
var(40) = 1
ignorehitpause = 1

[State 3850, End]
type = SelfState
triggerall = !Ishelper
trigger1 = Time >= 150
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Enemy
[Statedef 3855]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 3855, Asser5]
type = AssertSpecial
trigger1 = !IsHelper
flag = NoKoSnd
ignorehitpause = 1

[State 3855, Anim]
type = ChangeAnim2
triggerall = !IsHelper
trigger1 = !Time
value = 3855

[State 3855, Hit voice]
type = PlaySnd
triggerall = !Ishelper
triggerall = Anim = 3855
trigger1 = !AnimElemTime(2)
value = 1100,4

[State 3855, Hit voice]
type = PlaySnd
triggerall = !Ishelper
triggerall = Anim = 3855
trigger1 = Time = 44
value = 5000,0
channel = 0

[State 3855, Anim]
type = ChangeAnim
triggerall = !IsHelper
triggerall = SelfAnimExist(7697)
trigger1 = Anim = 3855 && !AnimTime
value = 7697

[State 3855, NHB]
type = NotHitBy
triggerall = !IsHelper
trigger1 = Anim = 7697
value = SCA
time = 1

[State 3855, Life]
type = LifeSet
triggerall = !IsHelper && Alive
triggerall = Enemy,StateNo = 3850
trigger1 = Time >= 75
value = 0

[State 3855, FX]
type = PalFX
triggerall = !IsHelper
trigger1 = Time=75
time = 37
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,10
invertall = 1
color = 0

[State 3855, Change]
type = SelfState
triggerall = !IsHelper && !Alive
trigger1 = Time >= 180
value = 5950

[State 3855, Change]
type = SelfState
triggerall = !IsHelper && Alive
trigger1 = !Enemy,Alive || Enemy,Lose
trigger2 = Enemy,StateNo != 3850
value = 5050

;---------------------------------------------------------------------------
;Fataliy - vs Cheapies
[Statedef 3900]
type = S
movetype = A
physics = N
anim = 3900
ctrl = 0
velset = 0,0
sprpriority = 2

[State 3900, NHB]
type = NotHitBy
trigger1 = !IsHelper
value = SCA
time = 1
ignorehitpause = 1

[State 3900, Pos]
type = PosSet
triggerall = !IsHelper
trigger1 = Pos Y != 0
y = 0

[State 3900, Reversal]
type = ReversalDef
trigger1 = !IsHelper
reversal.attr = SCA,AA,AT,AP
pausetime = 0,0
sparkno = -1
hitsound = -1
p1stateno = 3901
p2stateno = 3905
ignorehitpause = 1

[State 3900, End]
type = SelfState
triggerall = !Ishelper
trigger1 = RoundState>2
trigger2 = Win || Lose
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 3901]
type = S
movetype = A
physics = N
anim = 3901
ctrl = 0
velset = 0,0
sprpriority = 2

[State 3901, Drop]
type = TargetDrop
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = Target,IsHelper 
ignorehitpause = 1

[State 3901, End]
type = SelfState
triggerall = !Ishelper
trigger1 = !NumTarget && !Var(40)
value = 3900

[State 3901, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = !AnimElemTime(1)
time = 1
pos = 47,0

[State 3901, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(1)
value = S205,0
volumescale = 255

[State 3901, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(1)
value = S300,5
volumescale = 255

[State 3901, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = AnimElemTime(2)>=0 && AnimElemTime(13)<0
time = 1
pos = 30,-110

[State 3901, Enemy]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
triggerall = NumTarget && Target,Name = "Trollface"
trigger1 = !NumExplod(3906) && !Time
ID = 3906
anim = 3906
pos = 0,0
postype = p1
scale = 0.7,0.7
facing = 1
bindtime = 1
removetime = 110
sprpriority = -2
ownpal = 1
trans = None
ignorehitpause = 1

[State 3901, Enemy]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
triggerall = NumTarget && Target,Name = "NyanCat"
trigger1 = !NumExplod(3907) && !Time
ID = 3907
anim = 3907
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = 112
sprpriority = -2
ownpal = 1
trans = None
ignorehitpause = 1

[State 3901, Snd]
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

[State 3901, Hit Spark]
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

[State 3901, Blood-1]
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

[State 3901, Blood-2]
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

[State 3901, Helper]
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

[State 3901, Snd]
type = PlaySnd
triggerall = !IsHelper
trigger1 = !AnimElemTime(3)
trigger2 = !AnimElemTime(5)
trigger3 = !AnimElemTime(7)
trigger4 = !AnimElemTime(9)
trigger5 = !AnimElemTime(11)
value = S200,(Random%5)
volumescale = 255

[State 3901, Shake]
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

[State 3901, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = !AnimElemTime(13)
time = 1
pos = 28,-110

[State 3901, Bind]
type = TargetBind
triggerall = !Ishelper
trigger1 = !AnimElemTime(14)
time = 1
pos = 43,-88

[State 3901, Target]
type = TargetState
triggerall = !IsHelper
triggerall = NumTarget
trigger1 = !AnimElemTime(14)
value = 10000

[State 3901, Voice]
type = PlaySnd
triggerall = !IsHelper && Var(20)
trigger1 = !AnimElemTime(14)
value = S190,15+(Random%3)
channel = 0
volumescale = 255

[State 3901, Shake]
type = EnvShake
triggerall = !IsHelper
trigger1 = !AnimElemTime(14)
time = 15
freq = 120
ampl = 10

[State 3901, Helper]
type = Helper
triggerall = !Ishelper
trigger1 = Time>=110 && Time%2=1 && Time<123
name = "Blood drops"
ID = 2860
stateno = 2860
pos = 43+(Random%21*IfElse(Random%2=0,1,-1)),-88
postype = p1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 3901, Gore-ground]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(15)
anim = IfElse(Var(45)=0,6480,6481)
pos = 43,3
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = -1
ownpal = 1
trans = None
ignorehitpause = 1

[State 3100, Blood-ground]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !IsHelper
trigger1 = !AnimElemTime(16)
anim = 6409
pos = 43,3
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = -3
ownpal = 1
trans = Default
ignorehitpause = 1

[State 3901, Var]
type = VarSet
triggerall = !IsHelper
trigger1 = !Var(40) && Win
var(40) = 1
ignorehitpause = 1

[State 3901, End]
type = SelfState
triggerall = !Ishelper
trigger1 = Time >= 200
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Enemy
[Statedef 3905]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 3905, Destroy]
type = DestroySelf
trigger1 = IsHelper

[State 3905, Anim]
type = ChangeAnim2
triggerall = !IsHelper
triggerall = Name != "Trollface" && Name != "NyanCat"
trigger1 = !Time
value = 3905

[State 3905, Anim]
type = ChangeAnim2
triggerall = !IsHelper
triggerall = Name = "Trollface" || Name = "NyanCat"
trigger1 = !Time
value = 9999

[State 3905, Stop]
type = StopSnd
triggerall = !IsHelper
triggerall = Name = "Trollface"
trigger1 = !Time
channel = -1

[State 3905, Stop]
type = StopSnd
triggerall = !IsHelper
triggerall = Name = "NyanCat"
trigger1 = !Time
channel = 2

[State 3905, Change]
type = SelfState
triggerall = !IsHelper
trigger1 = !Enemy,Alive || Enemy,Lose
trigger2 = Enemy,StateNo != [3900,3901]
value = 5050

;---------------------------------------------------------------------------
;Pre-Finisher - Rip apart
[Statedef 10000]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 10000, Asserts]
type = AssertSpecial
triggerall = !IsHelper
trigger1 = Time>0
flag = Invisible
flag2 = NoShadow
ignorehitpause = 1

[State 10000, NHB]
type = NotHitBy
trigger1 = !IsHelper
value = SCA
time = 1
ignorehitpause = 1

[State 10000, Change]
type = ChangeState
triggerall = !IsHelper
trigger1 = Time > 10
value = 10050
ctrl = 0

;---------------------------------------------------------------------------
;Pre-Finisher - Burn
[Statedef 10001]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 10001, Asserts]
type = AssertSpecial
trigger1 = !IsHelper
flag = Invisible
flag2 = NoShadow
ignorehitpause = 1

[State 10001, NHB]
type = NotHitBy
trigger1 = !IsHelper
value = SCA
time = 1
ignorehitpause = 1

[State 10001, Change]
type = ChangeState
triggerall = !IsHelper
trigger1 = Time > 1
value = 10050
ctrl = 0

;---------------------------------------------------------------------------
;Pre-Finisher - Melt
[Statedef 10002]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 10002, Asserts]
type = AssertSpecial
trigger1 = !IsHelper
flag = Invisible
flag2 = NoShadow
ignorehitpause = 1

[State 10002, NHB]
type = NotHitBy
trigger1 = !IsHelper
value = SCA
time = 1
ignorehitpause = 1

[State 10002, Change]
type = ChangeState
triggerall = !IsHelper
trigger1 = Time > 1
value = 10050
ctrl = 0

;---------------------------------------------------------------------------
;Enemy
[Statedef 10040]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 1

[State 10040, Anim]
type = ChangeAnim
triggerall = !IsHelper
triggerall = SelfAnimExist(5300)
triggerall = Anim != 5300 
trigger1 = !Time
value = 5300

[State 10040, HB]
type = HitBy
triggerall = !IsHelper && Enemy,Var(59)=1
trigger1 = Time >= 0
value = S,HA
time = 1

[State 10040, Pos]
type = PosSet
triggerall = !IsHelper
triggerall = !Time
trigger1 = Pos Y != 0
y = 0

[State 10040, Absord]
type = LifeSet
triggerall = !IsHelper
trigger1 = Time > 1000
value = 0

[State 10040, Self]
type = SelfState
triggerall = !IsHelper
trigger1 = RoundState > 2
trigger2 = !ALive
value = 5050

;---------------------------------------------------------------------------
;Enemy
[Statedef 10050]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 10050, Asserts]
type = AssertSpecial
trigger1 = !IsHelper
flag = Invisible
flag2 = NoShadow
ignorehitpause = 1

[State 10050, Asser5]
type = AssertSpecial
triggerall = !IsHelper
trigger1 = PrevStateNo=[3655,3665]
flag = NoKoSnd
ignorehitpause = 1

[State 10050, NHB]
type = NotHitBy
trigger1 = !IsHelper
value = SCA
time = 1
ignorehitpause = 1

[State 10050, Pos]
type = PosSet
trigger1 = !IsHelper
y = 9999
ignorehitpause = 1

[State 10050, Remove]
type = RemoveExplod
trigger1 = !IsHelper
ignorehitpause = 1

[State 10050, After]
type = AfterImageTime
trigger1 = !IsHelper
time = 0
ignorehitpause = 1

[State 10050, Push]
type = PlayerPush
trigger1 = !IsHelper
value = 0
ignorehitpause = 1

[State 10050, Screen]
type = ScreenBound
trigger1 = !IsHelper
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 10050, Life]
type = LifeSet
trigger1 = !IsHelper
value = 0
ignorehitpause = 1

[State 10050, Self]
type = SelfState
triggerall = !IsHelper
trigger1 = !Alive && Time > 10
value = 5150
ignorehitpause = 1