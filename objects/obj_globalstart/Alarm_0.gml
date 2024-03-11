var __b__;
__b__ = action_if_variable(global.startroom, "Spoiler", 0);
if __b__{
	{
	action_another_room(rm_spoilerwarning);
	return;
	}
}
__b__ = action_if_variable(global.startroom, "Hacked", 0);
if __b__{
	{
	global.gamemode="Campaign"
	global.char1="Frisk"
	global.char1_obj=obj_kart_frisk

	action_another_room(rm_cmpn_hacked);
	return;
	}
}
else{
	{
	action_another_room(rm_error);
	return;
	}
}
