if keyboard_check_pressed(ord("C")){checkpos_loop+=1}

if checkpos_loop=1{showpos=true}
if checkpos_loop>1{showpos=false checkpos_loop=0}

if target.lap>global.lap_limit{activate=false}

if destroy=true{instance_destroy()}
steps_since_last_draw++;
scr_hudstep()
if(steps_since_last_draw >gspd/2){
	event_perform(ev_gui,0);
}
if global.gamemode="Campaign"{if hud.destroy=false{hud.destroy=true alarm[1]=0}}


