;-| Button Remapping |-----------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------

[Command]
name = "QCB_ab"
command = ~D, DB, B, a+b

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "DDD_ab"
command = ~D, D, a+b

[Command]
name = "DDD_ab"
command = D, D, a+b

;-| Special Motions |------------------------------------------------------

[Command]
name = "DP_a"
command = ~F, D, DF, a

[Command]
name = "DP_b"
command = ~F, D, DF, b

[Command]
name = "DD_a"
command = ~D, D, a

[Command]
name = "DD_a"
command = D, D, a

[Command]
name = "DD_b"
command = ~D, D, b

[Command]
name = "DD_b"
command = D, D, b

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = c
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x
time = 1

[Command]
name = "recovery";Required (do not remove)
command = y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = z
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "a+b"
command = a+b
time = 1

[Command]
name = "b+c"
command = b+c
time = 1

[Command]
name = "y+z"
command = y+z
time = 1


;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.




[Statedef 10218]
type    = S
physics = S
anim=20218
ctrl = 0
[State 218 , 1]
type = posset
trigger1=1
x=root,pos x+ifelse((root,facing>0),-100,100)
y=root,pos y






 


[State 66]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow





[State -2, タッグ用生死判別];
Type = VarSet
triggerall = RoundState = 2
trigger1 = NumEnemy = 1
trigger2 = NumEnemy = 2
trigger2 = EnemyNear,life > 0
var(36) = 0
IgnoreHitPause = 1

[State -2, タッグ用生死判別];
Type = VarSet
triggerall = RoundState = 2
trigger1 = NumEnemy = 2
trigger1 = EnemyNear,life <= 0
var(36) = 1
IgnoreHitPause = 1












[State -2:         VarSet]
type     = VarSet
trigger1=fvar(5)<=-1
trigger1=fvar(5) !=-99999
trigger1=root,movetype=H||(root,stateno=[150,159])||(root,stateno=[760,769])
fv = 5
value =-fvar(5)
Ignorehitpause=1










[State -2 , 1]
type = parentVarset
triggerall=root,fvar(33)>0 && root,fvar(33)-fvar(5) !=[-999,999]
triggerall=root,fvar(32)>0 && root,fvar(32)-fvar(5) !=[-999,999]
triggerall=root,fvar(19)>0 && root,fvar(19)-fvar(5) !=[-999,999]
triggerall=root,fvar(18)>0 && root,fvar(18)-fvar(5) !=[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(16)>0 && root,fvar(16)-fvar(5) !=[-999,999]
triggerall=root,fvar(15)>0 && root,fvar(15)-fvar(5) !=[-999,999]
triggerall=root,fvar(14)>0 && root,fvar(14)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
trigger1=root,fvar(30)>=0
trigger1=fvar(5) >0
fv = 30
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(30)<0 
fv =  30
value =-root,fvar(30)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(33)=0||root,fvar(33)-fvar(5) =[-999,999]
triggerall=root,fvar(32)>0 && root,fvar(32)-fvar(5) !=[-999,999]
triggerall=root,fvar(19)>0 && root,fvar(19)-fvar(5) !=[-999,999]
triggerall=root,fvar(18)>0 && root,fvar(18)-fvar(5) !=[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(16)>0 && root,fvar(16)-fvar(5) !=[-999,999]
triggerall=root,fvar(15)>0 && root,fvar(15)-fvar(5) !=[-999,999]
triggerall=root,fvar(14)>0 && root,fvar(14)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
trigger1=root,fvar(33)>=0
trigger1=fvar(5) >0
fv = 33
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(33)<0 
fv =  33
value =-root,fvar(33)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(32)=0||root,fvar(32)-fvar(5) =[-999,999]
triggerall=root,fvar(19)>0 && root,fvar(19)-fvar(5) !=[-999,999]
triggerall=root,fvar(18)>0 && root,fvar(18)-fvar(5) !=[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(16)>0 && root,fvar(16)-fvar(5) !=[-999,999]
triggerall=root,fvar(15)>0 && root,fvar(15)-fvar(5) !=[-999,999]
triggerall=root,fvar(14)>0 && root,fvar(14)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
trigger1=root,fvar(32)>=0
trigger1=fvar(5) >0
fv = 32
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(32)<0 
fv =  32
value =-root,fvar(32)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(19)=0||root,fvar(19)-fvar(5) =[-999,999]
triggerall=root,fvar(18)>0 && root,fvar(18)-fvar(5) !=[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(16)>0 && root,fvar(16)-fvar(5) !=[-999,999]
triggerall=root,fvar(15)>0 && root,fvar(15)-fvar(5) !=[-999,999]
triggerall=root,fvar(14)>0 && root,fvar(14)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
trigger1=root,fvar(19)>=0
trigger1=fvar(5) >0
fv = 19
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(19)<0 
fv =  19
value =-root,fvar(19)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(18)=0||root,fvar(18)-fvar(5) =[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(16)>0 && root,fvar(16)-fvar(5) !=[-999,999]
triggerall=root,fvar(15)>0 && root,fvar(15)-fvar(5) !=[-999,999]
triggerall=root,fvar(14)>0 && root,fvar(14)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
trigger1=root,fvar(18)>=0
trigger1=fvar(5) >0
fv = 18
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(18)<0 
fv =  18
value =-root,fvar(18)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(37)=0||root,fvar(37)-fvar(5) =[-999,999]
triggerall=root,fvar(16)>0 && root,fvar(16)-fvar(5) !=[-999,999]
triggerall=root,fvar(15)>0 && root,fvar(15)-fvar(5) !=[-999,999]
triggerall=root,fvar(14)>0 && root,fvar(14)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
trigger1=root,fvar(37)>=0
trigger1=fvar(5) >0
fv = 37
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(37)<0 
fv =  37
value =-root,fvar(37)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(16)=0||root,fvar(16)-fvar(5) =[-999,999]
triggerall=root,fvar(15)>0 && root,fvar(15)-fvar(5) !=[-999,999]
triggerall=root,fvar(14)>0 && root,fvar(14)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
trigger1=root,fvar(16)>=0
trigger1=fvar(5) >0
fv = 16
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(16)<0 
fv =  16
value =-root,fvar(16)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(15)=0||root,fvar(15)-fvar(5) =[-999,999]
triggerall=root,fvar(14)>0 && root,fvar(14)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
trigger1=root,fvar(15)>=0
trigger1=fvar(5) >0
fv = 15
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(15)<0 
fv =  15
value =-root,fvar(15)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(14)=0||root,fvar(14)-fvar(5) =[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
trigger1=root,fvar(14)>=0
trigger1=fvar(5) >0
fv = 14
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(14)<0 
fv =  14
value =-root,fvar(14)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(31)=0||root,fvar(31)-fvar(5) =[-999,999]
trigger1=root,fvar(31)>=0
trigger1=fvar(5) >0
fv = 31
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(31)<0 
fv =  31
value =-root,fvar(31)





[State -2 , 1]
type = parentVarset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
triggerall=root,fvar(24)>1 && root,fvar(24)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(29)>1 && root,fvar(29)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(26)>1 && root,fvar(26)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(27)>1 && root,fvar(27)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(28)>1 && root,fvar(28)-enemynear(Var(36)),stateno*1000 !=[-999,999]
trigger1=root,fvar(25)=0 && var(14)<2
fv = 25
value =1
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(25)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 25
value =0
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(25)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 25
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))
[State -2 , 1]
type = parentVarset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
triggerall=root,fvar(29)>1 && root,fvar(29)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(26)>1 && root,fvar(26)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(27)>1 && root,fvar(27)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(28)>1 && root,fvar(28)-enemynear(Var(36)),stateno*1000 !=[-999,999]
trigger1=root,fvar(24)=0 && var(14)<2
fv = 24
value =1
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(24)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 24
value =0
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(24)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 24
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))
[State -2 , 1]
type = parentVarset 
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
triggerall=root,fvar(26)>1 && root,fvar(26)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(27)>1 && root,fvar(27)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(28)>1 && root,fvar(28)-enemynear(Var(36)),stateno*1000 !=[-999,999]
trigger1=root,fvar(29)=0 && var(14)<2
fv = 29
value =1
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(29)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 29
value =0
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(29)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 29
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))
[State -2 , 1]
type = parentVarset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
triggerall=root,fvar(27)>1 && root,fvar(27)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(28)>1 && root,fvar(28)-enemynear(Var(36)),stateno*1000 !=[-999,999]
trigger1=root,fvar(26)=0 && var(14)<2
fv = 26
value =1
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(26)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 26
value =0
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(26)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 26
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))
[State -2 , 1]
type = parentVarset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
triggerall=root,fvar(28)>1 && root,fvar(28)-enemynear(Var(36)),stateno*1000 !=[-999,999]
trigger1=root,fvar(27)=0 && var(14)<2
fv = 27
value =1
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(27)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 27
value =0
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(27)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 27
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))
[State -2 , 1]
type = parentVarset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
trigger1=root,fvar(28)=0 && var(14)<2
fv = 28
value =1
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(28)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 28
value =0
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(28)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 28
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))











[State -2:         VarSet]
type     = VarSet
trigger1=fvar(5)>0
fv = 5
value =-99999
Ignorehitpause=1
[State -2 , 1]
type = Varset
triggerall=fvar(5) =-99999
trigger1=var(13) !=enemynear(Var(36)),stateno
fv = 5
value =0
Ignorehitpause=1
[State -2 , 1]
type = Varset
triggerall=fvar(5) !=-99999
triggerall=((root,movetype =H) ||root,stateno !=[800,899])
trigger1=1
fv = 5
value =0
Ignorehitpause=1
[State -2:         VarSet]
type     = VarSet
triggerall=fvar(5)<=0
triggerall=fvar(5) !=-99999
triggerall=root,movetype!=H
triggerall=root,stateno<200||root,movetype=A||(root,stateno=[4000,4099])
trigger1=var(13)>0
trigger1=var(13) =enemynear(Var(36)),stateno
fv = 5 
value =-(var(13)*1000)-ifelse(var(14)>999,999,var(14)+ifelse((root,teamside=1),1,0))
Ignorehitpause=1












