if keyboard_check_pressed(ord("C")){checkpos_loop+=1}
if (instance_exists(obj_cam2)){
	target = obj_cam2.target;
}
if checkpos_loop=1{showpos=true}
if checkpos_loop>1{showpos=false checkpos_loop=0}

if target.lap>global.lap_limit{activate=false}

if destroy=true{instance_destroy()}

scr_hudstep()

