if can_code=true{
var code;
code=get_string("","Insert Code Here");
if code="blueberry"{global.unlock_us_sans=true;show_message("UnderSwap Sans Unlocked!");coded=true;can_code=false}
else if code="evilpapy"{global.unlock_uf_papy=true;show_message("UnderFell Papyrus Unlocked!");coded=true;can_code=false}
else if code="femness"{global.unlock_ss_chara=true;show_message("StoryShift Chara Unlocked!");coded=true;can_code=false}
else if code="TOOFAST"{enemy_speed_multiplier=.25;coded=true;can_code=false}
else if code="toslow"{enemy_speed_multiplier=1.5;coded=true;can_code=false}
else if code="bravery"{player_speed_multiplier=1.5;coded=true;can_code=false}
else if code="patience"{player_speed_multiplier=.25;coded=true;can_code=false}
else if code="deltarune"{player_speed_multiplier=1;enemy_speed_multiplier=1;coded=true;can_code=false}
else{can_code = false}
}

if coded=true{tex=spr_tv_tex_flowey}

