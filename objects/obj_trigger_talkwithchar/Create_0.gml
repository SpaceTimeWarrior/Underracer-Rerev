activate=true
camsin=0
camcos=0
cam=0
stun=false
image_speed=0.25
modelsprite=spr_actfx
z=16
try{
if !variable_local_exists(dlgobj1) then {dlgobj1=obj_dlg_errormsg}
if !variable_local_exists(dlgobj2) then {dlgobj2=obj_dlg_errormsg}
if !variable_local_exists(dlgobj3) then {dlgobj3=obj_dlg_errormsg}
if !variable_local_exists(talkmax) then {talkmax=1}
if !variable_local_exists(dist) then {dist=50}
}catch(_e){
	dlgobj1 = 0;
	dlgobj2 = 0;
	dlgobj3 = 0;
	talkmax = 0;
	dist = 0;
}
talk=1