[State -2:         VarSet] 
type     = VarSet 
triggerall=var(50)=[0,999999]
trigger1=((root,stateno=[200,499])||(root,stateno=[800,999]))&&root,stateno!=230;;;;;&&(root,stateno!=[206,209])(root,stateno!=[206,209])
trigger1=(var(13)=0)||(var(35)=[1,8])||(fvar(5)=-99999)||(root,prevstateno=105)
v = 50 
value =var(50)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 50
value =var(50)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=[1,999]
trigger1=((root,stateno=[200,499])||(root,stateno=[800,999]))&&root,stateno!=230
trigger1=var(13)>0 
v = 50
value =-var(50)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=0
trigger1=((root,stateno=[200,499])||(root,stateno=[800,999]))&&root,stateno!=230
trigger1=var(13)>0 
v = 50
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=[-1999999,-1]
trigger1=(root,stateno=[120,159])||(root,movetype!=H)
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200&&root,inguarddist=0)||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 50
value =ifelse(var(50)<=-1000000,-var(50)-1000000,ifelse(var(50)>=-999,0,-Var(50)-(ceil(-Var(50)/1000)-ifelse(-Var(50)-(ceil(-Var(50)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 50
value =-var(50)
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 50
value =var(50)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(50)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(50)-(ceil(Var(50)/1000)-ifelse(Var(50)-(ceil(Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 50
value =var(50)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[0,999999]
trigger1=((root,stateno=[200,499])||(root,stateno=[800,999]))&&root,stateno!=230
trigger1=(var(13)=0)||(var(35)=[1,8])||(fvar(5)=-99999)||(root,prevstateno=105)
v = 51
value =var(51)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 51
value =var(51)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[1,999]
trigger1=((root,stateno=[200,499])||(root,stateno=[800,999]))&&root,stateno!=230
trigger1=var(13)>0 
v = 51
value =-var(51)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=0 && var(50)=[999,999999]
trigger1=((root,stateno=[200,499])||(root,stateno=[800,999]))&&root,stateno!=230
trigger1=var(13)>0 
v = 51
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[-1999999,-1]
trigger1=(root,stateno=[120,159])||(root,movetype!=H)
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200&&root,inguarddist=0)||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 51
value =ifelse(var(51)<=-1000000,-var(51)-1000000,ifelse(var(51)>=-999,0,-Var(51)-(ceil(-Var(51)/1000)-ifelse(-Var(51)-(ceil(-Var(51)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 51
value =-var(51)
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 51
value =var(51)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(51)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(51)-(ceil(Var(51)/1000)-ifelse(Var(51)-(ceil(Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 51
value =var(51)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[0,999999]
trigger1=((root,stateno=[200,499])||(root,stateno=[800,999]))&&root,stateno!=230
trigger1=(var(13)=0)||((var(35)!=[1,8])&&(var(35)!=[100,140])&&fvar(5)!=-99999)||(root,prevstateno=105)
v = 52
value =var(52)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 52
value =var(52)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[1,999]
trigger1=((root,stateno=[200,499])||(root,stateno=[800,999]))&&root,stateno!=230
trigger1=var(13)>0 
v = 52
value =-var(52)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=0
trigger1=((root,stateno=[200,499])||(root,stateno=[800,999]))&&root,stateno!=230
trigger1=var(13)>0 
v = 52
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[-1999999,-1]
trigger1=(root,stateno=[120,159])||(root,movetype!=H)
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200&&root,inguarddist=0)||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 52
value =ifelse(var(52)<=-1000000,-var(52)-1000000,ifelse(var(52)>=-999,0,-Var(52)-(ceil(-Var(52)/1000)-ifelse(-Var(52)-(ceil(-Var(52)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 52
value =-var(52)
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 52
value =var(52)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(52)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(52)-(ceil(Var(52)/1000)-ifelse(Var(52)-(ceil(Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 52
value =var(52)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[0,999999]
trigger1=((root,stateno=[200,499])||(root,stateno=[800,999]))&&root,stateno!=230
trigger1=(var(13)=0)||((var(35)!=[1,8])&&(var(35)!=[100,140])&&fvar(5)!=-99999)||(root,prevstateno=105);||numhelper(4010)
v = 53
value =var(53)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 53
value =var(53)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[1,999]
trigger1=((root,stateno=[200,499])||(root,stateno=[800,999]))&&root,stateno!=230
trigger1=var(13)>0 
v = 53
value =-var(53)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=0 && var(52)=[999,999999]
trigger1=((root,stateno=[200,499])||(root,stateno=[800,999]))&&root,stateno!=230
trigger1=var(13)>0 
v = 53
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[-1999999,-1]
trigger1=(root,stateno=[120,159])||(root,movetype!=H)
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200&&root,inguarddist=0)||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 53
value =ifelse(var(53)<=-1000000,-var(53)-1000000,ifelse(var(53)>=-999,0,-Var(53)-(ceil(-Var(53)/1000)-ifelse(-Var(53)-(ceil(-Var(53)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 53
value =-var(53)
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 53
value =var(53)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(53)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(53)-(ceil(Var(53)/1000)-ifelse(Var(53)-(ceil(Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 53
value =var(53)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[0,999999] 
trigger1=(root,stateno=[1300,1399]);;||(root,stateno=[1200,1299]))&&(root,stateno!=[206,209])(root,stateno!=[206,209])
trigger1=(var(13)=0);;||(var(35)=[1,8])||(fvar(5)=-99999)||(root,prevstateno=105)
v = 54
value =var(54)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 54
value =var(54)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[1,999]
trigger1=(root,stateno=[1300,1399])
trigger1=var(13)>0 
v = 54
value =-var(54)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=0
trigger1=(root,stateno=[1300,1399])
trigger1=var(13)>0 
v = 54
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200)||(root,ctrl&&var(35)!=[1,8])
v = 54
value =ifelse(var(54)<=-1000000,-var(54)-1000000,ifelse(var(54)>=-999,0,-Var(54)-(ceil(-Var(54)/1000)-ifelse(-Var(54)-(ceil(-Var(54)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 54
value =-var(54)
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 54
value =var(54)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(54)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(54)-(ceil(Var(54)/1000)-ifelse(Var(54)-(ceil(Var(54)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 54
value =var(54)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=[0,999999]
trigger1=(root,stateno=[1300,1399])
trigger1=(var(13)=0);||(var(35)=[1,8])||(fvar(5)=-99999)||(root,prevstateno=105)
v = 55
value =var(55)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 55
value =var(55)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=(var(55)=[1,999]) 
trigger1=(root,stateno=[1300,1399])
trigger1=var(13)>0 
v = 55
value =-var(55)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=0 && (var(54)=[999,999999])
trigger1=(root,stateno=[1300,1399])
trigger1=var(13)>0 
v = 55
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200)||(root,ctrl&&var(35)!=[1,8])
v = 55
value =ifelse(var(55)<=-1000000,-var(55)-1000000,ifelse(var(55)>=-999,0,-Var(55)-(ceil(-Var(55)/1000)-ifelse(-Var(55)-(ceil(-Var(55)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 55
value =-var(55)
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 55
value =var(55)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(55)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(55)-(ceil(Var(55)/1000)-ifelse(Var(55)-(ceil(Var(55)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 55
value =var(55)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[0,999999]
trigger1=(root,stateno=[2000,3999])
trigger1=(var(13)=0)
v = 57
value =var(57)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 57
value =var(57)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[1,999]
trigger1=(root,stateno=[2000,3999])
trigger1=var(13)>0 
v = 57
value =-var(57)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=0 ;;&& var(5)=[999,999999]
trigger1=(root,stateno=[2000,3999])
trigger1=var(13)>0 
v = 57
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200)
v = 57
value =ifelse(var(57)<=-1000000,-var(57)-1000000,ifelse(var(57)>=-999,0,-Var(57)-(ceil(-Var(57)/1000)-ifelse(-Var(57)-(ceil(-Var(57)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[-1999999,-1]
trigger1=(((root,Ctrl)||(root,StateNo =[120,149]))&&root,statetype!=A)||(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 57
value =-var(57)
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 57
value =var(57)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(57)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(57)-(ceil(Var(57)/1000)-ifelse(Var(57)-(ceil(Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 57
value =var(57)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[0,999999]
trigger1=(root,stateno=[2000,3999])
trigger1=(var(13)=0)
v = 58
value =var(58)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 58
value =var(58)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[1,999]
trigger1=(root,stateno=[2000,3999])
trigger1=var(13)>0 
v = 58
value =-var(58)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=0 && var(57)=[999,999999]
trigger1=(root,stateno=[2000,3999])
trigger1=var(13)>0 
v = 58
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200)
v = 58
value =ifelse(var(58)<=-1000000,-var(58)-1000000,ifelse(var(58)>=-999,0,-Var(58)-(ceil(-Var(58)/1000)-ifelse(-Var(58)-(ceil(-Var(58)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[-1999999,-1]
trigger1=(((root,Ctrl)||(root,StateNo =[120,149]))&&root,statetype!=A)||(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 58
value =-var(58)
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 58
value =var(58)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(58)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(58)-(ceil(Var(58)/1000)-ifelse(Var(58)-(ceil(Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 58
value =var(58)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[0,999999]
triggerall=(root,stateno=[230,240])||(root,stateno=[20230,20240])
trigger1=(var(13)=0)
v = 56
value =var(56)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 56
value =var(56)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[1,999]
triggerall=(root,stateno=[230,240])||(root,stateno=[20230,20240])
trigger1=var(13)>0 
v = 56
value =-var(56)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=0
triggerall=(root,stateno=[230,240])||(root,stateno=[20230,20240])
trigger1=var(13)>0 
v = 56
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[-1999999,-1]
trigger1=(root,ctrl&&helper(218),var(35)!=[1,9])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200)
v = 56
value =ifelse(var(56)<=-1000000,-var(56)-1000000,ifelse(var(56)>=-999,0,-Var(56)-(ceil(-Var(56)/1000)-ifelse(-Var(56)-(ceil(-Var(56)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150]);||(root,ctrl&&helper(218),var(35)!=[1,9])
v = 56
value =-var(56)
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 56
value =var(56)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(56)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(56)-(ceil(Var(56)/1000)-ifelse(Var(56)-(ceil(Var(56)/1000)*1000)<0,1,0))*1000)-(ceil(p2stateno/10)-ifelse(p2stateno-(ceil(p2stateno/10)*10)<0,1,0)) =0
v = 56
value =var(56)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[0,999999]
triggerall=(root,stateno=[230,240])||(root,stateno=[20230,20240])
trigger1=(var(13)=0)
v = 59
value =var(59)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 59
value =var(59)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[1,999]
triggerall=(root,stateno=[230,240])||(root,stateno=[20230,20240])
trigger1=var(13)>0 
v = 59
value =-var(59)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=0 && var(56)=[999,999999]
triggerall=(root,stateno=[230,240])||(root,stateno=[20230,20240])
trigger1=var(13)>0 
v = 59
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[-1999999,-1]
trigger1=(root,ctrl&&helper(218),var(35)!=[1,9])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200)
v = 59
value =ifelse(var(59)<=-1000000,-var(59)-1000000,ifelse(var(59)>=-999,0,-Var(59)-(ceil(-Var(59)/1000)-ifelse(-Var(59)-(ceil(-Var(59)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150]);||(root,ctrl&&helper(218),var(35)!=[1,9])
v = 59
value =-var(59)
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 59
value =var(59)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(59)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(59)-(ceil(Var(59)/1000)-ifelse(Var(59)-(ceil(Var(59)/1000)*1000)<0,1,0))*1000)-(ceil(p2stateno/10)-ifelse(p2stateno-(ceil(p2stateno/10)*10)<0,1,0)) =0
v = 59
value =var(59)+2000000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(43)=[1,999]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT 
v = 43
value =-root,var(43)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(43)=0
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT 
v = 43
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(43)=[-1999999,-1]
trigger1=1;(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 43
value =-root,var(43)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(43)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 43
value =root,var(43)-2000000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(43)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(root,var(43)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(root,Var(43)-(ceil(root,Var(43)/1000)-ifelse(root,Var(43)-(ceil(root,Var(43)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
trigger3=numenemy>1&&(enemynear(0),life>0&&enemynear(1),life>0)
v = 43
value =root,var(43)+2000000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(44)=[1,999]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT
v = 44
value =-root,var(44)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(44)=0 && root,var(43)=[999,999999]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT
v = 44
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(44)=[-1999999,-1]
trigger1=1;(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 44
value =-root,var(44)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(44)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 44
value =root,var(44)-2000000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(44)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(root,var(44)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(root,Var(44)-(ceil(root,Var(44)/1000)-ifelse(root,Var(44)-(ceil(root,Var(44)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
trigger3=numenemy>1&&(enemynear(0),life>0&&enemynear(1),life>0)
v = 44
value =root,var(44)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[0,999999]
triggerall=(root,stateno=[160,169])
trigger1=(var(13)=0)||root,stateno=198
v = 44
value =var(44)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 44
value =var(44)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[1,999]
triggerall=(root,stateno=[160,169])
trigger1=var(13)>0 
v = 44
value =-var(44)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=0
triggerall=(root,stateno=[160,169])
trigger1=var(13)>0 
v = 44
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[-1999999,-1]
trigger1=(root,ctrl&&root,statetype!=A)||(enemynear(Var(36)),movetype=H&&enemynear(Var(36)),stateno>=200)
v = 44
value =ifelse(var(44)<=-1000000,-var(44)-1000000,ifelse(var(44)>=-999,0,-Var(44)-(ceil(-Var(44)/1000)-ifelse(-Var(44)-(ceil(-Var(44)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 44
value =-var(44)
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 44
value =var(44)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(44)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(44)-(ceil(Var(44)/1000)-ifelse(Var(44)-(ceil(Var(44)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 44
value =var(44)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[0,999999]
triggerall=(root,stateno=[160,169])
trigger1=(var(13)=0)
v = 45
value =var(45)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 45
value =var(45)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[1,999]
triggerall=(root,stateno=[160,169])
trigger1=var(13)>0 
v = 45
value =-var(45)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=0 && var(44)=[999,999999]
triggerall=(root,stateno=[160,169])
trigger1=var(13)>0 
v = 45
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[-1999999,-1]
trigger1=(root,ctrl&&root,statetype!=A)||(enemynear(Var(36)),movetype=H&&enemynear(Var(36)),stateno>=200)
v = 45
value =ifelse(var(45)<=-1000000,-var(45)-1000000,ifelse(var(45)>=-999,0,-Var(45)-(ceil(-Var(45)/1000)-ifelse(-Var(45)-(ceil(-Var(45)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])||root,ctrl
v = 45
value =-var(45)
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 45
value =var(45)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(45)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(45)-(ceil(Var(45)/1000)-ifelse(Var(45)-(ceil(Var(45)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 45
value =var(45)+2000000





 





 

[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(16)=[-99999,0]
triggerall=(root,stateno=131)||(root,statetype=C&&root,stateno=[152,153])
trigger1=var(13)=[1,99999]
v = 16
value =-var(13)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(16)=[-99999,-1]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger2=root,life<=0
trigger3=enemynear(Var(36)),movetype !=A
trigger4=root,stateno=[800,899]
trigger5=root,movetype=A
trigger6=root,stateno=[2100,2199]
trigger7=root,stateno=140
v = 16
value =0
[State -2:         VarSet]
type     = parentVarSet 
triggerall=root,var(16)=[-99999,-1]
triggerall=(root,movetype !=H)||(root,stateno=[120,159])
trigger1=root,statetype !=C
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=root,stateno !=[130,159]
trigger4=(root,stateno!=131)&&(root,stateno!=[152,153])
v = 16
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(16)<-99999
trigger1=(root,stateno=[120,159])||root,movetype !=H
v = 16
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(16)=[-199999,-100000]
trigger1=1
v = 16
value =-root,var(16)-100000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(16)=[-99999,-1]
trigger1=(root,stateno=[5000,5150])||(root,statetype=L)||((root,stateno >=200) && (root,movetype=H))
v = 16
value =root,var(16)-100000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(15)=[-99999,0]
triggerall=root,var(16)>0&&root,var(16)!=var(13)
triggerall=(root,stateno=131)||(root,statetype=C&&root,stateno=[152,153])
trigger1=var(13)=[1,99999]
v = 15
value =-var(13)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(15)=[-99999,-1]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger2=root,life<=0
trigger3=enemynear(Var(36)),movetype !=A
trigger4=root,stateno=[800,899]
trigger5=root,movetype=A
trigger6=root,stateno=[2100,2199]
trigger7=root,stateno=140
trigger8=root,var(16)<=0||root,var(16)=-root,var(15)
v = 15
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(15)=[-99999,-1]
triggerall=(root,movetype !=H)||(root,stateno=[120,159])
trigger1=root,statetype !=C
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=root,stateno !=[130,159]
trigger4=(root,stateno!=131)&&(root,stateno!=[152,153])
v = 15
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(15)<-99999
trigger1=(root,stateno=[120,159])||root,movetype !=H
v = 15
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(15)=[-199999,-100000]
trigger1=1
v = 15
value =-root,var(15)-100000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(15)=[-99999,-1]
trigger1=(root,stateno=[5000,5150])||(root,statetype=L)||((root,stateno >=200) && (root,movetype=H))
v = 15
value =root,var(15)-100000

















[State -2:         VarSet, Damage]
type     = VarSet
triggerall = enemynear(Var(36)),movetype=A
triggerall=numenemy=1||enemynear(0),life<=0||enemynear(1),life<=0
trigger1 =enemynear(Var(36)),HitDefAttr =SCA,HA
trigger2=var(15) - (enemynear(Var(36)),power*100)>=100000
v        = 15
value    =var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)+100
[State -2:         VarSet, Damage]
type     = VarSet
triggerall=numenemy=1||enemynear(0),life<=0||enemynear(1),life<=0
trigger1=var(15)-((ceil(var(15)/1000)-ifelse(var(15)-(ceil(var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
v        = 15
value    = var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)+((ceil(enemynear(Var(36)),power/10)-ifelse(enemynear(Var(36)),power-(ceil(enemynear(Var(36)),power/10)*10)<0,1,0))*1000)
[State -2:         VarSet, Damage]
type     = VarSet
triggerall=var(15)-((ceil(var(15)/1000)-ifelse(var(15)-(ceil(var(15)/1000)*1000)<0,1,0))*1000)=[100,299]
trigger1 = enemynear(Var(36)),movetype !=A
v        = 15
value    = var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)

[State -2:         VarSet]
type     = varset
trigger1=root,stateno=131||(root,stateno=130&&root,time<=1&&prevstateno=131)
;trigger1=root,inguarddist=0
;trigger1=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)=0
trigger2=root,statetype=L||root,stateno=[18300,18399]
trigger2=numpartner=0
trigger2=enemynear(Var(36)),movetype=A||root,stateno=[18300,18399]
trigger2=var(14)<=10||root,stateno=[18300,18399]
trigger3=(root,facing=1 && enemynear(Var(36)),pos x<root,pos x)||(root,facing=-1 && enemynear(Var(36)),pos x>root,pos x)
trigger3=enemynear(Var(36)),movetype=A && root,inguarddist=0
trigger3=numpartner=0 && numenemy=1
trigger4=numpartner=0 && numenemy=1
trigger4=(root,facing=1 && enemynear(Var(36)),pos x<=root,pos x)||(root,facing=-1 && enemynear(Var(36)),pos x>=root,pos x)||enemynear(Var(36)),vel x !=0
trigger4=enemynear(Var(36)),statetype=A && (var(14)<=20||(enemynear(Var(36)),vel x=0 && enemynear(Var(36)),vel y>0)) && enemynear(Var(36)),movetype =A 
trigger5=(var(35)=[100,101])||(var(35)=[200,201])
v        = 15
value    =((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)+ifelse(root,stateno=131&& root,inguarddist=0,1,10)
[State -2, Run Back]
type     = varadd
triggerall=numpartner=0
triggerall=numenemy=1
triggerall=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)=0
triggerall=enemynear(Var(36)),movetype=A && root,inguarddist=0
trigger1=root,fvar(30)>999 && root,fvar(30)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger1=root,fvar(30)>999 && root,fvar(30)-((ceil(root,fvar(30)/1000)-ifelse(root,fvar(30)-(ceil(root,fvar(30)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger2=root,fvar(33)>999 && root,fvar(33)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger2=root,fvar(33)>999 && root,fvar(33)-((ceil(root,fvar(33)/1000)-ifelse(root,fvar(33)-(ceil(root,fvar(33)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger3=root,fvar(32)>999 && root,fvar(32)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger3=root,fvar(32)>999 && root,fvar(32)-((ceil(root,fvar(32)/1000)-ifelse(root,fvar(32)-(ceil(root,fvar(32)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger4=root,fvar(19)>999 && root,fvar(19)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger4=root,fvar(19)>999 && root,fvar(19)-((ceil(root,fvar(19)/1000)-ifelse(root,fvar(19)-(ceil(root,fvar(19)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger5=root,fvar(18)>999 && root,fvar(18)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger5=root,fvar(18)>999 && root,fvar(18)-((ceil(root,fvar(18)/1000)-ifelse(root,fvar(18)-(ceil(root,fvar(18)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger6=root,fvar(37)>999 && root,fvar(37)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger6=root,fvar(37)>999 && root,fvar(37)-((ceil(root,fvar(37)/1000)-ifelse(root,fvar(37)-(ceil(root,fvar(37)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger7=root,fvar(16)>999 && root,fvar(16)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger7=root,fvar(16)>999 && root,fvar(16)-((ceil(root,fvar(16)/1000)-ifelse(root,fvar(16)-(ceil(root,fvar(16)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger8=root,fvar(15)>999 && root,fvar(15)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger8=root,fvar(15)>999 && root,fvar(15)-((ceil(root,fvar(15)/1000)-ifelse(root,fvar(15)-(ceil(root,fvar(15)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger9=root,fvar(14)>999 && root,fvar(14)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger9=root,fvar(14)>999 && root,fvar(14)-((ceil(root,fvar(14)/1000)-ifelse(root,fvar(14)-(ceil(root,fvar(14)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger10=root,fvar(31)>999 && root,fvar(31)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger10=root,fvar(31)>999 && root,fvar(31)-((ceil(root,fvar(31)/1000)-ifelse(root,fvar(31)-(ceil(root,fvar(31)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
v        = 15
value    =10
[State -2:         VarSet]
type     = varadd
trigger1=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)=[1,98]
trigger1=root,movetype !=H
trigger1=root,statetype !=L
trigger1=root,stateno !=[5000,5150]
trigger1=root,stateno !=[8300,8305]
trigger1=root,stateno !=[18300,18305]
v        = 15
value    =1
[State -2:         VarSet]
type     = varset
trigger1=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)=[3,9]
trigger2=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)>=20
trigger3=root,stateno=[150,159]
trigger3=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)>1||var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)>10
trigger4=root,stateno=[5000,5059]
;trigger5=inguarddist
v        = 15
value    =((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)





[State -2 , 1]
type = Varset
triggerall=var(21)=[1,2]
trigger1=enemynear(Var(36)),stateno =[0,199]
trigger2=enemynear(Var(36)),movetype=A
trigger3=enemynear(Var(36)),stateno=[120,159]
v = 21
value =ifelse(var(21)=2,3,0)
[State -2 , 1]
type = Varset
trigger1=var(21)<3
trigger1=enemynear(Var(36)),stateno =5120
v = 21
value =1
[State -2 , 1]
type = Varset
trigger1=var(21)=1 && var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)=[1,999]
trigger1=(enemynear(Var(36)),stateno !=[5100,5110])&&(enemynear(Var(36)),stateno !=[0,199])
trigger1=(enemynear(Var(36)),vel x>2||enemynear(Var(36)),statetype=A) && numenemy=1 && numpartner=0
v = 21
value =3
[State -2 , 1]
type = Varset
trigger1=var(21)=0 && var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)=[1,999]
trigger1=(enemynear(Var(36)),stateno =5120)&&(enemynear(Var(36)),stateno !=[0,199])
trigger1=(enemynear(Var(36)),vel x>2||enemynear(Var(36)),statetype=A) && numenemy=1 && numpartner=0
v = 21
value =2
[State -2 , 1]
type = Varadd
trigger1=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)=[1,998]
v = 18
value =1
[State -2 , 1]
type = Varadd
trigger1=enemynear(Var(36)),life>0
trigger1=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)=0
trigger1=enemynear(Var(36)),stateno=[5100,5120]
v = 18
value =1
[State -2 , 1]
type = Varset
trigger1=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)>=1
trigger1=(root,stateno=1200&&enemynear(Var(36)),stateno!=[5100,5159])||enemynear(Var(36)),stateno =[5000,5059]
v = 18
value =((ceil(var(53)/1000)-ifelse(var(53)-(ceil(var(53)/1000)*1000)<0,1,0))*1000)
[State -2 , 1]
type = Varset
triggerall=var(21)=3 && var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)=[1,999]
trigger1=enemynear(Var(36)),stateno =[0,199]
trigger2=enemynear(Var(36)),movetype=A
trigger3=enemynear(Var(36)),stateno=[120,159]
v = 18
value =1000+var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)
[State -2 , 1]
type = Varset
triggerall=var(18)=[1000,1999]
trigger1=enemynear(Var(36)),stateno =[0,199]
trigger2=enemynear(Var(36)),movetype=A
trigger3=enemynear(Var(36)),stateno=[120,159]
v = 18
value =1000
[State -2 , 1]
type = Varset
triggerall=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)=[1,999]
trigger1=enemynear(Var(36)),stateno =[0,199]
trigger2=enemynear(Var(36)),movetype=A
trigger3=enemynear(Var(36)),stateno=[120,159]
v = 18
value =(var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000))*1000














[State -2 , 1]
type = Varadd
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)=30
trigger1=(enemynear(Var(36)),stateno=[5100,5150])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno=[800,899])
v = 19
value =-29
[State -2 , 1]
type = Varset
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)=20
trigger2=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)=30
trigger2=enemynear(Var(36)),movetype=A||enemynear(Var(36)),stateno=[0,199]
v = 19
value =((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)
[State -2 , 1]
type = Varadd
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)>1
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)<=19
v = 19
value =1
[State -2 , 1]
type = Varadd
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)=0
trigger1=(enemynear(Var(36)),stateno=[5100,5150])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno=[800,899])||(enemynear(Var(36)),statetype=A && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=1000)
v = 19
value =ifelse((enemynear(Var(36)),stateno=[5100,5150])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno=[800,899]),1,30)
[State -2 , 1]
type = Varadd
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)=1
trigger1=enemynear(Var(36)),movetype=A||enemynear(Var(36)),stateno=[0,199]
v = 19
value =1
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/1000)-ifelse(var(19)-(ceil(var(19)/1000)*1000)<0,1,0))*1000)=[0,99]
triggerall=root,inguarddist
trigger1=var(13)<=0 && enemynear(Var(36)),movetype !=A
v = 19
value =100
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/1000)-ifelse(var(19)-(ceil(var(19)/1000)*1000)<0,1,0))*1000)=[100,199]
trigger1=root,inguarddist=0
v = 19
value =-100
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/10000)-ifelse(var(19)-(ceil(var(19)/10000)*10000)<0,1,0))*10000)=[0,999]
trigger1=var(13)<=0 && root,movetype =A
v = 19
value =1000
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/10000)-ifelse(var(19)-(ceil(var(19)/10000)*10000)<0,1,0))*10000)=[0,999]
trigger1=root,stateno=305
v = 19
value =2000
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/10000)-ifelse(var(19)-(ceil(var(19)/10000)*10000)<0,1,0))*10000)=[1000,1999]
trigger1=root,ctrl
trigger2=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 19
value =ifelse(root,ctrl,-1000,1000)
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/10000)-ifelse(var(19)-(ceil(var(19)/10000)*10000)<0,1,0))*10000)=[2000,2999]
triggerall=enemynear(Var(36)),pos x-root,pos x=[-120,120]
triggerall=(root,stateno=[120,159])||((root,stateno!=[5100,5150])&&(root,movetype !=H))
trigger1=root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)<30
trigger1=random<=10+ifelse((root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)<20),20,0)
trigger2=root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)>=30
trigger2=random<=8;+ifelse((root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)<20),20,10)
v = 19
value =-2000
[State -2 , 1]
type = Varadd
triggerall= root,movetype!=A 
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[10000,19999]
trigger2=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[30000,39999]
v = 19
value =ifelse(var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)<20000,-10000,-30000)
[State -2 , 1]
type = Varadd
triggerall= root,movetype!=A 
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[20000,29999]
v = 19
value =-20000
[State -2 , 1]
type = Varadd
trigger1= enemynear(Var(36)),stateno -var(13)!=[-9,9]
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[60000,69999]
trigger2= enemynear(Var(36)),stateno<160 ||(enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13))||(enemynear(Var(36)),movetype=H)||(root,movetype=H)
trigger2=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[80000,89999]
v = 19
value =ifelse(var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)<70000,-60000,-80000)
[State -2 , 1]
type = Varadd
trigger1= enemynear(Var(36)),stateno !=var(13)
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[70000,79999]
v = 19
value =-70000
[State -2 , 1]
type = Varadd
triggerall= root,movetype=A && (var(13)>0||inguarddist=0) && ((root,stateno!=9212)||(enemynear(Var(36)),statetype!=A))
;triggerall=((stateno!=[8860,8869])||stateno=[8862,8863])&&((stateno!=[8850,8859])||stateno=8850)&&((stateno!=[1060,1069])||stateno=1060||stateno=1065)||((stateno!=[10,19])||stateno=19)
triggerall=numenemy=1||enemynear(0),life<=0||enemynear(1),life<=0
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[0,9999]
v = 19
value =ifelse(var(13)>0,20000,ifelse(var(12)<160 && (enemynear(Var(36)),movetype!=H),30000,10000))
[State -2 , 1]
type = Varadd
trigger1=enemynear(Var(36)),stateno!=var(13)
;trigger1=((stateno!=[8860,8869])||stateno=[8862,8863])&&((stateno!=[8850,8859])||stateno=8850)&&((stateno!=[1060,1069])||stateno=1060||stateno=1065)||((stateno!=[10,19])||stateno=19)
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[20000,29999]
v = 19
value =ifelse((enemynear(Var(36)),movetype=A),50000,ifelse((enemynear(Var(36)),stateno>=160),60000,10000))
[State -2 , 1]
type = Varadd
;triggerall=((stateno!=[8860,8869])||stateno=[8862,8863])&&((stateno!=[8850,8859])||stateno=8850)&&((stateno!=[1060,1069])||stateno=1060||stateno=1065)||((stateno!=[10,19])||stateno=19)
trigger1= enemynear(Var(36)),movetype=A||inguarddist
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[10000,19999]
trigger2= enemynear(Var(36)),movetype=A||inguarddist||(enemynear(Var(36)),stateno>=160 && enemynear(Var(36)),movetype!=H)
trigger2=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[30000,39999]
v = 19
value =50000
[State -2 , 1]
type = Varadd
triggerall= var(35)=7 && root,stateno=[1100,1110]
triggerall=partner,life<=0;numenemy=1||enemynear(0),life<=0||enemynear(1),life<=0
trigger1=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[0,99999]
trigger2=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[200000,299999]
trigger3=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[400000,499999]
trigger4=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[600000,699999]
v = 19
value =100000
[State -2 , 1]
type = Varadd
triggerall= root,stateno!=[1100,1110]
trigger1=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[100000,199999]
trigger2=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[300000,399999]
trigger3=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[500000,599999]
trigger4=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[700000,799999]
v = 19
value =100000
[State -2 , 1]
type = Varset
trigger1= enemynear(Var(36)),movetype=H && root,stateno=1150
trigger2=root,stateno=[1100,1110]
trigger2=root,var(59)-((ceil(root,var(59)/10)-ifelse(root,var(59)-(ceil(root,var(59)/10)*10)<0,1,0))*10)<3
trigger3=root,prevstateno=[1100,1110]
trigger3=root,stateno!=[1100,1199]
trigger3=root,movetype!=H
v = 19
value =800000+var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)+((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)
[State -2 , 1]
type = Varset
triggerall= enemynear(Var(36)),movetype!=H
trigger1=1
v = 19
value =var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)+((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)
[State -2 , 1]
type = Varadd
triggerall=numenemy=1 && var(17)>0
trigger1=root,inguarddist 
v = 17
value =1
[State -2 , 1]
type = Varset
trigger1=root,inguarddist =0
v = 17
value =0
[State -2 , 1]
type = Varadd
triggerall=numenemy=1 && var(17)=0
trigger1=root,inguarddist && enemynear(Var(36)),movetype!=A
v = 17
value =1
[State -2 , 1]
type = Varadd 
trigger1=var(16)<999 && root,stateno=[120,159]
trigger2=(var(16)=[1,1000]) && root,stateno!=[120,159]
v = 16
value =ifelse((root,stateno!=[120,159]),-var(16),1)



[State -2 , 1]
type = Varset
trigger1=var(35)=1||var(35)=7||var(35)=[4,5]
trigger1=var(13)!=enemynear(Var(36)),stateno
v = 35
value =3
[State -2 , 1]
type = Varset
trigger1=var(35)!=[10,39]
trigger1=(root,stateno=45)
v = 35
value =99
[State -2 , 1]
type = Varset
trigger1=(root,stateno=102)
v = 35
value =98
[State -2 , 1]
type = Varset
trigger1=root,stateno=161;; && var(13)>0
v = 35
value =ifelse(var(13)>0,7,2)
[State -2 , 1]
type = Varset
trigger1=var(35)=[7,8]
trigger1=var(13)!=enemynear(Var(36)),stateno
v = 35
value =2
[State -2 , 1]
type = Varset
trigger1=var(35)!=5
trigger1=var(35)!=[7,9]
trigger1 = (enemynear(Var(36)),HitDefAttr =SCA,NT,ST,HT)||root,var(46)>=2000000||root,var(47)>=2000000
v = 35
value =4
[State -2 , 1]
type = Varset
triggerall=((var(35)!=[5,40])&&(var(35)!=[98,300]));||var(35)=8
trigger1=(root,stateno=108)||(root,stateno=105)||(root,stateno=[41,49])||(root,stateno=162);;||(root,stateno=250)||(root,stateno=261)
v = 35
value =ifelse(var(35)=4,5,ifelse(var(13)>0,1,2))
[State -2 , 1]
type = Varset
trigger1=(root,stateno=[1100,1199]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
v = 35
value =11
[State -2 , 1]
type = Varset
trigger1=(root,stateno=810) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
v = 35
value =18
[State -2 , 1]
type = Varset
trigger1=(root,stateno=815) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
v = 35
value =17
[State -2 , 1]
type = Varset
trigger1=(root,stateno=[1300,1399]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
v = 35
value =12
[State -2 , 1]
type = Varset
triggerall=var(35)!=14
trigger1=(root,stateno=410) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
trigger2=(root,stateno=1400) && (root,prevstateno!=[200,499]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
v = 35
value =13
[State -2 , 1]
type = Varset
trigger1=(root,stateno=1400) && (root,prevstateno=[800,899]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
v = 35
value =14
[State -2 , 1]
type = Varset
trigger1=(var(35)=12)
trigger1=(root,stateno=[6000,6999])||(root,prevstateno=[6000,6999]);;&&(root,stateno!=410)
v = 35
value =20
[State -2 , 1]
type = Varset
triggerall=var(35)!=[13,14]
trigger1=(root,stateno=1401) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
v = 35
value =15
[State -2 , 1]
type = Varset
trigger1=(root,stateno=1000) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
v = 35
value =16
[State -2 , 1]
type = Varset
trigger1=(root,stateno=3000) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
v = 35
value =17
[State -2 , 1]
type = Varset
trigger1=(root,stateno=220) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
v = 35
value =19
[State -2 , 1]
type = Varset
trigger1=(var(35)=[2,3])||(var(35)=9)||(var(35)=[97,99]);;||(var(35)=98)
trigger1=(root,statetype!=A)||root,movetype=H||root,movetype=A
trigger1=(root,ctrl && root,stateno!=[100,119])||root,movetype=H||root,movetype=A
trigger2=(var(35)=[10,39]);||(var(35)=[100,199])
trigger2=(var(35)!=19)||(enemynear(Var(36)),ctrl)||(enemynear(Var(36)),stateno<200)||root,movetype=H||enemynear(Var(36)),movetype=A
trigger2=(enemynear(Var(36)),movetype!=H)||var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)>0||(enemynear(Var(36)),stateno =[5100,5150])
trigger3=(var(35)=13)
trigger3=(root,stateno=[200,499])&&(root,stateno!=410)
trigger4=(var(35)=18)
trigger4=(root,stateno=[1000,1999]);;&&(root,stateno!=410)
trigger5=(var(35)=16||var(35)=20)
trigger5=(root,stateno=[200,699]);;&&(root,stateno!=410)
v = 35
value =0







[State -2:         VarSet]
type     = VarSet
trigger1=fvar(30)<=0 && (enemynear(Var(36)),statetype=L||enemynear(Var(36)),movetype=A||enemynear(Var(36)),movetype=H)
fv = 30 
value =0
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(30)<=0 && (enemynear(Var(36)),statetype!=L) && (enemynear(Var(36)),movetype!=A) && (enemynear(Var(36)),movetype!=H) && (enemynear(Var(36)),statetype=A)
fv = 30 
value =-fvar(30)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(30)<=0 && enemynear(Var(36)),statetype!=A
fv = 30 
value =-enemynear(Var(36)),stateno
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(30)>0 && enemynear(Var(36)),stateno=fvar(30) && (root,stateno=300||root,stateno=20240)
fv = 30 
value =fvar(30)+100000
[State -2:         VarSet]
type     = VarSet
trigger1=(fvar(30)=[100000,199999]) &&  (root,ctrl||enemynear(Var(36)),movetype=H||root,movetype=H)
fv = 30 
value =ifelse((root,movetype=H),fvar(30)+100000,fvar(30)-100000)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(31)<=0 && (enemynear(Var(36)),statetype=L||enemynear(Var(36)),movetype=A||enemynear(Var(36)),movetype=H)
trigger2=fvar(30)=enemynear(Var(36)),stateno||fvar(30)-100000=enemynear(Var(36)),stateno||fvar(30)-200000=enemynear(Var(36)),stateno
fv = 31 
value =0
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(31)<=0 && (enemynear(Var(36)),statetype!=L) && (enemynear(Var(36)),movetype!=A) && (enemynear(Var(36)),movetype!=H) && (enemynear(Var(36)),statetype=A)
fv = 31 
value =-fvar(31)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(31)<=0 && fvar(30)>0 && enemynear(Var(36)),statetype!=A
fv = 31
value =-enemynear(Var(36)),stateno
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(31)>0 && enemynear(Var(36)),stateno=fvar(31) && (root,stateno=300||root,stateno=20240)
fv = 31
value =fvar(31)+100000
[State -2:         VarSet]
type     = VarSet
trigger1=(fvar(31)=[100000,199999]) &&  (root,ctrl||enemynear(Var(36)),movetype=H||root,movetype=H)
fv = 31 
value =ifelse((root,movetype=H),fvar(31)+100000,fvar(31)-100000)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(31)<=0 && (enemynear(Var(36)),statetype=L||enemynear(Var(36)),movetype=A||enemynear(Var(36)),movetype=H)
trigger2=fvar(30)=enemynear(Var(36)),stateno||fvar(30)-100000=enemynear(Var(36)),stateno||fvar(30)-200000=enemynear(Var(36)),stateno
fv = 31 
value =0
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(32)<=0 && (enemynear(Var(36)),statetype=L||enemynear(Var(36)),movetype=A||enemynear(Var(36)),movetype=H)
trigger2=fvar(30)=enemynear(Var(36)),stateno||fvar(30)-100000=enemynear(Var(36)),stateno||fvar(30)-200000=enemynear(Var(36)),stateno
trigger3=fvar(31)=enemynear(Var(36)),stateno||fvar(31)-100000=enemynear(Var(36)),stateno||fvar(31)-200000=enemynear(Var(36)),stateno
fv = 32 
value =0
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(32)<=0 && (enemynear(Var(36)),statetype!=L) && (enemynear(Var(36)),movetype!=A) && (enemynear(Var(36)),movetype!=H) && (enemynear(Var(36)),statetype=A)
fv = 32
value =-fvar(32)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(32)<=0 && fvar(30)>0 && fvar(31)>0 && enemynear(Var(36)),statetype!=A
fv = 32
value =-enemynear(Var(36)),stateno
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(32)>0 && enemynear(Var(36)),stateno=fvar(32) && (root,stateno=300||root,stateno=20240)
fv = 32
value =fvar(32)+100000
[State -2:         VarSet]
type     = VarSet
trigger1=(fvar(32)=[100000,199999]) &&  (root,ctrl||enemynear(Var(36)),movetype=H||root,movetype=H)
fv = 32
value =ifelse((root,movetype=H),fvar(32)+100000,fvar(32)-100000)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(32)<=0 && (enemynear(Var(36)),statetype=L||enemynear(Var(36)),movetype=A||enemynear(Var(36)),movetype=H)
trigger2=fvar(30)=enemynear(Var(36)),stateno||fvar(30)-100000=enemynear(Var(36)),stateno||fvar(30)-200000=enemynear(Var(36)),stateno
trigger3=fvar(31)=enemynear(Var(36)),stateno||fvar(31)-100000=enemynear(Var(36)),stateno||fvar(31)-200000=enemynear(Var(36)),stateno
fv = 32
value =0


[State -2:         VarSet]
type     = VarSet
trigger1=root,movetype=H||root,movetype=A
trigger2=enemynear(Var(36)),movetype=A && fvar(34)!=enemynear(Var(36)),stateno
fv = 33
value =((ceil(fvar(33)/10)-ifelse(fvar(33)-(ceil(fvar(33)/10)*10)<0,1,0))*10)
[State -2:         VarSet]
type     = VarSet
trigger1=enemynear(Var(36)),movetype=A
trigger1=fvar(34)!=enemynear(Var(36)),stateno
fv = 34
value =enemynear(Var(36)),stateno
[State -2:         VarSet]
type     = Varadd
trigger1=var(14)=1 && fvar(33)-((ceil(fvar(33)/10)-ifelse(fvar(33)-(ceil(fvar(33)/10)*10)<0,1,0))*10)<9
fv = 33
value =1
[State -2:         VarSet]
type     = Varadd
trigger1=(root,movetype!=H)&&(enemynear(Var(36)),movetype!=H)
trigger1=fvar(33)-((ceil(fvar(33)/10000)-ifelse(fvar(33)-(ceil(fvar(33)/10000)*10000)<0,1,0))*10000)<9980
fv = 33
value =10
[State -2:         VarSet]
type     = Varset
trigger1=(root,movetype!=A)&&(root,movetype!=H)&&(enemynear(Var(36)),movetype=A)
trigger1=fvar(33)-((ceil(fvar(33)/10000)-ifelse(fvar(33)-(ceil(fvar(33)/10000)*10000)<0,1,0))*10000)>10
fv = 33
value =fvar(33)-((ceil(fvar(33)/10)-ifelse(fvar(33)-(ceil(fvar(33)/10)*10)<0,1,0))*10)+((ceil(fvar(33)/10000)-ifelse(fvar(33)-(ceil(fvar(33)/10000)*10000)<0,1,0))*10000)



[State -2 , 1]
type = Varadd
triggerall=var(3)=[0,999]
trigger1=1
v = 3
value =1
[State -2 , 1]
type = Varset
triggerall=var(3)>0
trigger1=enemynear(Var(36)),movetype=H&&enemynear(Var(36)),stateno>200
v = 3
value =ifelse(var(3)>600,-300,0)
[State -2 , 1]
type = Varset
triggerall=var(3)<0
trigger1=enemynear(Var(36)),movetype!=H;;&&enemynear(Var(36)),stateno>200
v = 3
value =-var(3)
[State -2 , 1]
type = Varset
triggerall=var(5)<0
trigger1=(root,stateno!=[0,199])&&(root,movetype=A||root,movetype=H)
v = 5
value =0
[State -2 , 1]
type = Varset
triggerall=var(5)<0
trigger1=(enemynear(Var(36)),stateno-var(13)!=[-99,99])||enemynear(Var(36)),movetype!=A
v = 5
value =ifelse((-var(5)-root,life>=100),var(13),0)
[State -2 , 1]
type = Varset
trigger1=var(5)=0 && enemynear(Var(36)),movetype=A
trigger1=root,stateno=[120,159]
v = 5
value =-root,life
[State -2 , 1]
type = Varset
triggerall=var(6)<0
trigger1=(root,stateno!=[0,199])&&(root,movetype=A||root,movetype=H)
v = 6
value =0
[State -2 , 1]
type = Varset
triggerall=var(6)<0
trigger1=(enemynear(Var(36)),stateno-var(13)!=[-99,99])||enemynear(Var(36)),movetype!=A
v = 6
value =ifelse((-var(6)-root,life>=100),var(13),0)
[State -2 , 1]
type = Varset
trigger1=var(6)=0 && enemynear(Var(36)),movetype=A
trigger1=var(5)>0&&enemynear(Var(36)),stateno-var(5)!=[-99,99]
trigger1=root,stateno=[120,159]
v = 6
value =-root,life
[State -2 , 1]
type = Varset
triggerall=var(7)<0
trigger1=(root,stateno!=[0,199])&&(root,movetype=A||root,movetype=H)
v = 7
value =0
[State -2 , 1]
type = Varset
triggerall=var(7)<0
trigger1=(enemynear(Var(36)),stateno-var(13)!=[-99,99])||enemynear(Var(36)),movetype!=A
v = 7
value =ifelse((-var(7)-root,life>=100),var(13),0)
[State -2 , 1]
type = Varset
trigger1=var(7)=0 && enemynear(Var(36)),movetype=A
trigger1=var(6)>0&&enemynear(Var(36)),stateno-var(6)!=[-99,99]
trigger1=var(5)>0&&enemynear(Var(36)),stateno-var(5)!=[-99,99]
trigger1=root,stateno=[120,159]
v = 7
value =-root,life
[State -2 , 1]
type = Varadd
trigger1=var(8)-((ceil(var(8)/10)-ifelse(var(8)-(ceil(var(8)/10)*10)<0,1,0))*10)=1
trigger1=(enemynear(Var(36)),stateno-var(13)!=[-99,99])||enemynear(Var(36)),movetype!=A
v = 8
value =-1
[State -2 , 1]
type = Varadd
triggerall=var(8)-((ceil(var(8)/10)-ifelse(var(8)-(ceil(var(8)/10)*10)<0,1,0))*10)=0
trigger1=enemynear(Var(36)),movetype=A && var(9)-enemynear(Var(36)),power>=1000
trigger2=enemynear(Var(36)),HitDefAttr =SCA,HA,HP,HT
v = 8
value =1
[State -2 , 1]
type = Varadd
triggerall=var(8)-((ceil(var(8)/100)-ifelse(var(8)-(ceil(var(8)/100)*100)<0,1,0))*100)=[0,9]
trigger1=(root,stateno=200||root,stateno=400) && enemynear(Var(36)),movetype=H
v = 8
value =10
[State -2 , 1]
type = Varadd
triggerall=var(8)-((ceil(var(8)/100)-ifelse(var(8)-(ceil(var(8)/100)*100)<0,1,0))*100)=[10,19]
trigger1=enemynear(Var(36)),movetype!=H
value =-10
[State -2 , 1]
type = Varset
trigger1=1
v = 9
value =enemynear(Var(36)),power
[State -2 , 1]
type = Varadd
trigger1=enemynear(Var(36)),movetype=A && var(14)<2 && var(12)-((ceil(var(12)/10)-ifelse(var(12)-(ceil(var(12)/10)*10)<0,1,0))*10)=0
v = 12
value =1
[State -2 , 1]
type = Varset
trigger1=enemynear(Var(36)),HitDefAttr =SCA,NA,SA,HA,NT,ST,HT
trigger1=var(12)-((ceil(var(12)/10)-ifelse(var(12)-(ceil(var(12)/10)*10)<0,1,0))*10)>=1
trigger2=helper(4000),stateno=4120
trigger2=var(12)-((ceil(var(12)/10)-ifelse(var(12)-(ceil(var(12)/10)*10)<0,1,0))*10)>=1
v = 12
value =((ceil(var(12)/10)-ifelse(var(12)-(ceil(var(12)/10)*10)<0,1,0))*10)
[State -2 , 1]
type = Varadd
trigger1=root,statetype=L && var(12)-((ceil(var(12)/100)-ifelse(var(12)-(ceil(var(12)/100)*100)<0,1,0))*100)=[0,9]
v = 12
value =10
[State -2 , 1]
type = Varadd
trigger1=root,statetype!=L 
trigger1=var(12)-((ceil(var(12)/100)-ifelse(var(12)-(ceil(var(12)/100)*100)<0,1,0))*100)=[10,89]
trigger2=var(12)-((ceil(var(12)/100)-ifelse(var(12)-(ceil(var(12)/100)*100)<0,1,0))*100)=[90,99]
v = 12
value =ifelse((var(12)-((ceil(var(12)/100)-ifelse(var(12)-(ceil(var(12)/100)*100)<0,1,0))*100)=[90,99]),-90,10)
[State -2 , 1]
type = Varadd
triggerall=var(12)-((ceil(var(12)/1000)-ifelse(var(12)-(ceil(var(12)/1000)*1000)<0,1,0))*1000)=[100,199]
trigger1=var(13)!=enemynear(Var(36)),stateno
v = 12
value =-100
[State -2 , 1]
type = Varadd
triggerall=var(12)-((ceil(var(12)/1000)-ifelse(var(12)-(ceil(var(12)/1000)*1000)<0,1,0))*1000)=[0,99]
trigger1=root,time<=1 && var(14)>6 && (root,stateno=705||root,stateno=715||root,stateno=725)
trigger2=enemynear(Var(36)),HitDefAttr =SCA,SA
v = 12
value =100
[State -2 , 1]
type = Varadd
trigger1=var(12)-((ceil(var(12)/10000)-ifelse(var(12)-(ceil(var(12)/10000)*10000)<0,1,0))*10000)=[1000,1999]
trigger1=(var(13)-enemynear(Var(36)),stateno!=[-99,99])
v = 12
value =-1000
[State -2 , 1]
type = Varadd
trigger1=var(12)-((ceil(var(12)/10000)-ifelse(var(12)-(ceil(var(12)/10000)*10000)<0,1,0))*10000)=[0,999]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,SA,SP,HA,HP
v = 12
value =1000
[State -2 , 1]
type = Varset
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 11
value =0
[State -2 , 1]
type = Varset 
trigger1=(var(11)=0||var(11)=-2) && p2movetype=A 
trigger1=enemynear(helper(218),Var(36)),HitDefAttr =SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
v = 11
value =ifelse(var(11)=-2,1,-1)
[State -2 , 1]
type = Varset
trigger1=var(11)=0 && p2movetype=A 
v = 11
value =-2
[State -2 , 1] 
type = Varset
triggerall= root,stateno<200 && enemynear(helper(218),Var(36)),movetype!=H
trigger1=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)>0
v = 10
value =((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)
[State -2 , 1] 
type = Varadd
;triggerall=root,var(59)-((ceil(root,var(59)/10)-ifelse(root,var(59)-(ceil(root,var(59)/10)*10)<0,1,0))*10)<3
triggerall= (root,stateno=220) && enemynear(helper(218),Var(36)),stateno>200 && enemynear(helper(218),Var(36)),movetype=H
trigger1=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=0
trigger2=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=2
trigger3=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=4
trigger4=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=6
trigger5=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=8
v = 10
value =1
[State -2 , 1] 
type = Varadd
triggerall= (root,stateno!=220)
trigger1=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=1
trigger2=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=3
trigger3=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=5
trigger4=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=7
v = 10
value =1
[State -2 , 1] 
type = Varadd
triggerall= 1;(root,stateno=47)&&(root,prevstateno=[200,499]) && enemynear(helper(218),Var(36)),stateno>200 && enemynear(helper(218),Var(36)),movetype=H
trigger1=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[0,9]
v = 10
value =90
[State -2 , 1] 
type = Varset
triggerall= (root,statetype!=A)&&(root,stateno!=[200,499])&&enemynear(helper(218),Var(36)),movetype!=H
trigger1=0;var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)>=10
v = 10
value =var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)+((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)
[State -2 , 1] 
type = Varadd
triggerall= 0;(root,stateno=47)&&(root,prevstateno=[200,499]) && enemynear(helper(218),Var(36)),stateno>200 && enemynear(helper(218),Var(36)),movetype=H
trigger1=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[0,9]
trigger2=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[20,29]
trigger3=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[40,49]
trigger4=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[60,69]
v = 10
value =10
[State -2 , 1] 
type = Varadd
triggerall= 0;(root,stateno!=47)
trigger1=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[10,19]
trigger2=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[30,39]
trigger3=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[50,59]
trigger4=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[70,79]
v = 10
value =10
[State -2 , 1] 
type = Varset
triggerall= (root,statetype!=A)&&(root,stateno!=[200,499])&&enemynear(helper(218),Var(36)),movetype!=H
trigger1=var(10)-((ceil(var(10)/1000)-ifelse(var(10)-(ceil(var(10)/1000)*1000)<0,1,0))*1000)>=100
v = 10
value =var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)+((ceil(var(10)/1000)-ifelse(var(10)-(ceil(var(10)/1000)*1000)<0,1,0))*1000)
[State -2 , 1] 
type = Varadd
triggerall= (root,stateno=1300||root,stateno=[3000,3099])&&(root,prevstateno=[200,699]) && enemynear(helper(218),Var(36)),stateno>200 && enemynear(helper(218),Var(36)),movetype=H
trigger1=var(10)-((ceil(var(10)/1000)-ifelse(var(10)-(ceil(var(10)/1000)*1000)<0,1,0))*1000)=[0,99]
trigger2=var(10)-((ceil(var(10)/1000)-ifelse(var(10)-(ceil(var(10)/1000)*1000)<0,1,0))*1000)=[200,299]
trigger3=var(10)-((ceil(var(10)/1000)-ifelse(var(10)-(ceil(var(10)/1000)*1000)<0,1,0))*1000)=[400,499]
trigger4=var(10)-((ceil(var(10)/1000)-ifelse(var(10)-(ceil(var(10)/1000)*1000)<0,1,0))*1000)=[600,699]
v = 10
value =100
[State -2 , 1] 
type = Varadd
triggerall= (root,stateno<1000)
trigger1=var(10)-((ceil(var(10)/1000)-ifelse(var(10)-(ceil(var(10)/1000)*1000)<0,1,0))*1000)=[100,199]
trigger2=var(10)-((ceil(var(10)/1000)-ifelse(var(10)-(ceil(var(10)/1000)*1000)<0,1,0))*1000)=[300,399]
trigger3=var(10)-((ceil(var(10)/1000)-ifelse(var(10)-(ceil(var(10)/1000)*1000)<0,1,0))*1000)=[500,599]
trigger4=var(10)-((ceil(var(10)/1000)-ifelse(var(10)-(ceil(var(10)/1000)*1000)<0,1,0))*1000)=[700,799]
v = 10
value =100
[State -2 , 1] 
type = Varadd
;;triggerall=root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)>=30
triggerall= (root,stateno=[1400,1499])
triggerall=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)<=0&&(enemynear(Var(36)),stateno!=[5000,5150])
trigger1=var(10)-((ceil(var(10)/100000)-ifelse(var(10)-(ceil(var(10)/100000)*100000)<0,1,0))*100000)<10000
v = 10
value =10000
[State -2 , 1] 
type = Varadd
triggerall= (root,stateno!=[1000,1999])
trigger1=var(10)-((ceil(var(10)/100000)-ifelse(var(10)-(ceil(var(10)/100000)*100000)<0,1,0))*100000)=[10000,19999]
v = 10
value =ifelse((root,movetype=H)&&(root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)>=20),20000,10000)
[State -2 , 1] 
type = Varadd
triggerall= random<=8
trigger1=var(10)-((ceil(var(10)/100000)-ifelse(var(10)-(ceil(var(10)/100000)*100000)<0,1,0))*100000)=[20000,29999]
v = 10
value =-20000
[State -2 , 1] 
type = Varadd
triggerall= var(10)-((ceil(var(10)/100000)-ifelse(var(10)-(ceil(var(10)/100000)*100000)<0,1,0))*100000)=[30000,39999]
triggerall=(root,stateno<200||root,movetype!=H)
trigger1=random<=4 && root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)>=30
trigger2=random<=6 && root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)<30
v = 10
value =-30000
[State -2 , 1] 
type = Varadd
triggerall=enemynear(Var(36)),statetype=A 
trigger1=var(10)-((ceil(var(10)/1000000)-ifelse(var(10)-(ceil(var(10)/1000000)*1000000)<0,1,0))*1000000)<100000
v = 10
value =ifelse((root,facing>0),100000,200000)
[State -2 , 1] 
type = Varset
triggerall=root,movetype=H||root,movetype=A||enemynear(helper(218),Var(36)),statetype!=A
trigger1=var(10)-((ceil(var(10)/1000000)-ifelse(var(10)-(ceil(var(10)/1000000)*1000000)<0,1,0))*1000000)>=100000
v = 10
value =var(10)-((ceil(var(10)/100000)-ifelse(var(10)-(ceil(var(10)/100000)*100000)<0,1,0))*100000)+((ceil(var(10)/1000000)-ifelse(var(10)-(ceil(var(10)/1000000)*1000000)<0,1,0))*1000000)
[State -2 , 1] 
type = Varadd
triggerall=var(10)<1000000
trigger1=root,stateno=195
v = 10
value =1000000





[State -2 , 1]
type = Varset
trigger1=var(13) !=enemynear(Var(36)),stateno
trigger2=(enemynear(Var(36)),AnimElemTime(1)=0 && enemynear(Var(36)),stateno = var(13) &&var(14)>2 )
v = 14
value =0
Ignorehitpause=1




[State -2 , 1]
type = Varadd
trigger1=enemynear(Var(36)),movetype=A
trigger2=var(14)>0
v = 14
value =1
Ignorehitpause=1
[State -2 , 1]
type = Varset
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 13
value =0
Ignorehitpause=1
[State -2 , 1]
type = Varset
trigger1=enemynear(Var(36)),movetype=A
trigger1=var(13)>=0
v = 13
value =enemynear(Var(36)),stateno
Ignorehitpause=1





[Statedef 20219]
type    = S
physics = S
anim=20218
ctrl = 0
[State 218 , 1]
type = velset
trigger1=1
x=120

[State -2 , 1]
type = Varadd
trigger1=frontedgebodydist>0
v = 59
value =1

[State 66]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow
Flag2= NoAutoTurn 

[State 0, DestroySelf]
type = DestroySelf
trigger1 = root,stateno!=[230,239]
trigger1 = enemynear(helper(218),Var(36)),movetype!=H































































; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]





;-------------------------■AI設定■--------------------------------------------------------









[State -2:         VarSet];■AI+コンボ設定(combo)■
type     = Varadd
triggerall=!ishelper
triggerall = var(59)=0 && AIlevel
triggerall=(RoundState =2)
trigger1 = (alive && ctrl)||var(59)>0
v        = 59
value    =                    1                        ;(ここを1以上にするとＡＩが入ります+コンボ設定。0~3)


[State -2:         VarSet];■立ち回り設定(movement)■
type     = Varadd
triggerall=!ishelper
triggerall = var(59)=[1,9]
triggerall=(RoundState =2)
trigger1 = (alive && ctrl)||var(59)>0
v        = 59
value    =10*                  1                        ;(立ち回り設定。0~3)


[State -2:         VarSet];■超反応設定(counter)■
type     = VarSet
triggerall=!ishelper
trigger1=var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
trigger1=var(54)<100000
trigger2=(helper(218),var(14)>0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)||(helper(218),var(14)=0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)
trigger3=enemynear(helper(218),Var(36)),movetype !=A
trigger4=(enemynear(helper(218),Var(36)),AnimElemTime(1)=0 && enemynear(helper(218),Var(36)),stateno = helper(218),var(13) && helper(218),var(14)>2 )
v        = 54
value    =                   7             ;(0~10、超反応設定。数字が高いほど攻撃に対する反撃が厳しくなる)



[State -2:         VarSet];■ガード設定(guard)■
type     = VarSet
triggerall=!ishelper
trigger1=var(54) <1000
trigger2=(helper(218),var(14)>0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)||(helper(218),var(14)=0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)
trigger3=enemynear(helper(218),Var(36)),movetype !=A
trigger4=(enemynear(helper(218),Var(36)),AnimElemTime(1)=0 && enemynear(helper(218),Var(36)),stateno = helper(218),var(13) && helper(218),var(14)>2 )
v        = 54
value    =var(54)+1000*       8             ;(0~11、数字を上げるほど硬く。11で超反応で投げに対応)










































[State -1, Stand]
type = ChangeState 
value =195
triggerall = !IsHelper
triggerall = roundstate!=4;;helper(218),var(35)!=16
triggerall = helper(218),var(10)<1000000
triggerall = var(59)!=0 
triggerall = win && Alive && statetype!=A
triggerall=p2bodydist x>=-20
trigger1=ctrl||stateno=[0,39]
[State -2:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall=var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000)<100
triggerall=random>(var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000))*100
triggerall=enemynear(helper(218),Var(36)),movetype=A
trigger1=helper(218),var(14)<2
trigger2=(enemynear(helper(218),Var(36)),AnimElemTime(1)=0 && enemynear(helper(218),Var(36)),stateno = helper(218),var(13) && helper(218),var(14)>2 )
v        = 54
value    =100
[State -2:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall=var(54)<100000
triggerall=random>((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000)/10
triggerall=enemynear(helper(218),Var(36)),movetype=A
trigger1 = (helper(218),var(14)>0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)||(helper(218),var(14)=0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)
trigger2=(enemynear(helper(218),Var(36)),AnimElemTime(1)=0 && enemynear(helper(218),Var(36)),stateno = helper(218),var(13) && helper(218),var(14)>2 )
v        = 54
value    =100000 









[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(43) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(44) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(15) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(16) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(19) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(18) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(37) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(16) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(15) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(14) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(33) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(32) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(31) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(30) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(29) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(28) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(27) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(26) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(25) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(24) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(29) =0








[State -3:         VarSet]
type     = Varset
triggerall=!ishelper
triggerall = var(59)>0
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(59) = var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)+((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall =(stateno=[1000,1599])
triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
trigger1=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[0,999])
trigger2=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[2000,2999])
trigger3=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[4000,4999])
trigger4=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[6000,6999])
var(59) = 1000
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2
triggerall =(stateno!=[1000,1599])
trigger1=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[1000,1999])
trigger2=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[3000,3999])
trigger3=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[5000,5999])
trigger4=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[7000,7999])
var(59) = ifelse(movetype=H,1000,-1000)
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall =(stateno=420)&&(prevstateno=1401)&&p2movetype=H&&p2stateno>200&&movehit
trigger1=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)=[0,9999])
var(59) = 10000
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2
triggerall =(stateno!=1400)&&(stateno!=420)
trigger1=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)=[10000,19999])
var(59) = ifelse(p2life>0&&(p2statetype=L||p2movetype!=H),10000,-10000)
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall=(stateno=820||stateno=1010) && p2stateno=[150,159]
triggerall=(var(59)-((ceil(var(59)/1000000)-ifelse(var(59)-(ceil(var(59)/1000000)*1000000)<0,1,0))*1000000)<100000)
trigger1=1
var(59) = 100000
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2 
triggerall=(var(59)-((ceil(var(59)/1000000)-ifelse(var(59)-(ceil(var(59)/1000000)*1000000)<0,1,0))*1000000)=[100000,199999])
trigger1=((stateno!=[800,899])&&(stateno=[1000,1010]))||p2life<=0||(p2movetype=H && p2stateno>200)
var(59) = ifelse(p2movetype=H && p2stateno>200,-100000,100000)
[State -3:         VarSet] 
type     = VarSet
triggerall=!ishelper
trigger1 = var(59)>0
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(59) = var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)
[State -3:         VarSet] 
type     = VarSet
triggerall=!ishelper
triggerall = var(59)>0
trigger1 = var(59)<1000000 && win
var(59) = var(59)+1000000
[State -3:         VarSet] 
type     = VarSet
triggerall=!ishelper
triggerall = var(59)>0
trigger1 = 0;var(59)>=1000000 && stateno=[3000,3099]
var(59) = var(59)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1=var(59)>0
trigger1=RoundState !=2
v        = 59
value    =-var(59)
[State -2:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1=var(59)<0
trigger1=RoundState=2 && ctrl
v        = 59
value    =-var(59)

[State -2]
Type = Helper
triggerall=!ishelper
;trigger1=var(59)>0
trigger1 = numhelper(218)=0
StateNo = 10218
ID = 218
Name = "AI1"
Pos = 0,0
PosType = P1
Ownpal = 1
Persistent = 0
IgnoreHitPause =1

[State -2:         VarSet]
type     = Varadd
triggerall=!ishelper
trigger1=var(55)>=0
trigger1=0;numprojid(20219)
v        = 55
value    =1
[State -2:         VarSet]
type     = Varset
triggerall=!ishelper
trigger1=var(55)>0
trigger1=(stateno!=[200,399])
trigger1=0;p2movetype!=H
v        = 55
value    =0

[State -2, 1]
type = Projectile
triggerall=!ishelper
triggerall=var(59)
triggerall=var(55)=0 && !ishelper
trigger1=0;(stateno=[2300,2399])
projanim = 20218 
projid= 20219
projhitanim = 1112
velocity=50,0;120, 0
projpriority=4
projsprpriority=2
projstagebound=0
projedgebound=99999
offset=0, 0
;;postype=right
supermovetime=99999
pausemovetime=99999
projremovetime=20;;-1



















[State -1]
type = ChangeState
value = 3900
triggerall = !ishelper
triggerall = var(59)>0 && partner,life<=0 ;;;&& helper(3000),stateno=3000
triggerall = var(59)>=1000000
triggerall = power >= 2000
triggerall = p2life <= lifemax/4
triggerall = var(21) = 0
triggerall = RoundState = 2 && Alive 
;triggerall=(p2bodydist x<=40&&p2bodydist y-enemynear(helper(218),Var(36)),vel y*13>-100)||(p2bodydist x>40&&stateno!=[100,101])
triggerall=(helper(218),var(35)=18)
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2;||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall =statetype != A
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)
triggerall=p2bodydist x<=100
triggerall=p2bodydist x>-40
;triggerall=(p2statetype=A && p2bodydist y=[-70,150])||((vel y>0||(stateno=[110,119])||(prevstateno=[110,119])) && pos y>=-300 && p2statetype!=A)||stateno=855
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2movetype=H&&p2stateno>200;||p2stateno<=200||p2stateno=[5100,5110] 
trigger1=1;(p2bodydist y+enemynear(helper(218),Var(36)),vel y*9>=-60)
[State -1]
type = ChangeState
value = ifelse(power>=1000&&(power>=2000||p2life<200),3050,1000)
triggerall = !ishelper
triggerall = var(59)>0 ;;;&& helper(3000),stateno=3000 
triggerall = RoundState = 2 && Alive 
;triggerall=(p2bodydist x<=40&&p2bodydist y-enemynear(helper(218),Var(36)),vel y*13>-100)||(p2bodydist x>40&&stateno!=[100,101])
triggerall=(helper(218),var(35)=18)
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2;||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall =statetype != A
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)
triggerall=p2bodydist x<=100
triggerall=p2bodydist x>-40
;triggerall=(p2statetype=A && p2bodydist y=[-70,150])||((vel y>0||(stateno=[110,119])||(prevstateno=[110,119])) && pos y>=-300 && p2statetype!=A)||stateno=855
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2movetype=H&&p2stateno>200;||p2stateno<=200||p2stateno=[5100,5110] 
trigger1=1;(p2bodydist y+enemynear(helper(218),Var(36)),vel y*9>=-60)
[State -1]
type = ChangeState
value = ifelse((p2statetype!=A),47,100)
triggerall = !ishelper
triggerall = var(59)>0 ;;;&& helper(3000),stateno=3000 
triggerall = RoundState = 2 && Alive 
;triggerall=(p2bodydist x<=40&&p2bodydist y-enemynear(helper(218),Var(36)),vel y*13>-100)||(p2bodydist x>40&&stateno!=[100,101])
triggerall=(helper(218),var(35)=[16,17])
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2;||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall =statetype != A
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)
;triggerall=p2bodydist x<=100
triggerall=p2bodydist x>-40
;triggerall=(p2statetype=A && p2bodydist y=[-70,150])||((vel y>0||(stateno=[110,119])||(prevstateno=[110,119])) && pos y>=-300 && p2statetype!=A)||stateno=855
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2movetype=H&&p2stateno>200;||p2stateno<=200||p2stateno=[5100,5110] 
trigger1=(p2statetype!=A)||stateno!=[100,101]
[State -1]
type = ChangeState
value = 100
triggerall = !ishelper
triggerall = var(59)>0 ;;;&& helper(3000),stateno=3000 
triggerall = RoundState = 2 && Alive 
;triggerall=(p2bodydist x<=40&&p2bodydist y-enemynear(helper(218),Var(36)),vel y*13>-100)||(p2bodydist x>40&&stateno!=[100,101])
triggerall=(helper(218),var(35)=19)
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2;||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall =statetype != A
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)
;triggerall=p2bodydist x<=100
triggerall=p2bodydist x>-40
;triggerall=(p2statetype=A && p2bodydist y=[-70,150])||((vel y>0||(stateno=[110,119])||(prevstateno=[110,119])) && pos y>=-300 && p2statetype!=A)||stateno=855
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2movetype=H&&p2stateno>200;||p2stateno<=200||p2stateno=[5100,5110] 
trigger1=stateno!=[100,101]
[State -1]
type = ChangeState
value =ifelse(vel x>0,102,103)
triggerall = !ishelper
triggerall = var(59)>0 
triggerall = RoundState = 2 && Alive && var(11) = 1 && stateno!=[100,109]
;;triggerall=(helper(218),var(35)!=[16,17]);;;||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2;;||p2statetype=A
;triggerall=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2stateno!=7012
;;triggerall=(helper(218),var(35)!=15)||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2;;||p2statetype=A
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall = statetype = A 
;triggerall = p2statetype = A
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)
;triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000;;;||p2statetype!=A
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger1=(p2movetype=H||p2statetype!=A)
trigger1=vel y<0 && pos y<-60
trigger1=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
[State -1]
type = ChangeState
value =ifelse(vel x>0,102,103)
triggerall = !ishelper
triggerall = var(59)>0 
triggerall = RoundState = 2 && Alive && var(11) = 1 && stateno!=[100,109]
;;triggerall=(helper(218),var(35)!=[16,17]);;;||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2;;||p2statetype=A
;triggerall=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2stateno!=7012
;;triggerall=(helper(218),var(35)!=15)||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2;;||p2statetype=A
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall = statetype = A 
;triggerall = p2statetype = A
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)
;triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000;;;||p2statetype!=A
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger1=(p2statetype!=A)
trigger1=vel y<0 && pos y=[-20,-10]
trigger1=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger2=p2statetype=A && p2movetype=H && p2stateno>200
trigger2=p2bodydist x>80 && p2bodydist y=[-20,20]
trigger2=0;helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
[State -1]
type = ChangeState
value =620
triggerall = !ishelper
triggerall = var(59)>0 
triggerall = RoundState = 2 && Alive && (time>=5||stateno!=[100,109])
;triggerall=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2stateno!=7012
;triggerall=(helper(218),var(35)!=13);;||p2statetype=A
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall = statetype = A && frontedgebodydist>70 && pos y>-90 && p2bodydist x<80
;triggerall = p2statetype = A
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)
triggerall=p2bodydist x<=-pos y+40
triggerall=p2bodydist x>ifelse(pos y>-50,0,-pos y-30)
triggerall=vel y<0 && p2statetype!=A
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),var(35)=8||helper(218),fvar(5)=-99999
;trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000;;;||p2statetype!=A
trigger2=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=(p2statetype!=A)||(p2movetype!=H);||p2stateno<=200||p2stateno=[5100,5110] 
trigger3=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
trigger3=0;(enemynear(helper(218),Var(36)),facing*facing>0)&&(helper(218),var(10))-((ceil((helper(218),var(10))/10000)-ifelse((helper(218),var(10))-(ceil((helper(218),var(10))/10000)*10000)<0,1,0))*10000)>=1000
[State -1]
type = ChangeState
value =ifelse(p2statetype=A,ifelse(p2bodydist y<-20||(vel x>=0&&p2bodydist x<=60),610,600),600)
triggerall = !ishelper
triggerall = var(59)>0 
triggerall = RoundState = 2 && Alive && (time>=5||stateno!=[100,109])
;triggerall=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2stateno!=7012
;triggerall=(helper(218),var(35)!=13);;||p2statetype=A
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall = statetype = A 
;triggerall = p2statetype = A
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)
triggerall=p2bodydist x<=100+ifelse(vel x=0,0,40)
triggerall=p2bodydist x>-60
triggerall=(p2statetype=A && p2bodydist y=[ifelse(p2bodydist x<=60,-60,-20),20])||(pos y>=ifelse((helper(218),var(35)=99),ifelse(random<=300,-105,-120),-70) && (vel y>0||(stateno=[100,109])||(prevstateno=[100,109])) && p2statetype!=A)
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),var(35)=8||helper(218),fvar(5)=-99999
;trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000;;;||p2statetype!=A
trigger2=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=(p2statetype!=A)||(p2movetype!=H);||p2stateno<=200||p2stateno=[5100,5110] 
trigger3=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
trigger3=0;(enemynear(helper(218),Var(36)),facing*facing>0)&&(helper(218),var(10))-((ceil((helper(218),var(10))/10000)-ifelse((helper(218),var(10))-(ceil((helper(218),var(10))/10000)*10000)<0,1,0))*10000)>=1000
[State -1, Stand]
type = ChangeState 
value =3900
triggerall = !IsHelper
triggerall =var(59)>=1000000 && partner,life<=0
triggerall = power >= 2000
triggerall = p2life <= lifemax/4
triggerall = var(21) = 0
triggerall=(helper(218),var(35)!=12);;;||(p2statetype=A&&p2bodydist y<-40)||partner,life>0
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)
;triggerall=(p2stateno!=8999)||time>7||p2bodydist x<20||p2movetype!=H
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000||helper(218),fvar(5)=-99999||facing*enemynear(helper(218),Var(36)),facing>0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
;triggerall=p2stateno!=5299
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
triggerall = statetype != A
triggerall=(p2statetype!=A)||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*7=[-10,20])
triggerall=p2bodydist x>=-30
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=p2bodydist x<=100;60;ifelse(p2statetype=A,50,80)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=100)
triggerall=helper(218),var(57)<2000000 && helper(218),var(58)<2000000 ;;&& (var(46)!=p2stateno) && (var(46)=[0,999999]) && (var(47)!=p2stateno) && (var(47)=[0,999999])
triggerall=(helper(218),var(57)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)-ifelse(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(58)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)-ifelse(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),fvar(5)=-99999
trigger1=enemynear(helper(218),Var(36)),animtime<=-ifelse(p2bodydist x<=70,5,ifelse(p2bodydist x<=80,7,10))||p2statetype=A
trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger1=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
trigger2=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=p2movetype=H&&p2stateno>200
[State -1, Stand]
type = ChangeState 
value =300
triggerall = !IsHelper
triggerall =var(59)>0
triggerall=(helper(218),var(35)!=11)
triggerall=(helper(218),var(35)!=12)
triggerall=(helper(218),var(35)!=[13,15])
;triggerall=(helper(218),var(35)!=19)||(p2statetype=A&&p2bodydist y<-40)||partner,life>0
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)
;triggerall=(p2stateno!=8999)||time>7||p2bodydist x<20||p2movetype!=H
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000||helper(218),fvar(5)=-99999||facing*enemynear(helper(218),Var(36)),facing>0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
;triggerall=p2stateno!=5299
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
triggerall = statetype != A
triggerall=(p2statetype=A)&&(p2bodydist y+enemynear(helper(218),Var(36)),vel y*3=[-10,0])
triggerall=p2bodydist x>=-30
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=p2bodydist x<=60;60;ifelse(p2statetype=A,50,80)
triggerall =0;; Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=100)
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),fvar(5)=-99999
trigger1=enemynear(helper(218),Var(36)),animtime<=-ifelse(p2bodydist x<=70,5,ifelse(p2bodydist x<=80,7,10))||p2statetype=A
trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger1=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
trigger2=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=p2movetype=H&&p2stateno>200
trigger3=helper(218),var(35)=7
trigger3=enemynear(helper(218),Var(36)),animtime=-ifelse(p2bodydist x<=70,6,10)||enemynear(helper(218),Var(36)),facing*facing>0
trigger3=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger3=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger3=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
[State -1, Stand]
type = ChangeState 
value =200;ifelse(p2bodydist x<=70&&(helper(218),var(35)!=14),200,ifelse(p2bodydist x<=80,210,410))
triggerall = !IsHelper
triggerall =var(59)>0
triggerall=(helper(218),var(35)!=11)
triggerall=(helper(218),var(35)!=12);;;||(p2statetype=A&&p2bodydist y<-40)||partner,life>0
triggerall=(helper(218),var(35)!=[13,ifelse(p2statetype=A,15,16)])
triggerall=(helper(218),var(35)!=19)||p2bodydist x<40||time>=8
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)
;triggerall=(p2stateno!=8999)||time>7||p2bodydist x<20||p2movetype!=H
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000||helper(218),fvar(5)=-99999||facing*enemynear(helper(218),Var(36)),facing>0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
;triggerall=p2stateno!=5299
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
triggerall = statetype != A
triggerall=(p2statetype!=A)||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*7=[ifelse((helper(218),var(35)!=20),-10,-40),20])||(helper(218),var(35)=15)
triggerall=p2bodydist x>=-30
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=p2bodydist x<=100;60;ifelse(p2statetype=A,50,80)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=100)
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),fvar(5)=-99999
trigger1=enemynear(helper(218),Var(36)),animtime<=-ifelse(p2bodydist x<=70,5,ifelse(p2bodydist x<=80,7,10))||p2statetype=A
trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger1=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
trigger2=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=p2movetype=H&&p2stateno>200
trigger3=helper(218),var(35)=7
trigger3=enemynear(helper(218),Var(36)),animtime=-ifelse(p2bodydist x<=70,6,10)||enemynear(helper(218),Var(36)),facing*facing>0
trigger3=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger3=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger3=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]























[State -1, Stand]
type = ChangeState
value =8000;;ifelse(statetype=A,9000,8000)
triggerall = !IsHelper
triggerall = var(59)
;triggerall = (facing>0&&helper(218),var(10)=[100000,199999])||(facing<0&&helper(218),var(10)=[200000,299999])||p2statetype!=A
;triggerall = partner,life<=0||partner,stateno<200||(partner,movetype!=H)||(partner,stateno=[5000,5150])
;triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
;triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
;triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = movetype=H && Var(50) != 1
triggerall = enemy,hitdefattr != SCA,HA,HP,AT
triggerall = stateno != [120,155]
triggerall = stateno != [800,899]
triggerall = stateno != [3000,4999]
triggerall = !ctrl
triggerall = p2movetype=A
;triggerall=((p2statetype !=A)&&(pos y>-60||statetype!=A))||(p2statetype=A&&p2bodydist y=[-60,60])
;triggerall=p2bodydist x>=-60 ;&& enemynear(Var(36)),vel x<=0
;triggerall=P2bodyDist X<=60
triggerall=enemynear(helper(218),Var(36)),animtime<-19
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=helper(218),var(57)<2000000 && helper(218),var(58)<2000000 ;;&& (var(46)!=p2stateno) && (var(46)=[0,999999]) && (var(47)!=p2stateno) && (var(47)=[0,999999])
triggerall=(helper(218),var(57)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)-ifelse(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(58)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)-ifelse(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(stateno=5000||stateno=5010||stateno=5020) && time=0 ;;&& life<300
trigger1=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)=1
trigger1=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30 
[State -1, Stand]
type = ChangeState
value =8000;;ifelse(statetype=A,9000,8000)
triggerall = !IsHelper
triggerall = var(59)
;triggerall = (facing>0&&helper(218),var(10)=[100000,199999])||(facing<0&&helper(218),var(10)=[200000,299999])||p2statetype!=A
;triggerall = partner,life<=0||partner,stateno<200||(partner,movetype!=H)||(partner,stateno=[5000,5150])
;triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
;triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
;triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = movetype=H && Var(50) != 1
triggerall = enemy,hitdefattr != SCA,HA,HP,AT
triggerall = stateno != [120,155]
triggerall = stateno != [800,899]
triggerall = stateno != [3000,4999]
triggerall = !ctrl
triggerall = p2movetype=A
triggerall=((p2statetype !=A)&&(pos y>-60||statetype!=A))||(p2statetype=A&&p2bodydist y=[-60,60])
triggerall=p2bodydist x>=-60 ;&& enemynear(Var(36)),vel x<=0
triggerall=P2bodyDist X<=60
triggerall=enemynear(helper(218),Var(36)),animtime<-19
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=helper(218),var(57)<2000000 && helper(218),var(58)<2000000 ;;&& (var(46)!=p2stateno) && (var(46)=[0,999999]) && (var(47)!=p2stateno) && (var(47)=[0,999999])
triggerall=(helper(218),var(57)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)-ifelse(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(58)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)-ifelse(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(stateno=5000||stateno=5010||stateno=5020) && time=0 && life<300
trigger2=stateno=[5000,5099]
trigger2=life<300 && helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)=1
trigger3=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30 && helper(218),var(14)<2
trigger3=(stateno=[5000,5099]) && (p2statetype=A||statetype!=A)
[State -1, Stand]
type = ChangeState
value =3900
triggerall = !IsHelper
triggerall = var(59)>=1000000
triggerall = power >= 2000
triggerall = p2life <= lifemax/4
triggerall = var(21) = 0
triggerall = (facing>0&&helper(218),var(10)=[100000,199999])||(facing<0&&helper(218),var(10)=[200000,299999])||p2statetype!=A
triggerall = partner,life<=0||partner,stateno<200||(partner,movetype!=H)||(partner,stateno=[5000,5150])
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A)
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=100)
triggerall = p2movetype=A
triggerall=(p2statetype !=A);||(p2statetype=A&&p2bodydist x>=0&&enemynear(helper(218),Var(36)),vel x>=0&&p2bodydist y+enemynear(helper(218),Var(36)),vel y*9=[-40,20])
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall=P2bodyDist X<=100
triggerall=enemynear(helper(218),Var(36)),animtime<-7
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=helper(218),var(57)<2000000 && helper(218),var(58)<2000000 ;;&& (var(46)!=p2stateno) && (var(46)=[0,999999]) && (var(47)!=p2stateno) && (var(47)=[0,999999])
triggerall=(helper(218),var(57)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)-ifelse(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(58)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)-ifelse(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=1
[State -1, Stand]
type = ChangeState
value =200
triggerall = !IsHelper
triggerall = var(59)>0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A) ;&& random<=500
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=100
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall=P2bodyDist X <=100
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(19)<=999||(fvar(19)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(19)-((ceil(fvar(19)/1000)-ifelse(fvar(19)-(ceil(fvar(19)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(18)<=999||(fvar(18)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(18)-((ceil(fvar(18)/1000)-ifelse(fvar(18)-(ceil(fvar(18)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(16)<=999||(fvar(16)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(16)-((ceil(fvar(16)/1000)-ifelse(fvar(16)-(ceil(fvar(16)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(15)<=999||(fvar(15)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(15)-((ceil(fvar(15)/1000)-ifelse(fvar(15)-(ceil(fvar(15)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(14)<=999||(fvar(14)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(29)<=999||(fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(28)<=999||(fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=(helper(218),var(50)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)-ifelse(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(51)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)-ifelse(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger4=fvar(19)>999&&fvar(19)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(19)>999&&fvar(19)-((ceil(fvar(19)/1000)-ifelse(fvar(19)-(ceil(fvar(19)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger5=fvar(18)>999&&fvar(18)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(18)>999&&fvar(18)-((ceil(fvar(18)/1000)-ifelse(fvar(18)-(ceil(fvar(18)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger7=fvar(16)>999&&fvar(16)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(16)>999&&fvar(16)-((ceil(fvar(16)/1000)-ifelse(fvar(16)-(ceil(fvar(16)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger8=fvar(15)>999&&fvar(15)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(15)>999&&fvar(15)-((ceil(fvar(15)/1000)-ifelse(fvar(15)-(ceil(fvar(15)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger9=fvar(14)>999&&fvar(14)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(14)>999&&fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger11=fvar(29)>999&&fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=fvar(29)>999&&fvar(29)-((ceil(fvar(29)/1000)-ifelse(fvar(29)-(ceil(fvar(29)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger12=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger13=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger14=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger15=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger16=fvar(28)>999&&fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=fvar(28)>999&&fvar(28)-((ceil(fvar(28)/1000)-ifelse(fvar(28)-(ceil(fvar(28)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
[State -1, Stand]
type = ChangeState
value =161
triggerall = !IsHelper
triggerall = var(59)>0 && partner,life<=0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A) ;&& random<=500
triggerall=enemynear(helper(218),Var(36)),facing*facing<0 && enemynear(helper(218),Var(36)),animtime<-34
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=100
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
;;triggerall=P2bodyDist X <=120
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=fvar(29)<=999||(fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
;triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
;triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
;triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
;triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
;triggerall=fvar(28)<=999||(fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=helper(218),var(44)<2000000 && helper(218),var(45)<2000000 && (var(43)!=p2stateno) && (var(43)=[0,999999]) && (var(44)!=p2stateno) && (var(44)=[0,999999])
triggerall=(helper(218),var(44)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(44)-(ceil(helper(218),Var(44)/1000)-ifelse(helper(218),Var(44)-(ceil(helper(218),Var(44)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(45)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(45)-(ceil(helper(218),Var(45)/1000)-ifelse(helper(218),Var(45)-(ceil(helper(218),Var(45)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger4=fvar(19)>999&&fvar(19)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(19)>999&&fvar(19)-((ceil(fvar(19)/1000)-ifelse(fvar(19)-(ceil(fvar(19)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger5=fvar(18)>999&&fvar(18)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(18)>999&&fvar(18)-((ceil(fvar(18)/1000)-ifelse(fvar(18)-(ceil(fvar(18)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger7=fvar(16)>999&&fvar(16)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(16)>999&&fvar(16)-((ceil(fvar(16)/1000)-ifelse(fvar(16)-(ceil(fvar(16)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger8=fvar(15)>999&&fvar(15)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(15)>999&&fvar(15)-((ceil(fvar(15)/1000)-ifelse(fvar(15)-(ceil(fvar(15)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger9=fvar(14)>999&&fvar(14)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(14)>999&&fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
[State -1, Stand]
type = ChangeState
value =3000
triggerall = !IsHelper
triggerall = var(59)>0
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<3||power>=1500||p2life<200
triggerall = (facing>0&&helper(218),var(10)=[100000,199999])||(facing<0&&helper(218),var(10)=[200000,299999])||p2statetype!=A
triggerall = partner,life<=0||partner,stateno<200||(partner,movetype!=H)||(partner,stateno=[5000,5150])
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A) && power>=1000 && random<=500
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=100)
triggerall = p2movetype=A
triggerall=(p2statetype !=A);;;;;||(p2statetype=A&&p2bodydist x>=0&&enemynear(helper(218),Var(36)),vel x>=0&&p2bodydist y+enemynear(helper(218),Var(36)),vel y*ifelse(p2bodydist x<=80,7,12)=[-40,20])
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall=P2bodyDist X -ifelse(p2statetype=A,(enemynear(helper(218),Var(36)),vel x*5),0)<=250
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=enemynear(helper(218),Var(36)),animtime<-21;;||p2statetype=A
triggerall=helper(218),var(57)<2000000 && helper(218),var(58)<2000000 ;;&& (var(46)!=p2stateno) && (var(46)=[0,999999]) && (var(47)!=p2stateno) && (var(47)=[0,999999])
triggerall=(helper(218),var(57)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)-ifelse(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(58)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)-ifelse(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=helper(218),var(54)<2000000 && helper(218),var(55)<2000000
triggerall=(helper(218),var(54)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)-ifelse(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(55)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)-ifelse(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger4=fvar(19)>999&&fvar(19)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(19)>999&&fvar(19)-((ceil(fvar(19)/1000)-ifelse(fvar(19)-(ceil(fvar(19)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger5=fvar(18)>999&&fvar(18)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(18)>999&&fvar(18)-((ceil(fvar(18)/1000)-ifelse(fvar(18)-(ceil(fvar(18)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger7=fvar(16)>999&&fvar(16)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(16)>999&&fvar(16)-((ceil(fvar(16)/1000)-ifelse(fvar(16)-(ceil(fvar(16)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger8=fvar(15)>999&&fvar(15)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(15)>999&&fvar(15)-((ceil(fvar(15)/1000)-ifelse(fvar(15)-(ceil(fvar(15)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger9=fvar(14)>999&&fvar(14)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(14)>999&&fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger11=fvar(29)>999&&fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=fvar(29)>999&&fvar(29)-((ceil(fvar(29)/1000)-ifelse(fvar(29)-(ceil(fvar(29)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=21
trigger12=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=21
trigger13=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=21
trigger14=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=21
trigger15=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=21
trigger16=fvar(28)>999&&fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=fvar(28)>999&&fvar(28)-((ceil(fvar(28)/1000)-ifelse(fvar(28)-(ceil(fvar(28)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=21
trigger17=power>=2000||p2life<250
trigger18 =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3&&power>=1500
[State -1, Stand]
type = ChangeState
value =1300
triggerall = !IsHelper
triggerall = var(59)>0
triggerall = (facing>0&&helper(218),var(10)=[100000,199999])||(facing<0&&helper(218),var(10)=[200000,299999])||p2statetype!=A
triggerall = partner,life<=0||partner,stateno<200||(partner,movetype!=H)||(partner,stateno=[5000,5150])
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A) ;;&& power>=2000 && random<=500
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=100)
triggerall = p2movetype=A
triggerall=(p2statetype !=A)||(p2statetype=A&&p2bodydist x>=0&&enemynear(helper(218),Var(36)),vel x>=0&&((p2bodydist y+enemynear(helper(218),Var(36)),vel y*10<=0&&p2bodydist y>=-60)||p2bodydist y+enemynear(helper(218),Var(36)),vel y*7=[-60,40]))
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall=P2bodyDist X -ifelse(p2statetype=A,(enemynear(helper(218),Var(36)),vel x*7),0)<=120
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=enemynear(helper(218),Var(36)),animtime<ifelse(p2bodydist x<=80,-7,-12)||p2statetype=A
triggerall=helper(218),var(57)<2000000 && helper(218),var(58)<2000000 ;;&& (var(46)!=p2stateno) && (var(46)=[0,999999]) && (var(47)!=p2stateno) && (var(47)=[0,999999])
triggerall=(helper(218),var(57)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)-ifelse(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(58)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)-ifelse(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=helper(218),var(54)<2000000 && helper(218),var(55)<2000000
triggerall=(helper(218),var(54)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)-ifelse(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(55)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)-ifelse(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger4=fvar(19)>999&&fvar(19)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(19)>999&&fvar(19)-((ceil(fvar(19)/1000)-ifelse(fvar(19)-(ceil(fvar(19)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger5=fvar(18)>999&&fvar(18)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(18)>999&&fvar(18)-((ceil(fvar(18)/1000)-ifelse(fvar(18)-(ceil(fvar(18)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger7=fvar(16)>999&&fvar(16)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(16)>999&&fvar(16)-((ceil(fvar(16)/1000)-ifelse(fvar(16)-(ceil(fvar(16)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger8=fvar(15)>999&&fvar(15)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(15)>999&&fvar(15)-((ceil(fvar(15)/1000)-ifelse(fvar(15)-(ceil(fvar(15)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger9=fvar(14)>999&&fvar(14)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(14)>999&&fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger11=fvar(29)>999&&fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=fvar(29)>999&&fvar(29)-((ceil(fvar(29)/1000)-ifelse(fvar(29)-(ceil(fvar(29)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=10
trigger12=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=10
trigger13=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=10
trigger14=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=10
trigger15=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=10
trigger16=fvar(28)>999&&fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=fvar(28)>999&&fvar(28)-((ceil(fvar(28)/1000)-ifelse(fvar(28)-(ceil(fvar(28)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=10
trigger17=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20 && p2statetype=A
trigger18=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30 && helper(218),fvar(5)!=-99999
trigger18=(prevstateno=[150,159])||(prevstateno=[5000,5150])||(enemynear(helper(218),Var(36)),vel x>=2&&p2bodydist x<100)
trigger19=partner,life>0
[State -1, Stand]
type = ChangeState
value =ifelse(stateno=100,240,20240)
triggerall = !IsHelper
triggerall = var(59)>0 && random<=500 && partner,life<=0
triggerall = var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<3||power<1000
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)
;triggerall = stateno != [100,105]
;triggerall = ((Power <1000) && (Var(33) = 0))||(Var(46)=[1,1000])||p2bodydist x>300||p2statetype=A
triggerall = RoundState = 2 && Alive  && (statetype !=A) && p2statetype!=A
triggerall=enemynear(helper(218),Var(36)),facing*facing>0||p2bodydist x>-20
triggerall=enemynear(helper(218),Var(36)),facing*facing<0||p2bodydist x<0;||((p2bodydist x>=140||p2bodydist x<=50)&&(fvar(4)>2000000||fvar(5)>2000000))
triggerall=p2movetype=A
triggerall=p2bodydist x=[-20,100]
;triggerall=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[6000,6999])||p2statetype=S
;triggerall=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[2000,2999])&&(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[9000,9999])
;triggerall=var(48)=11||(random<=400)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=100
triggerall=(var(43)>=2000000||var(44)>=2000000||var(43)=p2stateno||var(44)=p2stateno)
triggerall=(var(54)-((ceil(var(54)/100000)-ifelse(var(54)-(ceil(var(54)/100000)*100000)<0,1,0))*100000)=[11000,11999])||random<=400
triggerall=numpartner=0||partner,life<=0||(partner,movetype !=H)||(partner,stateno-p2stateno !=[-99,99])
triggerall=helper(218),var(56)<2000000 && helper(218),var(59)<2000000 ;;;;&& (var(43)!=p2stateno) && (var(43)=[0,999999]) && (var(44)!=p2stateno) && (var(44)=[0,999999])
triggerall=(helper(218),var(56)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(56)-(ceil(helper(218),Var(56)/1000)-ifelse(helper(218),Var(56)-(ceil(helper(218),Var(56)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(59)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(59)-(ceil(helper(218),Var(59)/1000)-ifelse(helper(218),Var(59)-(ceil(helper(218),Var(59)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=0;helper(218),var(14)<2
[State -1, Stand]
type = ChangeState
value =1300
triggerall = !IsHelper
triggerall = var(59)>0 ;;;&& var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)
triggerall=(p2statetype !=A)||(p2statetype=A&&p2bodydist x>=0&&enemynear(helper(218),Var(36)),vel x>=0&&p2bodydist y+enemynear(helper(218),Var(36)),vel y*2=[-40,40])
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall=P2bodyDist X<=120
;triggerall = ((Power <1000) && (Var(33) = 0))||(Var(46)=[1,1000])||p2bodydist x>300||p2statetype=A
triggerall = RoundState = 2 && Alive  && (statetype !=A)
triggerall=enemynear(helper(218),Var(36)),facing*facing>0||p2bodydist x>-20
triggerall=enemynear(helper(218),Var(36)),facing*facing<0||p2bodydist x<0;||((p2bodydist x>=140||p2bodydist x<=50)&&(fvar(4)>2000000||fvar(5)>2000000))
triggerall=p2movetype=A
;triggerall=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[6000,6999])||p2statetype=S
;triggerall=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[2000,2999])&&(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[9000,9999])
;triggerall=var(48)=11||(random<=400)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=100
triggerall=(enemynear(helper(218),Var(36)),HitDefAttr =SCA,NT,ST,HT)||(var(43)>=2000000||var(44)>=2000000||var(43)=p2stateno||var(44)=p2stateno)
triggerall=(var(54)-((ceil(var(54)/100000)-ifelse(var(54)-(ceil(var(54)/100000)*100000)<0,1,0))*100000)=[11000,11999])||random<=400
triggerall=numpartner=0||partner,life<=0||(partner,movetype !=H)||(partner,stateno-p2stateno !=[-99,99])
triggerall=helper(218),var(54)<2000000 && helper(218),var(55)<2000000
triggerall=(helper(218),var(54)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)-ifelse(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(55)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)-ifelse(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=helper(218),var(57)<2000000 && helper(218),var(58)<2000000 ;;&& (var(46)!=p2stateno) && (var(46)=[0,999999]) && (var(47)!=p2stateno) && (var(47)=[0,999999])
triggerall=(helper(218),var(57)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)-ifelse(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(58)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)-ifelse(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=1
[State -1, Stand]
type = ChangeState
value =105
triggerall = !IsHelper
triggerall = var(59)>0 ;;;&& var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)
triggerall = stateno != [100,105]
;triggerall = ((Power <1000) && (Var(33) = 0))||(Var(46)=[1,1000])||p2bodydist x>300||p2statetype=A
triggerall = RoundState = 2 && Alive  && (statetype !=A)
triggerall=enemynear(helper(218),Var(36)),facing*facing>0||p2bodydist x>-20
triggerall=enemynear(helper(218),Var(36)),facing*facing<0||p2bodydist x<0;||((p2bodydist x>=140||p2bodydist x<=50)&&(fvar(4)>2000000||fvar(5)>2000000))
triggerall=p2movetype=A
;triggerall=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[6000,6999])||p2statetype=S
;triggerall=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[2000,2999])&&(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[9000,9999])
;triggerall=var(48)=11||(random<=400)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)
triggerall=(enemynear(helper(218),Var(36)),HitDefAttr =SCA,NT,ST,HT)||(var(43)>=2000000||var(44)>=2000000||var(43)=p2stateno||var(44)=p2stateno)
triggerall=(var(54)-((ceil(var(54)/100000)-ifelse(var(54)-(ceil(var(54)/100000)*100000)<0,1,0))*100000)=[11000,11999])||random<=400
triggerall=numpartner=0||partner,life<=0||(partner,movetype !=H)||(partner,stateno-p2stateno !=[-99,99])
trigger1=1
[State -1, Stand]
type = ChangeState
value =ifelse(p2bodydist x>120,108,47)
triggerall = !IsHelper
triggerall = var(59)>0 
triggerall = helper(218),var(35)!=1
triggerall = helper(218),var(35)!=[7,8]
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A)
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000;||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-20
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=helper(218),var(44)<2000000 && helper(218),var(45)<2000000
trigger1=fvar(29)>999&&fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(29)>999&&fvar(29)-((ceil(fvar(29)/1000)-ifelse(fvar(29)-(ceil(fvar(29)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=30
trigger2=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=30
trigger3=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=30
trigger4=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=30
trigger5=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=30
trigger6=fvar(28)>999&&fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(28)>999&&fvar(28)-((ceil(fvar(28)/1000)-ifelse(fvar(28)-(ceil(fvar(28)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=30
[State -1, Stand]
type = ChangeState
value =162
triggerall = !IsHelper
triggerall = var(59)>0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype =A) ;&& random<=500
triggerall=(enemynear(helper(218),Var(36)),facing*facing<0 && p2bodydist x>-30)||(enemynear(helper(218),Var(36)),facing*facing>0 && p2bodydist x<=-30)
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=100
triggerall = p2movetype=A
;triggerall=p2bodydist x<=-30||p2statetype !=A
;triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
;triggerall=P2bodyDist X <=50
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=helper(218),var(44)<2000000 && helper(218),var(45)<2000000 && (var(43)!=p2stateno) && (var(43)=[0,999999]) && (var(44)!=p2stateno) && (var(44)=[0,999999])
triggerall=(helper(218),var(44)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(44)-(ceil(helper(218),Var(44)/1000)-ifelse(helper(218),Var(44)-(ceil(helper(218),Var(44)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(45)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(45)-(ceil(helper(218),Var(45)/1000)-ifelse(helper(218),Var(45)-(ceil(helper(218),Var(45)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[0,1]
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[0,1]
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[0,1]
trigger4=fvar(19)>999&&fvar(19)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(19)>999&&fvar(19)-((ceil(fvar(19)/1000)-ifelse(fvar(19)-(ceil(fvar(19)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[0,1]
trigger5=fvar(18)>999&&fvar(18)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(18)>999&&fvar(18)-((ceil(fvar(18)/1000)-ifelse(fvar(18)-(ceil(fvar(18)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[0,1]
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[0,1]
trigger7=fvar(16)>999&&fvar(16)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(16)>999&&fvar(16)-((ceil(fvar(16)/1000)-ifelse(fvar(16)-(ceil(fvar(16)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[0,1]
trigger8=fvar(15)>999&&fvar(15)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(15)>999&&fvar(15)-((ceil(fvar(15)/1000)-ifelse(fvar(15)-(ceil(fvar(15)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[0,1]
trigger9=fvar(14)>999&&fvar(14)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(14)>999&&fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[0,1]
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[0,1]
trigger11=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(stateno=100,3,4)
trigger11=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(stateno=100,3,4)
trigger11=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(stateno=100,3,4)
trigger11=fvar(19)<=999||(fvar(19)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(19)-((ceil(fvar(19)/1000)-ifelse(fvar(19)-(ceil(fvar(19)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(stateno=100,3,4)
trigger11=fvar(18)<=999||(fvar(18)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(18)-((ceil(fvar(18)/1000)-ifelse(fvar(18)-(ceil(fvar(18)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(stateno=100,3,4)
trigger11=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(stateno=100,3,4)
trigger11=fvar(16)<=999||(fvar(16)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(16)-((ceil(fvar(16)/1000)-ifelse(fvar(16)-(ceil(fvar(16)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(stateno=100,3,4)
trigger11=fvar(15)<=999||(fvar(15)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(15)-((ceil(fvar(15)/1000)-ifelse(fvar(15)-(ceil(fvar(15)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(stateno=100,3,4)
trigger11=fvar(14)<=999||(fvar(14)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(stateno=100,3,4)
trigger11=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(stateno=100,3,4)
trigger11=fvar(29)<=999||(fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger11=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger11=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger11=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger11=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger11=fvar(28)<=999||(fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger11=helper(218),var(11)-((ceil(helper(218),var(11)/10)-ifelse(helper(218),var(11)-(ceil(helper(218),var(11)/10)*10)<0,1,0))*10)=1













[State -1, Stand]
type = ChangeState
value =1300
triggerall = !IsHelper
triggerall = var(59)>0
triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A) ;;&& power>=2000 && random<=500
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = p2movetype=A
;triggerall=(p2statetype !=A);||(p2statetype=A&&p2bodydist x>=0&&enemynear(helper(218),Var(36)),vel x>=0&&p2bodydist y+enemynear(helper(218),Var(36)),vel y*9=[-40,20])
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall=P2bodyDist X -ifelse(p2statetype=A,(enemynear(helper(218),Var(36)),vel x*5),0)<=110
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=enemynear(helper(218),Var(36)),animtime<-10;;||p2statetype=A
triggerall=helper(218),var(54)<2000000 && helper(218),var(55)<2000000
triggerall=(helper(218),var(54)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)-ifelse(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(55)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)-ifelse(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1 = (stateno = [400,420]) && movecontact
trigger2 = (stateno = [200,202]) && movecontact
trigger3 = (stateno = [210,212]) && movecontact

;---------------------------------------------------------------------------
[State -1, Roman Cancel]
type = ChangeState
value = 6060
triggerall = !ishelper
triggerall = var(59)>0 && var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3
;;triggerall=helper(218),var(35)!=13
triggerall = RoundState = 2 && Alive
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype != A
triggerall=p2bodydist x>=-40 && p2bodydist x<=150
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200);;;||p2statetype!=A
triggerall = power >= 1000
triggerall = movecontact||(stateno=1400&&animelemtime(11)>0&&(helper(6140),var(1)=1||helper(6141),var(1)=1||helper(6142),var(1)=1))
trigger1=stateno=230||stateno=1000||stateno=220
;---------------------------------------------------------------------------
[State -1, Air Roman Cancel]
type = ChangeState
value = 6061
triggerall = !ishelper
triggerall = var(59)>0 && var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3
;;triggerall=helper(218),var(35)!=13
triggerall = RoundState = 2 && Alive
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype = A
triggerall=p2bodydist x>=-40 && p2bodydist x<=150
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200);;;||p2statetype!=A
triggerall = power >= 1000
triggerall = movecontact
trigger1=stateno=1305
;---------------------------------------------------------------------------
[State -1, Force Roman Cancel]
type = ChangeState
value = 6060
triggerall = !ishelper
triggerall = var(59)>0 && var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3
;;triggerall=helper(218),var(35)!=13
triggerall = RoundState = 2 && Alive
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype != A
triggerall=p2bodydist x>=-40 && p2bodydist x<=150
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200);;;||p2statetype!=A
triggerall = power >= 500
triggerall = movecontact
triggerall = (stateno = [3000,3001])||(stateno = [3050,3052])
trigger1=(stateno=3000&&time>=64)||(stateno=3051&&time>=90)

[State -1, Dead Spike Dash Cancel]
type = ChangeState
value = ifelse((helper(218),var(35)=13)&&(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)!=[20000,29999]),420,240)
triggerall = !ishelper
triggerall = var(59)>0 
;;triggerall=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)!=[20000,29999])
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;;triggerall=helper(218),var(35)!=13
triggerall = RoundState = 2 && Alive
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype != A
triggerall=p2bodydist x>=-40 && p2bodydist x<=150
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200);;;||p2statetype!=A
triggerall = stateno = 1401
trigger1=(helper(218),var(35)=13)&&(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)!=[20000,29999])
trigger1=p2bodydist x<ifelse(time=9,110,50) && time<=9
trigger2=p2bodydist x<ifelse(time=9,80,50) && time<=9;; && helper(218),var(35)!=13
[State -1, Dead Spike Dash Cancel]
type = ChangeState
value = 420
triggerall = !ishelper
triggerall = var(59)>0 
;;triggerall=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)!=[20000,29999])
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;;triggerall=helper(218),var(35)!=13
triggerall = RoundState = 2 && Alive
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype != A
triggerall=p2bodydist x>=-40 && p2bodydist x<=110
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200);;;||p2statetype!=A
triggerall = stateno = 1401
trigger1=time=9
[State -1, Dead Spike Dash Cancel]
type = ChangeState
value = 1401
triggerall = !ishelper
triggerall = var(59)>0 
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;;triggerall=helper(218),var(35)!=13
triggerall = RoundState = 2 && Alive
;;triggerall=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)!=[20000,29999])
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype != A
triggerall=p2bodydist x>=-40 && p2bodydist x<=160
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200);;;||p2statetype!=A
trigger1 = stateno = 1400 && animelemtime(12) >= 0
[State -1, 地上]
type       = ChangeState
value      = 47
triggerall = !ishelper
triggerall = var(59)>0 
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||var(45)!=1
;;triggerall=helper(218),var(35)!=13
triggerall = RoundState = 2 && Alive
triggerall=power<ifelse(var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<3,1000,1500)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype != A
triggerall=p2bodydist x>=-40 && p2bodydist x<80
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(movehit&&p2movetype=H&&p2stateno>200&&p2statetype=A);;||p2statetype!=A
triggerall=movecontact
trigger1 = stateno = 211 && movecontact 
[State -1, 地上]
type       = ChangeState
value      = ifelse(stateno=210,211,ifelse(stateno=211||stateno=202,3050,ifelse(p2bodydist x<55,210,ifelse(p2statetype=A,ifelse(p2bodydist x<=100,1300,1400),202))))
triggerall = !ishelper
triggerall = var(59)>0 
;;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;;triggerall=helper(218),var(35)!=13
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<3||power>=1500||p2life<200
triggerall = RoundState = 2 && Alive && power>=1000
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype != A
triggerall=p2bodydist x>=-40
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200);;;||p2statetype!=A
triggerall=movecontact
trigger1 = (stateno = 201) && movecontact && p2bodydist x<90;; && random<=500
trigger2 = stateno=210 && movecontact && p2bodydist x<=65
trigger3 = (stateno=211 && (Movehit&&animelemtime(11)<0))||(movehit&&stateno=202&&(time>20||p2bodydist x>=70))
trigger3 = p2movetype=H&&p2stateno>200 && p2bodydist x<110
[State -1, 地上]
type       = ChangeState
value      = 210;;ifelse(stateno=202,1000,ifelse(stateno=300||stateno=400,200,ifelse(stateno=201&&p2statetype=A,ifelse(p2bodydist x<=100,1300,1400),stateno+1)))
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(helper(218),var(35)!=[13,15])||(stateno!=420)||(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)!=[20000,29999])
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3;;; && power>=1000
;;triggerall=helper(218),var(35)!=13
triggerall = RoundState = 2 && Alive
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype != A
triggerall=p2bodydist x>=-40 ;;&& p2bodydist x<=ifelse(var(28)=3,100,60)
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200)&&p2statetype=A
triggerall=movecontact||stateno=202
trigger1 = (stateno = 200) && movecontact && p2bodydist x<=50
[State -1, 地上]
type       = ChangeState
value      = ifelse(stateno=202,1000,ifelse(stateno=300||stateno=400,200,ifelse(stateno=201&&p2statetype=A,ifelse(p2bodydist x<=100,1300,1400),stateno+1)))
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(helper(218),var(35)!=[13,15])||(stateno!=420)||(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)!=[20000,29999])
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3 && power>=1000
;;triggerall=helper(218),var(35)!=13
triggerall = RoundState = 2 && Alive
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype != A
triggerall=p2bodydist x>=-40 ;;&& p2bodydist x<=ifelse(var(28)=3,100,60)
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200)&&p2statetype!=A
triggerall=movecontact||stateno=202
trigger1 = (stateno = [200,ifelse(p2bodydist x<=90,201,200)]) && movecontact && p2bodydist x<=90
trigger2 = stateno = 400 && movecontact && p2bodydist x<=90
trigger3 = stateno = 300 && movecontact && p2bodydist x<=90
trigger4 = stateno = 202
trigger4 = Movecontact
trigger4 = animelemtime(12) > 0 && p2movetype=H && p2bodydist x<=150
[State -1, 地上]
type       = ChangeState
value      = ifelse(stateno=210,211,ifelse(stateno=211,ifelse(Movehit&&animelemtime(11)>0,212,220),ifelse(p2bodydist x<=40&&(p2statetype!=A),410,210)))
triggerall = !ishelper
triggerall = var(59)>0 
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;;triggerall=helper(218),var(35)!=13
triggerall = RoundState = 2 && Alive
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype != A
triggerall=p2bodydist x>=-40
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200)||p2statetype!=A
triggerall=movecontact
trigger1 = (stateno = 201) && movecontact && p2bodydist x<55
trigger2 = stateno=210 && movecontact && p2bodydist x<=65
trigger3 = stateno=211 && ((movecontact=1&&p2bodydist x<=80&&random<=500&&p2statetype=A)||(Movehit&&animelemtime(11)>0))
trigger3 = p2movetype=H&&p2stateno>200
trigger3 = (power<1000||movehit=0||p2stateno<200||p2movetype!=H)||(Movehit&&animelemtime(11)>0)
[State -1, 地上]
type       = ChangeState
value      = ifelse(stateno=210,211,ifelse(stateno=211,ifelse(Movehit&&animelemtime(11)>0,212,220),ifelse(p2bodydist x<=40&&random<=500&&(p2statetype!=A),410,210)))
triggerall = !ishelper
triggerall = var(59)>0 
;;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;;triggerall=helper(218),var(35)!=13
triggerall = RoundState = 2 && Alive
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype != A
triggerall=p2bodydist x>=-40
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200)||p2statetype!=A
triggerall=movecontact
trigger1 = (stateno = 201) && movecontact && p2bodydist x<55
trigger2 = stateno=210 && movecontact && p2bodydist x<=65
trigger3 = stateno=211 && ((movecontact=1&&p2bodydist x<=80&&random<=500&&p2statetype=A)||(Movehit&&animelemtime(11)>0))
trigger3 = p2movetype=H&&p2stateno>200
trigger3 = (power<1000||movehit=0||p2stateno<200||p2movetype!=H)||(Movehit&&animelemtime(11)>0)
[State -1, 地上]
type       = ChangeState
value      = ifelse(stateno=300||stateno=400,200,ifelse(stateno=201&&p2statetype=A,ifelse(p2bodydist x<=100,1300,1400),stateno+1))
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(helper(218),var(35)!=[13,15])||(stateno!=420)||(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)!=[20000,29999])
;;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;;triggerall=helper(218),var(35)!=13
triggerall = RoundState = 2 && Alive
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype != A
triggerall=p2bodydist x>=-40 ;;&& p2bodydist x<=ifelse(var(28)=3,100,60)
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200)||p2statetype!=A
triggerall=movecontact||stateno=202
trigger1 = (stateno = [200,ifelse(p2bodydist x<=90,201,200)]) && movecontact && p2bodydist x<=110
trigger2 = stateno = 400 && movecontact && p2bodydist x<=90
trigger3 = stateno = 300 && movecontact && p2bodydist x<=90
trigger4 = stateno = 202
trigger4 = Movecontact
trigger4 = animelemtime(12) > 0 && p2movetype=H && p2bodydist x<=120
[State -1, 地上]
type       = ChangeState
value      = ifelse(((p2movetype=H&&p2stateno>200)||random<=500||p2bodydist x>80)&&(p2statetype!=A),420,220)
triggerall = !ishelper
triggerall = var(59)>0 
;;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;;triggerall=helper(218),var(35)!=13
triggerall = RoundState = 2 && Alive
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype != A
triggerall=p2bodydist x>=-40 && p2bodydist x<=ifelse(p2statetype=A,80,110)
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200)||p2statetype!=A
triggerall=movecontact
trigger1 = (Stateno = [200,202]) && Movecontact
trigger2 = (Stateno = [210,211]) && Movecontact && stateno!=211
trigger3 = (Stateno = [400,410]) && Movecontact
[State -1, 地上]
type       = ChangeState
value      = 3050
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(prevstateno!=1401)||(stateno!=420)||(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)!=[20000,29999])
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<3||power>=1500||p2life<200
;;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
triggerall=helper(218),var(35)!=[13,15]
triggerall = RoundState = 2 && Alive && power>=1000
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype != A
triggerall=p2bodydist x>=-40 && p2bodydist x<90
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200);;||p2statetype!=A
triggerall=movecontact
trigger1 = (stateno = [400,ifelse((prevstateno=[200,499]),420,419)]) && movecontact
trigger2 = (stateno = [200,202]) && movecontact
trigger3 = (stateno = [210,211]) && movecontact && stateno!=211
[State -1, 地上]
type       = ChangeState
value      = ifelse(p2bodydist x<=90&&random<=333,1100,ifelse(random<=ifelse(p2bodydist x<=100,666,500),1400,1000))
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(prevstateno!=1401)||(stateno!=420)||(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)!=[20000,29999])
triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30
;;triggerall=helper(218),var(35)!=13
triggerall = RoundState = 2 && Alive
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype != A
triggerall=p2bodydist x>=-40 && p2bodydist x<=200
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =((p2movetype!=H)||p2stateno<200)&&p2statetype!=A
triggerall=movecontact
trigger1 = (stateno = [400,420]) && movecontact
trigger2 = (stateno = [200,202]) && movecontact
trigger3 = (stateno = [210,211]) && movecontact && stateno!=211
trigger4 =stateno=620&&var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20&&movecontact
[State -1, 地上]
type       = ChangeState
value      = ifelse(random<=ifelse(p2bodydist x<=100,666,500),1400,1000)
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(prevstateno!=1401)||(stateno!=420)||(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)!=[20000,29999])
triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30
;;triggerall=helper(218),var(35)!=13
triggerall = RoundState = 2 && Alive
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype != A
triggerall=p2bodydist x>=-40 && p2bodydist x<=200
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =((p2movetype!=H)||p2stateno<200)&&p2statetype!=A
triggerall=movecontact
trigger1 = (stateno = [400,420]) && movecontact
trigger2 = (stateno = [200,202]) && movecontact
trigger3 = (stateno = [210,211]) && movecontact && stateno!=211
trigger4 =stateno=620&&var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20&&movecontact
[State -1, 地上]
type       = ChangeState
value      = 1000
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(helper(218),var(35)!=[13,15])||(stateno!=420)||(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)!=[20000,29999])
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3 && power>=1000
triggerall=(helper(218),var(35)!=[13,15])&&prevstateno!=1401
triggerall = RoundState = 2 && Alive
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype != A
triggerall=p2bodydist x>=-40 && p2bodydist x<=150;ifelse(p2statetype=A,80,110)
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200)&&(p2bodydist y>=-40||p2statetype!=A)
triggerall=movecontact
trigger1 = (stateno = [410,ifelse((prevstateno=[200,499]),420,419)]) && movecontact
trigger2 = (stateno = 202) && movecontact
trigger3 = (stateno = [210,211]) && movecontact && stateno!=211
[State -1, 地上]
type       = ChangeState
value      = 1100
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(prevstateno!=1401)||(stateno!=420)||(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)!=[20000,29999])
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
triggerall=helper(218),var(35)!=[13,15]
triggerall = RoundState = 2 && Alive
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype != A
triggerall=p2bodydist x>=-40 && p2bodydist x<=100;ifelse(p2statetype=A,80,110)
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200)
triggerall = ((stateno = [410,419])||(stateno = 202)||(stateno = [210,211])) && movecontact && stateno!=211
trigger1 =(p2bodydist y<-40&&(prevstateno!=1401)&&p2statetype=A)
trigger2 =p2bodydist x>90
trigger2 =(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)!=[20000,29999])
trigger3 =p2bodydist x>60
trigger3 =(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)=[20000,29999])
[State -1, 地上]
type       = ChangeState
value      = ifelse(stateno=620,1300,ifelse((stateno=810)&&(p2stateno!=811)&&p2bodydist y<0,1100,1400))
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(prevstateno!=1401)||(stateno!=420)||(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)!=[20000,29999])
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;;triggerall=helper(218),var(35)!=13
triggerall = RoundState = 2 && Alive
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype != A
triggerall=(p2bodydist x>=-40||(stateno=[800,899])) && p2bodydist x<=200;ifelse(p2statetype=A,80,110)
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(stateno=[800,899])
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])||(stateno=[800,899])
triggerAll =(p2movetype=H&&p2stateno>200)&&(p2bodydist y>=-40||(stateno=[800,899])||prevstateno=1401||(stateno!=[200,499])||p2statetype!=A)
triggerall=movecontact
trigger1 = (stateno = [410,420]) && movecontact
trigger2 = (stateno = 202) && movecontact
trigger3 = (stateno = [210,211]) && movecontact && stateno!=211
trigger4 = (stateno = 620) && movecontact
trigger5 = (stateno = 810) && movecontact&&(power<2000&&p2life>=200)
trigger6 = (stateno = 815) && movecontact;;&&(power<2000&&p2life>=200)
[State -1, 地上]
type       = ChangeState
value      = ifelse((p2statetype!=A),1000,ifelse(p2bodydist x<100&&p2bodydist y<0,ifelse(random<=500,1300,1100),1400))
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(prevstateno!=1401)||(stateno!=420)||(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)!=[20000,29999])
;;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;;triggerall=helper(218),var(35)!=13
triggerall = RoundState = 2 && Alive
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype != A
triggerall=p2bodydist x>=-40 && p2bodydist x<=200;ifelse(p2statetype=A,80,110)
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200);;||p2statetype!=A
triggerall=movecontact
trigger1 = (stateno = [400,420]) && movecontact
trigger2 = (stateno = [200,202]) && movecontact
trigger3 = (stateno = [210,211]) && movecontact && stateno!=211
[State -1, 地上]
type       = ChangeState
value      = 610
triggerall = !ishelper
triggerall = var(59)>0
;triggerall=helper(218),var(35)!=16
triggerall = RoundState = 2 && Alive
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype = A
triggerall=p2bodydist x>=-40;; && p2bodydist x<=60
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =p2movetype=H&&p2stateno>200&&p2statetype=A
trigger1 = (stateno = 240) && movecontact
[State -1, 地上]
type       = ChangeState
value      = ifelse(p2statetype=A,1301,620)
triggerall = !ishelper
triggerall = var(59)>0
;triggerall=helper(218),var(35)!=16
triggerall = RoundState = 2 && Alive
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype = A
triggerall=p2bodydist x>=-40;; && p2bodydist x<=60
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =1;p2movetype=H&&p2stateno>200&&p2statetype=A
trigger1 = (stateno = 240) && movecontact
[State -1, 地上]
type       = ChangeState
value      = ifelse(stateno=1102,45,ifelse(stateno=600,601,ifelse((stateno=[600,601]),610,ifelse(stateno=610,ifelse(var(11)=1||p2bodydist y<=0,1101,620),600))))
triggerall = !ishelper
triggerall = var(59)>0
triggerall=helper(218),var(35)!=20
triggerall = RoundState = 2 && Alive
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype = A
triggerall=p2bodydist x>=-40;; && p2bodydist x<=60
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =p2movetype=H&&p2stateno>200&&p2statetype=A
trigger1 = (stateno = 600||stateno = 601) && movecontact
trigger2 = stateno = 610 && movecontact
trigger3 = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)
trigger3=p2bodydist x<=70 && p2bodydist y=[ifelse(vel y<0,-70,-20),20]
trigger4 = stateno = 1102 && movecontact && var(11)=1
[State -1, 地上]
type       = ChangeState
value      = 1101
triggerall = !ishelper
triggerall = var(59)>0
;triggerall=helper(218),var(35)!=16
triggerall=helper(218),var(35)!=20
triggerall = RoundState = 2 && Alive
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype = A
triggerall=p2bodydist x>=-40;; && p2bodydist x<=60
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =p2movetype=H&&p2stateno>200&&p2statetype=A&&p2bodydist y<0
trigger1 = time>=10&&prevstateno=45
trigger1 = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)
[State -1, 地上]
type       = ChangeState
value      = ifelse(stateno=600,601,ifelse((stateno=[600,601]),610,ifelse(stateno=610,ifelse(random<=500||p2bodydist y<0,ifelse(p2bodydist y<0,1101,1301),620),600)))
triggerall = !ishelper
triggerall = var(59)>0
;triggerall=helper(218),var(35)!=16
triggerall=helper(218),var(35)!=20
triggerall = RoundState = 2 && Alive
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype = A
triggerall=p2bodydist x>=-40;; && p2bodydist x<=60
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =p2movetype=H&&p2stateno>200&&p2statetype=A
trigger1 = (stateno = 600||stateno = 601) && movecontact
trigger2 = stateno = 610 && movecontact
trigger3 = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)
trigger3=p2bodydist x<=70 && p2bodydist y=[ifelse(vel y<0,-70,-20),20]
[State -1, 地上]
type       = ChangeState
value      = 620
triggerall = !ishelper
triggerall = var(59)>0
;triggerall=helper(218),var(35)!=16
triggerall = RoundState = 2 && Alive
triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype = A
triggerall=p2bodydist x>=-40 && p2bodydist x<=50
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2stateno<200||p2movetype!=H)&&p2statetype!=A
trigger1 = (stateno = 600) && movecontact
[State -1, Uppercut]
type = ChangeState
value = 1305
triggerall = !ishelper
triggerall = var(59)>0
;;triggerall=helper(218),var(35)!=13
triggerall = RoundState = 2 && Alive
;;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2bodydist x<=30||movehit=0||p2stateno<200||p2movetype!=H
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
;triggerall = statetype != A
triggerall=p2bodydist x>=-40 ;;&& p2bodydist x<=60
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(movehit&&p2movetype=H&&p2stateno>200);;||(p2statetype!=A)
trigger1 = (stateno = [1300,1301]) && animelemtime(15) >= 0
trigger1 = movehit
[State -1, Axe Kick]
type = ChangeState
value = 1310
triggerall = !ishelper
triggerall = var(59)>0
;;triggerall=helper(218),var(35)!=13
triggerall = RoundState = 2 && Alive
;;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2bodydist x<=30||movehit=0||p2stateno<200||p2movetype!=H
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
;triggerall = statetype != A
triggerall=p2bodydist x>=-40 ;;&& p2bodydist x<=60
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200);;||(p2statetype!=A)
trigger1 = (stateno = 1305) && animelemtime(9) >= 0
[State -1, Hell's Fang Part II]
type = ChangeState
value = 1001
triggerall = !ishelper
triggerall = var(59)>0
;;triggerall=helper(218),var(35)!=13
triggerall = RoundState = 2 && Alive
;;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2bodydist x<=30||movehit=0||p2stateno<200||p2movetype!=H
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
;triggerall = statetype != A
triggerall=p2bodydist x>=-40 && p2bodydist x<=100
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(movehit&&p2movetype=H&&p2stateno>200)||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20;;||(p2statetype!=A)
trigger1 = stateno = 1000 && animelemtime(12) >= 0
[State -1, Nightmare Edge Part II]
type = ChangeState
value = 1202
triggerall = !ishelper
triggerall = var(59)>0
;;triggerall=helper(218),var(35)!=13
triggerall = RoundState = 2 && Alive
;;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2bodydist x<=30||movehit=0||p2stateno<200||p2movetype!=H
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
;triggerall = statetype != A
triggerall=p2bodydist x>=-40 && p2bodydist x<=100
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =1;(movehit&&p2movetype=H&&p2stateno>200);;||(p2statetype!=A)
trigger1 = anim = 1201 && animelemtime(3) >= 0
[State -1, Gauntlet Hades Part II]
type = ChangeState
value = 1102
triggerall = !ishelper
triggerall = var(59)>0
;;triggerall=helper(218),var(35)!=13
triggerall = RoundState = 2 && Alive
;;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2bodydist x<=30||movehit=0||p2stateno<200||p2movetype!=H
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
;triggerall = statetype != A
triggerall=p2bodydist x>=-40 && p2bodydist x<=100
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =1;(movehit&&p2movetype=H&&p2stateno>200);;||(p2statetype!=A)
trigger1 = stateno = 1100 && animelemtime(9) >= 0
trigger2 = stateno = 1101 && animelemtime(6) >= 0














[State -1]
type = ChangeState
value=20820
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
;triggerall=p2stateno!=80103
;triggerall=(p2movetype!=H)||random<=100||partner,life>0
triggerall = var(59)-((ceil(var(59)/1000000)-ifelse(var(59)-(ceil(var(59)/1000000)*1000000)<0,1,0))*1000000)<100000
;;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive  && stateno!=3
;triggerall=partner,life>0||helper(218),var(35)!=10
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
triggerall=p2bodydist x=[-20,50]
triggerall = (p2statetype != A);;||(p2bodydist y>=-40 && p2bodydist x>0)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=100
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =p2stateno=[152,153]
[State -1]
type = ChangeState
value=ifelse(statetype=A,840,800)
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
;;triggerall = var(53)-((ceil(var(53)/100)-ifelse(var(53)-(ceil(var(53)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100)*100)<0,1,0))*100)<=0
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive 
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall = ((statetype != A)&&(p2statetype!=A))||((statetype = A)&&(p2statetype=A)&&(p2bodydist Y=[-20,20]))
triggerall=p2bodydist x>=-30
triggerall = stateno != 100
triggerall = p2bodydist X < ifelse(statetype=A,30,10)
triggerall=p2movetype=A;;(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000;||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H);||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=(helper(218),var(50)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)-ifelse(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(51)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)-ifelse(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=helper(218),var(52)<2000000 && helper(218),var(53)<2000000
triggerall=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1 =1
[State -1]
type = ChangeState
value=ifelse(statetype=A,840,800)
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
;triggerall=helper(218),var(35)!=
;;triggerall = var(53)-((ceil(var(53)/100)-ifelse(var(53)-(ceil(var(53)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100)*100)<0,1,0))*100)<=0
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive 
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall = ((statetype != A)&&(p2statetype!=A))||((statetype = A)&&(p2statetype=A)&&(p2bodydist Y=[-20,20]))
triggerall=p2bodydist x>=-30
triggerall = stateno != 100
triggerall = p2bodydist X < ifelse(statetype=A||random<=200,30,10)
triggerall=p2movetype!=A;;(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000;||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H);;||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0||p2statetype=A
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=500;;||p2movetype=A;+ifelse(var(53)-((ceil(var(53)/100)-ifelse(var(53)-(ceil(var(53)/100)*100)<0,1,0))*100)>=30,-100,0);;;;||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger2 =((p2stateno=[50,59]) && var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20)
trigger3 =(teamside=2 && var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30)
trigger4 = statetype=A
[State -1]
type = ChangeState
value=109
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall=p2stateno!=80103
triggerall=(p2movetype!=H)||random<=100||partner,life>0
triggerall = RoundState = 2 && Alive  && stateno!=3
triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
;triggerall=partner,life>0||helper(218),var(10)-((ceil(helper(218),var(10)/100)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall = ((statetype != A)&&(p2statetype!=A));;;;;;;||((statetype = A)&&(p2statetype=A)&&p2bodydist y=[-40,40])
triggerall=p2bodydist x>=-20
triggerall = p2bodydist X < 50
;triggerall = (p2statetype != A);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*10=[-60,0]
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
;triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000;||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H);||p2stateno=[120,159]
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=helper(218),var(52)<2000000 && helper(218),var(53)<2000000
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=100+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-50,0);||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999]);||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(random<=500||p2bodydist x>60,200,400)
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
;triggerall=p2stateno!=80103
;triggerall=(p2movetype!=H)||random<=100||partner,life>0
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive  && stateno!=3
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>=-20
triggerall=p2bodydist x<=100 
triggerall = (p2statetype != A);;||(p2bodydist y>=-40 && p2bodydist x>0)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=100
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=200+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-100,0)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(p2bodydist x>40,210,410)
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
;triggerall=p2stateno!=80103
;triggerall=(p2movetype!=H)||random<=100||partner,life>0
triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300);;random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive  && stateno!=3
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>20
triggerall=p2bodydist x<=70
triggerall = (p2statetype != A);;||(p2bodydist y>=-40 && p2bodydist x>0)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=100
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=200+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-100,0)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(random<=500||p2bodydist x>80,420,220)
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
;triggerall=p2stateno!=80103
;triggerall=(p2movetype!=H)||random<=100||partner,life>0
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||random<=500
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30;;||partner,life<=0;;random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive  && stateno!=3
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>60
triggerall=p2bodydist x<=ifelse(random<=500,100,120)
triggerall = (p2statetype != A);;||(p2bodydist y>=-40 && p2bodydist x>0)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000;;||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>100))
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=100
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=100+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-50,0);;||(partner,life>0&&p2bodydist x>70);;;||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(random<=500||p2bodydist x>100,20240,20230)
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall =time<30||random<=333||p2bodydist x<=100
;triggerall=p2stateno!=80103
;triggerall=(p2movetype!=H)||random<=100||partner,life>0
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||partner,life<=0;;random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive  && stateno!=3
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<8000||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<6000||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<4000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,10,20)||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<2000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>60
triggerall=p2bodydist x<=ifelse(random<=500,100,150)
triggerall = (p2statetype != A);;||(p2bodydist y>=-40 && p2bodydist x>0)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000;;||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>100))
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=100
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=50;;||(partner,life>0&&p2bodydist x>70);;;||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)<20000)||random<=500;||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(p2bodydist x>100,1000,1100)
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
;triggerall=p2stateno!=80103
;triggerall=(p2movetype!=H)||random<=100||partner,life>0
triggerall =time<30||random<=333||p2bodydist x<=100
triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||p2bodydist x>100
triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(p2bodydist x<=100,10,20)||random<=500
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||partner,life<=0;;random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive  && stateno!=3
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<8000||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<6000||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<4000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,10,20)||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<2000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
triggerall=p2bodydist x>60
triggerall=p2bodydist x<=ifelse(random<=500,ifelse(random<=250,200,150),100)
triggerall = (p2statetype != A);;||(p2bodydist y>=-40 && p2bodydist x>0)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000;;||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>100))
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=100
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=50;;||(partner,life>0&&p2bodydist x>70);;;||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)<20000)||random<=500;||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=1400
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall =time<30||random<=333||p2bodydist x<=100
;triggerall=p2stateno!=80103
;triggerall=(p2movetype!=H)||random<=100||partner,life>0
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||partner,life<=0;;random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive  && stateno!=3
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<8000||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<6000||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<4000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,10,20)||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<2000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>90
triggerall=p2bodydist x<=ifelse(random<=500,ifelse(random<=250,200,150),100)
triggerall = (p2statetype != A);;||(p2bodydist y>=-40 && p2bodydist x>0)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>120))
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=100
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=50;;||(partner,life>0&&p2bodydist x>70);;;||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =p2bodydist x>150||(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)<20000);||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger2 =partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0
[State -1]
type = ChangeState
value=1200
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
;triggerall =time<30||random<=333||p2bodydist x<=100
;triggerall=p2stateno!=80103
;triggerall=(p2movetype!=H)||random<=100||partner,life>0
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||partner,life<=0;;random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive  && stateno!=3
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype = A && pos y=[-150,-40]
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>=0
triggerall=p2bodydist x<=50
triggerall = (p2statetype != A);;||(p2bodydist y>=-40 && p2bodydist x>0)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000;;||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>100))
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=100
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=100;;||(partner,life>0&&p2bodydist x>70);;;||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;;trigger1 =p2bodydist x>150||(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(p2bodydist x<60,300,20240)
triggerall = !ishelper
triggerall = var(59)>0
triggerall =p2bodydist x<60||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive
triggerall = statetype != A
triggerall=p2bodydist x>=0
triggerall=p2bodydist x<=100
triggerall = (p2statetype != A);||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*8>=-40&&p2bodydist x-enemynear(helper(218),Var(36)),vel x*10<=30)
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=100)
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =(helper(218),fvar(30)>0 && helper(218),fvar(30)=p2stateno)||(helper(218),fvar(31)>0 && helper(218),fvar(31)=p2stateno)||(helper(218),fvar(32)>0 && helper(218),fvar(32)=p2stateno)
[State -1]
type = ChangeState
value=ifelse(random<=500||(partner,life>0)||(helper(218),var(3)>=600),47,48)
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall=partner,life>0||helper(218),var(35)!=10
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive && partner,life<=0
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
triggerall =helper(218),var(3)<600||random<=500
triggerall =time<30||random<=333
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<8000||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<6000||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<4000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,10,20)||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<2000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall =statetype != A 
triggerall=p2bodydist x>60 && p2bodydist x<=300
;;triggerall=P2bodyDist X-enemynear(helper(218),Var(36)),vel x*30>=150
triggerall = (p2statetype != A);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*5>=-20
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>150))
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=((enemynear(helper(218),Var(36)),vel x>=0||random<=500)&&p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=100
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=50;||(partner,life>0&&(p2bodydist x>=170||facing*enemynear(helper(218),Var(36)),facing>0));+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-50,0);||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=45
triggerall = !ishelper
triggerall = var(59)>0  
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall = RoundState = 2 && Alive  && partner,life<=0
;;triggerall = power>=50 && var(10) != 1
triggerall = statetype=A 
triggerall = var(11) = 1 && vel y > 0
triggerall=p2bodydist x<=100
triggerall=p2bodydist x<=ifelse(random<=100,-10,-30)||pos y>-60
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>150) && random<=500)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall =0; Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=100
;triggerall = ((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5100,5110])
trigger1=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger1=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger1=helper(218),var(18)<1000 ;&& p2stateno=5120;; && p2bodydist x>130
trigger2=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger2=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger2=helper(218),var(18)>3000;;||(enemynear(helper(218),Var(36)),vel x<=0&&p2stateno!=[5100,5110])
;trigger3=helper(218),var(18)>3000 && ((helper(218),var(35)=[13,14])||(helper(218),var(35)=16))
;trigger2=helper(218),var(18)-(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000))*1000>=30000
;;=helper(218),var(35)=[11,12];;;;||helper(218),var(35)=12;;-(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000))*1000>=200000
;;trigger3=1
[State -1]
type = ChangeState
value=108
triggerall = !ishelper
triggerall = var(59)>0  
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall = RoundState = 2 && Alive && partner,life<=0
;;triggerall = p2bodydist x<=150||stateno!=100
triggerall = statetype!=A 
triggerall=p2bodydist x>0 && p2bodydist x<100
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>150) && random<=500)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall = 0;Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=100
;triggerall = ((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5100,5110])
trigger1=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger1=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger1=0;helper(218),var(18)<1000 ;&& p2stateno=5120;; && p2bodydist x>130
trigger2=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger2=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger2=helper(218),var(18)>3000;;||(enemynear(helper(218),Var(36)),vel x<=0&&p2stateno!=[5100,5110])
;trigger3=helper(218),var(18)>3000 && ((helper(218),var(35)=[13,14])||(helper(218),var(35)=16))
trigger2=helper(218),var(18)-(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000))*1000<50000
;;=helper(218),var(35)=[11,12];;;;||helper(218),var(35)=12;;-(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000))*1000>=200000
[State -1]
type = ChangeState
value=1400
triggerall = !ishelper
triggerall = var(59)>0  
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall = RoundState = 2 && Alive && partner,life<=0
;;triggerall = p2bodydist x<=150||stateno!=100
triggerall = statetype!=A 
triggerall=p2bodydist x>100 && p2bodydist x<200
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>150) && random<=500)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=100
;triggerall = ((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5100,5110])
trigger1=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger1=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger1=helper(218),var(18)<1000 && p2stateno=5120;; && p2bodydist x>130
trigger2=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger2=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger2=helper(218),var(18)>3000;;||(enemynear(helper(218),Var(36)),vel x<=0&&p2stateno!=[5100,5110])
;trigger3=helper(218),var(18)>3000 && ((helper(218),var(35)=[13,14])||(helper(218),var(35)=16))
trigger2=helper(218),var(18)-(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000))*1000=[25000,29000]
;;=helper(218),var(35)=[11,12];;;;||helper(218),var(35)=12;;-(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000))*1000>=200000
[State -1]
type = ChangeState
value=ifelse(frontedgebodydist>120&&(enemynear(helper(218),Var(36)),vel x>=2),108,ifelse(backedgebodydist>60,105,108))
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(stateno!=1000) && (stateno!=[1340,1349]) && (stateno!=[11120,11129]) && (pos y>=0||((stateno!=[10,19])&&(prevstateno!=[10,19])))
;;triggerall=helper(218),var(35)!=11
triggerall=p2stateno!=80103
triggerall = RoundState = 2 && Alive && numenemy=1 && numpartner=0
triggerall = statetype != A
;triggerall=backedgebodydist>60||(p2bodydist x<=60 && enemynear(helper(218),Var(36)),vel x>=3 && p2stateno!=[5100,5110])
triggerall=p2bodydist x>=-60
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)
triggerall =(p2statetype!=A);||(helper(218),var(35)=8)
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger1 =backedgebodydist<=50 && p2bodydist x<=60 && (enemynear(helper(218),Var(36)),vel x>=0||p2stateno=[5100,5110])
trigger2 =p2bodydist x<=100 && enemynear(helper(218),Var(36)),vel x>=2 && p2stateno!=[5100,5110]
trigger3 = p2bodydist x<=30 ;;;&& helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)!=[1,2]

[State -1]
type = ChangeState
value=ifelse((helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]),161,108)
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(facing>0&&enemynear(helper(218),Var(36)),pos x>partner,pos x)||(facing<0&&enemynear(helper(218),Var(36)),pos x<partner,pos x)
triggerall=partner,life>0 && enemynear(helper(218),Var(36)),facing*facing<0
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive
triggerall =statetype != A 
triggerall=p2bodydist x>-20 && p2bodydist x<100 && frontedgebodydist-p2bodydist x>60
triggerall=(p2movetype!=H)||p2stateno<200||helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=100
trigger1 =1





















[State -1:          AI Guarding]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0
;triggerall=var(52)=[-999999,999]
;triggerall=var(56)!=[1000,1999]
triggerall = (stateno!=50)||var(3)!=[1,2]
triggerall = helper(218),var(35)!=1
triggerall = RoundState = 2 && Alive
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=5120&&AnimTime=0)
triggerall = StateNo != [130, 139]
triggerall = StateNo != 102
triggerall = StateNo != [110,111]
triggerall = prevStateNo != [110,111]
triggerall=numenemy=1
;triggerall=statetype !=A
triggerall=inguarddist=0 && helper(218),inguarddist=0
triggerall=var(54)<100000
trigger1=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)=[1,9]
value      = ifelse(statetype=A,132,130)
[State -1:          AI Guarding]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0 
;triggerall=var(52)=[-999999,999]
;triggerall=var(56)!=[1000,1999]
triggerall = (stateno!=50)||var(3)!=[1,2]
triggerall = helper(218),var(35)!=1
triggerall = RoundState = 2 && Alive
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=5120&&AnimTime=0)
triggerall = StateNo != [130, 139]
triggerall = StateNo != 102
triggerall = StateNo != [110,111]
triggerall = prevStateNo != [110,111]
triggerall=numenemy=1
;triggerall=statetype !=A
triggerall=inguarddist=0 && helper(218),inguarddist=0
triggerall=var(54)<100000
trigger1=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)>=1
value      = ifelse(statetype=A,132,ifelse((enemynear(helper(218),Var(36)),stateType = A),130,131))
[State -1:          AI Guarding]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0
;triggerall=var(52)=[-999999,999]
;triggerall=var(56)!=[1000,1999]
;triggerall = p2statetype=A||helper(218),var(35)!=1
triggerall = RoundState = 2 && Alive
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=5120&&AnimTime=0)
triggerall = StateNo != [130, 139]
triggerall = StateNo != 102
triggerall = StateNo != [110,111]
triggerall = prevStateNo != [110,111]
triggerall=statetype !=A
triggerall=inguarddist||helper(218),inguarddist
triggerall=var(54)<100000
trigger1=enemynear(helper(218),Var(36)),MoveType = A
trigger1=enemynear(helper(218),Var(36)),statetype=A
trigger2=enemynear(helper(218),Var(36)),MoveType = A
trigger2=(var(16)>0 && var(16)=p2stateno)||(var(15)>0 && var(15)=p2stateno)
value      = 130
[State -1:          AI Guarding]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0 
;triggerall=var(52)=[-999999,999]
;triggerall=var(56)!=[1000,1999]
;triggerall = helper(218),var(52)<2000000 && helper(218),var(53)<2000000||p2statetype=A||helper(218),var(35)!=1
triggerall = RoundState = 2 && Alive
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=5120&&AnimTime=0)
triggerall = StateNo != [130, 139]
triggerall = StateNo != 102
triggerall = StateNo != [110,111]
triggerall = prevStateNo != [110,111]
triggerall=statetype!=A
triggerall=inguarddist||helper(218),inguarddist
triggerall=var(54)<100000
triggerall=(enemynear(helper(218),Var(36)),MoveType != A)||(var(16)<=0||var(16) !=p2stateno)
triggerall=(enemynear(helper(218),Var(36)),MoveType != A)||(var(15)<=0 ||var(15) !=p2stateno)
trigger1=enemynear(helper(218),Var(36)),statetype !=A
trigger1=enemynear(helper(218),Var(36)),MoveType = A
trigger2=enemynear(helper(218),Var(36)),movetype !=A
value      = 131
[State -1:          AI Guarding]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0 
triggerall=(stateno!=1000) && (stateno!=[1340,1349]) && (stateno!=[11120,11129]) && (pos y>=0||((stateno!=[10,19])&&(prevstateno!=[10,19])))
;triggerall=var(52)=[-999999,999]
;triggerall=var(56)!=[1000,1999]
;triggerall = helper(218),var(35)!=1
;triggerall = helper(218),var(35)!=[100,130]
triggerall = RoundState = 2 && Alive
triggerall = StateNo != [120, 159]
triggerall = StateNo != 102
triggerall = StateNo != [110,111]
triggerall=inguarddist||helper(218),inguarddist
triggerall=var(54)<100000
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=5120&&AnimTime=0)
triggerall=statetype=A
trigger1=1
value      = 132









[State -1, Stand1]
type = ChangeState
value =100
triggerall = !IsHelper
triggerall = var(59)>0 
;triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
;triggerall=(helper(218),var(35)!=[11,12])
;triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,20,30)||(p2movetype!=H)||(p2statetype!=A)||(helper(218),var(35)=[11,12])||(helper(218),var(35)=[14,16])
;triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||(helper(218),var(35)!=19)
;triggerall = (helper(218),var(35)!=[13,14])
;triggerall = (helper(218),var(35)!=16)
;triggerall = (helper(218),var(35)!=[12,13])||p2statetype!=A
;triggerall = (helper(218),var(35)!=14)||p2bodydist x>150
;triggerall = (helper(218),var(35)!=18)||helper(218),var(10)-((ceil(helper(218),var(10)/1000000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/1000000)*1000000)<0,1,0))*1000000)>=100000
;triggerall = helper(218),var(12)<1000000||partner,life>0||(p2movetype=H&&p2bodydist y<-20)||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30
triggerall = RoundState = 2 && Alive && (stateno!=[100,109]) && stateno!=3
triggerall = statetype != A 
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000;||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=(p2movetype!=H)||(p2stateno =[120,159])
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])
triggerall=p2bodydist x>20||frontedgebodydist>60
;;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10000)*10000)<0,1,0))*10000)!=[2000,2999]
trigger1=p2bodydist x>250 && p2bodydist x-enemynear(helper(218),Var(36)),vel x*30>250
;trigger2=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999]
trigger2=0;random<=8 && p2bodydist x<=150 && p2movetype!=H
trigger3=p2movetype=H && p2stateno>200 && p2bodydist x>100 && ((p2bodydist y>=-60&&p2bodydist x>60)||p2bodydist x>120||p2statetype!=A)
trigger3=0;helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno!=[5100,5150]
[State -1, Stand1]
type = ChangeState
value =27;ifelse((helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2bodydist x>ifelse(p2movetype=H,40,100)),100,25)
triggerall = !IsHelper
triggerall = var(59)>0 
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20&&p2movetype!=A
;triggerall=(helper(218),var(35)!=[11,12])
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive && stateno!=3
triggerall = statetype != A 
triggerall=((stateno !=[100,101])&&(stateno !=[27,28]))||(time>=10 && stateno=28 && (random<=200||helper(218),var(35)=20));;||(stateno=28 && (helper(218),var(35)=18||helper(218),var(35)=[20,26]))
triggerall=(inguarddist=0 && helper(218),inguarddist=0&&(numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0&&facing*enemynear(helper(218),Var(36)),facing>0&&p2bodydist x>=80);||(numhelper(765)>=2&&helper(765),var(0)=0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0||(p2movetype=H &&p2stateno !=[120,159])
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])
trigger1=p2bodydist x>=ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0,150,ifelse(p2movetype=H&&p2stateno>200&&(frontedgebodydist>50||p2statetype!=A),0,30))
trigger1=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999]
trigger1=(helper(218),var(35)!=11);;||(p2bodydist y<-60&&p2statetype=A)||partner,life>0
trigger2=p2bodydist x>=ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0,150,ifelse(p2movetype=H&&p2stateno>200&&(frontedgebodydist>50||p2statetype!=A),0,50))
trigger2=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)=[2000,2999]
trigger2=(helper(218),var(35)!=11);;||(p2bodydist y<-60&&p2statetype=A)||partner,life>0
trigger3=p2bodydist x>=100;ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0,80,ifelse(p2movetype=H&&p2stateno>200,0,50))
trigger3=(helper(218),var(35)=11);;&&(p2bodydist y>=-60||p2statetype!=A)&&partner,life<=0
[State -1, Stand1]
type = ChangeState
value =28
triggerall = !IsHelper
triggerall = var(59)>0 
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20&&p2movetype!=A
;triggerall=(helper(218),var(35)!=[11,12])
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20&&helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive && stateno!=3
triggerall = statetype != A 
triggerall=((stateno !=[100,101])&&(stateno !=[27,28]))||(time>=10 && stateno=27 && random<=200)||(helper(218),var(35)=20 && stateno=27 && p2bodydist x<10)
triggerall=(inguarddist=0 && helper(218),inguarddist=0&&(numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0&&facing*enemynear(helper(218),Var(36)),facing>0&&p2bodydist x>=80);||(numhelper(765)>=2&&helper(765),var(0)=0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0||(p2movetype=H &&p2stateno !=[120,159])
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])
trigger1=p2bodydist x<ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0,150,ifelse(p2movetype=H&&p2stateno>200&&(frontedgebodydist>50||p2statetype!=A),0,30))
trigger1=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999]
trigger1=(helper(218),var(35)!=11);;||(p2bodydist y<-60&&p2statetype=A)||partner,life>0
trigger2=p2bodydist x<ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0,150,ifelse(p2movetype=H&&p2stateno>200&&(frontedgebodydist>50||p2statetype!=A),0,50))
trigger2=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)=[2000,2999]
trigger2=(helper(218),var(35)!=11);;||(p2bodydist y<-60&&p2statetype=A)||partner,life>0
trigger3=p2bodydist x<100;ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0,80,ifelse(p2movetype=H&&p2stateno>200,0,50))
trigger3=(helper(218),var(35)=11);;&&(p2bodydist y>=-60||p2statetype!=A)&&partner,life<=0
[State -1, Stand]
type = ChangeState
value = 0
triggerall = !IsHelper
triggerall = (var(59) !=0)||stateno=[27,28]
;triggerall = RoundState = 2 && Alive && time
triggerall = time>=10 && statetype != A
trigger1=(time>=10 && stateno=[27,28]);||(time>=3 && stateno=[100,101])
trigger1 = RoundState != 2
trigger2=(stateno=[27,28]);||(stateno=[100,101])||(StateNo = 5120 && AnimTime = 0)
trigger2 = p2bodydist x<-60||time>=300;||(p2bodydist x<0 && facing*enemynear(helper(218),Var(36)),facing>0)
;;trigger3 = helper(218),var(35)=18 && p2bodydist x=[-20,20]
ctrl=1
[State -1, Stand]
type = ChangeState
value = 101
triggerall = !IsHelper
triggerall = (var(59) !=0)
triggerall =stateno=100 && statetype != A
trigger1 = RoundState != 2
trigger2 = p2movetype=A||inguarddist||(((p2movetype!=H)||p2stateno<200||p2bodydist x<20)&&time>=30)
trigger2 = p2movetype=A||inguarddist||p2bodydist x-enemynear(helper(218),Var(36)),vel x*30<180||p2bodydist x<=180
trigger3 =p2bodydist x<ifelse(p2statetype=A,10,0)












[State -2]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0
triggerall=time=0
triggerall = RoundState = 2 && Alive
trigger1=stateno=[5200,5210]
trigger1=0;numpartner=0
value      =5050
[State -1]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0
triggerall = RoundState = 2 && Alive
trigger1=stateno=20
trigger2=stateno=40
trigger3=0;stateno=45
trigger4=stateno=10
value      = ifelse(stateno=45,ifelse(vel y >=0,51,50),ifelse(p2movetype=A&&(helper(218),var(3)<600)&&p2bodydist x<130,28,27))
ctrl=1
[State -1]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)!=0
triggerall=stateno=[20,23]
trigger1=roundstate !=2
trigger2=p2bodydist x<-10
value      =0
ctrl=1


















































[State -1]
type = ChangeState
value =4250;;14400;ifelse(random<=500,14500,14600);ifelse(statetype=A,ifelse(random<=350,2150,ifelse(random<=700,2125,2100)),ifelse(random<=350,1500,ifelse(random<=700,2400,2400)));ifelse(random<=350,6000,ifelse(random<=700,4000,4100));ifelse(random<=350,ifelse(numhelper(6061) = 1,6051,6050),ifelse(random<=700,6000,ifelse((var(29)=1),4100,4000)));ifelse(random<=350,3000,ifelse(random<=700,3100,3050));ifelse((var(20)=1)||(var(21)=1)||(var(22)=1),ifelse((life>500||(var(20)=6)||(var(21)=6)||(var(22)=6))&&(var(20)!=4)&&(var(21)!=4)&&(var(22)!=4),1370,1390),1310)
triggerall =var(53)=0
trigger1 = 0;(StateType != A) && (MoveContact) && stateno<2000
[State -1]
type = ChangeState
value =3900;;;ifelse(random<=500,1210,1220);ifelse(random<=333,3000,ifelse(random<=666,3050,3100));ifelse((var(20)=1)||(var(21)=1)||(var(22)=1),ifelse((life>500||(var(20)=6)||(var(21)=6)||(var(22)=6))&&(var(20)!=4)&&(var(21)!=4)&&(var(22)!=4),1370,1390),1310)
triggerall =var(59)=0
trigger1 =Command = "a"
trigger1 = statetype != A
trigger1 =0;ctrl||stateno=[20,29]
;trigger2=(stateno = 320) && (Time >= 35)
































































;===========================================================================
;===========================================================================
[State -1, Black Onslaught]
type = ChangeState
value = 3900
triggerall = var(59)=0
triggerall = command = "DDD_ab"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = p2life <= lifemax/4
triggerall = var(21) = 0
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,213]) && movecontact
trigger5 = (stateno = 620) && movecontact
trigger6 = (stateno = 810) && movecontact
trigger7 = (stateno = 815) && movecontact
;---------------------------------------------------------------------------
[State -1, Devoured By Darkness]
type = ChangeState
value = 3050
triggerall = var(59)=0
triggerall = command = "QCB_ab"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,213]) && movecontact
trigger5 = (stateno = 620) && movecontact
trigger6 = (stateno = 810) && movecontact
trigger7 = (stateno = 815) && movecontact
;-----------------------------------------------
;---------------------------------------------------------------------------
[State -1, Carnage Scissors]
type = ChangeState
value = 3000
triggerall = var(59)=0
triggerall = command = "QCF_ab"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,213]) && movecontact
trigger5 = (stateno = 620) && movecontact
trigger6 = (stateno = 810) && movecontact
trigger7 = (stateno = 815) && movecontact
;---------------------------------------------------------------------------
[State -1, Inferno Divider]
type = ChangeState
value = 1300
triggerall = var(59)=0
triggerall = command = "DP_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,213]) && movecontact
trigger5 = (stateno = 620) && movecontact
trigger6 = (stateno = 810) && movecontact
trigger7 = (stateno = 815) && movecontact
trigger8 = stateno = 5120 && time >= 3
;---------------------------------------------------------------------------
[State -1, Air Inferno Divider]
type = ChangeState
value = 1301
triggerall = var(59)=0
triggerall = command = "DP_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = (stateno = 240) && movecontact
;---------------------------------------------------------------------------
[State -1, Uppercut]
type = ChangeState
value = 1305
triggerall = var(59)=0
triggerall = command = "a" || command = "b" || command = "c"
triggerall = statetype = A
trigger1 = (stateno = [1300,1301]) && animelemtime(15) >= 0
trigger1 = movehit
;---------------------------------------------------------------------------
[State -1, Axe Kick]
type = ChangeState
value = 1310
triggerall = var(59)=0
triggerall = command = "a" || command = "b" || command = "c"
triggerall = statetype = A
trigger1 = (stateno = 1305) && animelemtime(9) >= 0
;---------------------------------------------------------------------------
[State -1, Hell's Fang]
type = ChangeState
value = 1000
triggerall = var(59)=0
triggerall = command = "QCB_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,213]) && movecontact
trigger5 = (stateno = 620) && movecontact
trigger6 = (stateno = 810) && movecontact
trigger7 = (stateno = 815) && movecontact
;---------------------------------------------------------------------------
[State -1, Hell's Fang Part II]
type = ChangeState
value = 1001
triggerall = var(59)=0
triggerall = command = "a" || command = "b" || command = "c"
triggerall = statetype != A
trigger1 = stateno = 1000 && animelemtime(12) >= 0
;---------------------------------------------------------------------------
[State -1, Nightmare Edge]
type = ChangeState
value = 1200
triggerall = var(59)=0
triggerall = command = "QCB_a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = (stateno = 240) && movecontact
;---------------------------------------------------------------------------
[State -1, Nightmare Edge Part II]
type = ChangeState
value = 1202
triggerall = var(59)=0
triggerall = command = "a" || command = "b" || command = "c"
triggerall = statetype != A
trigger1 = anim = 1201 && animelemtime(3) >= 0
;---------------------------------------------------------------------------
[State -1, Gauntlet Hades]
type = ChangeState
value = 1100
triggerall = var(59)=0
triggerall = command = "QCB_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,213]) && movecontact
trigger5 = (stateno = 620) && movecontact
trigger6 = (stateno = 810) && movecontact
trigger7 = (stateno = 815) && movecontact
;---------------------------------------------------------------------------
[State -1, Air Gauntlet Hades]
type = ChangeState
value = 1101
triggerall = var(59)=0
triggerall = command = "QCB_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = (stateno = 240) && movecontact
;---------------------------------------------------------------------------
[State -1, Gauntlet Hades Part II]
type = ChangeState
value = 1102
triggerall = var(59)=0
triggerall = command = "a" || command = "b" || command = "c"
triggerall = statetype = A
trigger1 = stateno = 1100 && animelemtime(9) >= 0
trigger2 = stateno = 1101 && animelemtime(6) >= 0
;---------------------------------------------------------------------------
[State -1, Dead Spike]
type = ChangeState
value = 1400
triggerall = var(59)=0
triggerall = command = "QCF_a" || command = "QCF_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,213]) && movecontact
trigger5 = (stateno = 620) && movecontact
trigger6 = (stateno = 810) && movecontact
trigger7 = (stateno = 815) && movecontact
;---------------------------------------------------------------------------
[State -1, Dead Spike Dash Cancel]
type = ChangeState
value = 1401
triggerall = var(59)=0
triggerall = command = "FF"
triggerall = statetype != A
trigger1 = stateno = 1400 && animelemtime(12) >= 0

;---------------------------------------------------------------------------
[State -1, EX Dead Spike]
type = ChangeState
value = 1450
triggerall = var(59)=0
triggerall = command = "QCF_c"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,213]) && movecontact
trigger5 = (stateno = 620) && movecontact
trigger6 = (stateno = 810) && movecontact
trigger7 = (stateno = 815) && movecontact

;---------------------------------------------------------------------------
[State -1, EX Dead Spike Part II]
type = ChangeState
value = 1451
triggerall = var(59)=0
triggerall = command = "a" || command = "b" || command = "c"
triggerall = statetype != A
trigger1 = stateno = 1450 && animelemtime(12) >= 0

;---------------------------------------------------------------------------
[State -1, Seed of Tatarus]
type = ChangeState
value = 1452
triggerall = var(59)=0
triggerall = command = "a" || command = "b" || command = "c"
triggerall = statetype != A
trigger1 = stateno = 1451 && animelemtime(13) >= 0
;---------------------------------------------------------------------------
[State -1, Blood Scythe]
type = ChangeState
value = 1500
triggerall = var(59)=0
triggerall = command = "QCB_c"
triggerall = power >= 500
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,213]) && movecontact
trigger5 = (stateno = 620) && movecontact
trigger6 = (stateno = 810) && movecontact
trigger7 = (stateno = 815) && movecontact

;---------------------------------------------------------------------------
[State -1, Air Blood Scythe]
type = ChangeState
value = 1500
triggerall = var(59)=0
triggerall = command = "QCB_c"
triggerall = power >= 500
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = (stateno = 240) && movecontact

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59)=0
trigger1 = command = "FF"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Back Dash]
type = ChangeState
value = 105
triggerall = var(59)=0
trigger1 = command = "BB"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Grab]
type = ChangeState
value = 800
triggerall = var(59)=0
triggerall = command = "z"
triggerall = statetype != A
triggerall = ctrl
trigger1 = stateno != 100

[State -1, Running Grab]
type = ChangeState
value = 820
triggerall = var(59)=0
triggerall = command = "z"
triggerall = statetype != A
trigger1 = stateno = 100
trigger2 = stateno = 1401

[State -1, Air Grab]
type = ChangeState
value = 840
triggerall = var(59)=0
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl



;===========================================================================
;---------------------------------------------------------------------------
[State -1, 4A]
type = ChangeState
value = 300
triggerall = var(59)=0
triggerall = command = "a"
triggerall = command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = 300) && Movecontact
trigger2 = var(30) > 0

;---------------------------------------------------------------------------
[State -1, 5A]
type = ChangeState
value = 200
triggerall = var(59)=0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = 400) && Movecontact
trigger3 = (Stateno = 300) && Movecontact

;---------------------------------------------------------------------------
[State -1, 5AA]
type = ChangeState
value = 201
triggerall = var(59)=0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 200
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAA]
type = ChangeState
value = 202
triggerall = var(59)=0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 201
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAAA]
type = ChangeState
value = 203
triggerall = var(59)=0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 202
trigger1 = Movecontact
trigger1 = animelemtime(12) > 0

;---------------------------------------------------------------------------
[State -1, 5B]
type = ChangeState
value = 210
triggerall = var(59)=0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (Stateno = 400) && Movecontact
trigger4 = (Stateno = 300) && Movecontact

;---------------------------------------------------------------------------
[State -1, 5BB]
type = ChangeState
value = 211
triggerall = var(59)=0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = stateno = 210
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5BBB]
type = ChangeState
value = 212
triggerall = var(59)=0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = stateno = 211
trigger1 = Movehit && animelemtime(11) > 0

;---------------------------------------------------------------------------
[State -1, 5C]
type = ChangeState
value = 220
triggerall = var(59)=0
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,410]) && Movecontact
trigger5 = stateno = 100
trigger6 = stateno = 1401

;---------------------------------------------------------------------------
[State -1, 66A]
type = ChangeState
value = 230
triggerall = var(59)=0
triggerall = command = "a"
trigger1 = statetype != A
trigger1 = Stateno = 100
trigger2 = stateno = 1401

;---------------------------------------------------------------------------
[State -1, 66B]
type = ChangeState
value = 240
triggerall = var(59)=0
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = Stateno = 100
trigger2 = stateno = 1401

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59)=0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 2A]
type = ChangeState
value = 400
triggerall = var(59)=0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,201]) && Movecontact

;---------------------------------------------------------------------------
[State -1, 2B]
type = ChangeState
value = 410
triggerall = var(59)=0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = [200,201]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
;---------------------------------------------------------------------------
[State -1, 2C]
type = ChangeState
value = 420
triggerall = var(59)=0
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,410]) && Movecontact
trigger5 = Stateno = 100
trigger6 = stateno = 1401
;---------------------------------------------------------------------------
[State -1, jA]
type = ChangeState
value = 600
triggerall = var(59)=0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 240) && movecontact

;---------------------------------------------------------------------------
[State -1, jAA]
type = ChangeState
value = 601
triggerall = var(59)=0
triggerall = command = "a"
trigger1 = stateno = 600
trigger1 = movecontact

;---------------------------------------------------------------------------
[State -1, jB]
type = ChangeState
value = 610
triggerall = var(59)=0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,601]
trigger2 = movecontact
trigger3 = (stateno = 240) && movecontact

;---------------------------------------------------------------------------
[State -1, jC]
type = ChangeState
value = 620
triggerall = var(59)=0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 410) && movecontact && animelemtime(5) >= 0
trigger3 = (stateno = [600,611]) && movecontact
trigger4 = (stateno = 240) && movecontact

;---------------------------------------------------------------------------
[State -1, Jump Cancel]
type = ChangeState
value = 40
triggerall = var(59)=0
triggerall = command = "holdup"
trigger1 = Stateno = 100
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (Stateno = 202) && Movecontact
trigger3 = animelemtime(12) > 0
trigger4 = (Stateno = [210,212]) && Movecontact
trigger5 = (Stateno = 410) && Movecontact

;---------------------------------------------------------------------------
[State -1, Air Jump]
type = ChangeState
value = 45
triggerall = var(59)=0
triggerall = command = "holdup"
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = ctrl && vel y > 0
trigger2 = (stateno = 410) && movecontact
trigger3 = (stateno = [600,611]) && movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 1102) && movecontact

;---------------------------------------------------------------------------
[State -1, Air Dash]
type = ChangeState
value = 102
triggerall = var(59)=0
triggerall = command = "FF"
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = ctrl
trigger2 = (stateno = 410) && movecontact
trigger3 = (stateno = [600,611]) && movecontact

;---------------------------------------------------------------------------
[State -1, Air Dash Back]
type = ChangeState
value = 103
triggerall = var(59)=0
triggerall = command = "BB"
triggerall = statetype = A
triggerall = var(11) = 1
;triggerall = 
trigger1 = ctrl
trigger2 = (stateno = [600,611]) && movecontact

;---------------------------------------------------------------------------
[State -1, backdash alternate command]
type = ChangeState
value = 105
triggerall = var(59)=0
triggerall = command = "y"
triggerall = command = "holdback"
triggerall = command != "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 5120 && time >= 3

;---------------------------------------------------------------------------
[State -1, Dodge]
type = ChangeState
value = 160
triggerall = var(59)=0
triggerall = command = "y"
triggerall = command != "holdback"
triggerall = command != "holdfwd"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Forward Dodge]
type = ChangeState
value = 161
triggerall = var(59)=0
triggerall = command = "y"
triggerall = command != "holdback"
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 5120 && time >= 3
trigger4 = stateno = 1401

;---------------------------------------------------------------------------
[State -1, Air Dodge]
type = ChangeState
value = 162
triggerall = var(59)=0
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Roman Cancel]
type = ChangeState
value = 6060
triggerall = var(59)=0
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 1000
triggerall = !ctrl
trigger1 = movecontact
trigger2 = stateno = 1400 && animelemtime(11) > 0
trigger2 = helper(6140),var(1)=1
trigger3 = stateno = 1400 && animelemtime(11) > 0
trigger3 = helper(6141),var(1)=1
trigger4 = stateno = 1450 && animelemtime(11) > 0
trigger4 = helper(6142),var(1)=1
;---------------------------------------------------------------------------
[State -1, Air Roman Cancel]
type = ChangeState
value = 6061
triggerall = var(59)=0
triggerall =  movetype != H
triggerall = statetype = A
triggerall = command = "x" && power >= 1000
triggerall = !ctrl
trigger1 = movecontact

;---------------------------------------------------------------------------
[State -1, Force Roman Cancel]
type = ChangeState
value = 6060
triggerall = var(59)=0
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 500
triggerall = !ctrl
triggerall = movecontact
trigger1 = stateno = [3000,3001]
trigger2 = stateno = 3050
trigger3 = stateno = 3051
trigger4 = stateno = 3052

;---------------------------------------------------------------------------
[State -1, Guard Cancel]
type = ChangeState
value = 203
triggerall = var(59)=0
triggerall = statetype != A
trigger1 = command = "x" || command = "b+c"
trigger1 = command = "holdfwd"
trigger1 = power >= 1000
trigger1 = StateNo = 150 || StateNo = 152 || StateNo = 151 || StateNo = 153

;---------------------------------------------------------------------------
[State -1, Burst]
type = ChangeState
value = 8000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = Var(50) != 1
triggerall = command = "y+z"
triggerall = alive && Roundstate = 2
triggerall = movetype = H
triggerall = enemy,hitdefattr != SCA,HA,HP,AT
triggerall = stateno != [120,155]
triggerall = stateno != [800,899]
triggerall = stateno != [3000,4999]
trigger1 = !ctrl
trigger2 = numenemy
trigger2 = enemy,movehit && p2stateno != [3000,4999]
trigger3 = enemy,numhelper
trigger3 = movetype = H && p2stateno != [3000,4999]
trigger4 = numenemy
trigger4 = enemy,movehit && p2stateno != [800,899]
