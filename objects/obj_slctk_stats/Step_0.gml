if(keyboard_check_pressed(ord("Z"))){
	instance_create_depth(x,y,-99999,obj_slctkart_preview);
	instance_destroy()
}
if position_meeting(mouse_x,mouse_y,obj_slct_flowey){
global.preview_charname="Flowey"
spd = 6.9;
accel = 0.25;
turn = 4.75;
}

if position_meeting(mouse_x,mouse_y,obj_slct_frisk){
global.preview_charname="Frisk"
spd = 6.9;
accel = 0.25;
turn = 4.75;
}

if position_meeting(mouse_x,mouse_y,obj_slct_papyrus){
global.preview_charname="Papyrus"
spd = 7.1;
accel = 0.2;
turn = 4;
}

if position_meeting(mouse_x,mouse_y,obj_slct_sans){
global.preview_charname="Sans"
spd = 7.1;
accel = 0.2;
turn = 4;
}

if position_meeting(mouse_x,mouse_y,obj_slct_muffet){
global.preview_charname="Muffet"
spd = 7;
accel = 0.2;
turn = 4;
}

if position_meeting(mouse_x,mouse_y,obj_slct_maddummy){
global.preview_charname="Mad Dummy"
spd = 7.1;
accel = 0.2;
turn = 4;
}

if position_meeting(mouse_x,mouse_y,obj_slct_toriel){
global.preview_charname="Toriel"
spd = 7.1;
accel = 0.25;
turn = 4;
}

if position_meeting(mouse_x,mouse_y,obj_slct_asgore){
global.preview_charname="Asgore"
spd = 7.1;
accel = 0.185;
turn = 6;
}

if position_meeting(mouse_x,mouse_y,obj_slct_undyne){
global.preview_charname="Undyne"
spd = 7.1;
accel = 0.25;
turn = 4.25;
}
if position_meeting(mouse_x,mouse_y,obj_slct_undyne_bike){
global.preview_charname="Undyne on a bike"
spd = 7.1;
accel = 0.25;
turn = 4.25;
}
if position_meeting(mouse_x,mouse_y,obj_slct_alphys){
global.preview_charname="Alphys"
spd = 6.95;
accel = 0.225;
turn = 4;
}

if position_meeting(mouse_x,mouse_y,obj_slct_mettaton){
global.preview_charname="Mettaton"
spd = 6.9;
accel = 0.2125;
turn = 5.25;
}

if position_meeting(mouse_x,mouse_y,obj_slct_mttex){
global.preview_charname="Mettaton EX"
spd = 6.9;
accel = 0.2125;
turn = 5.25;
}

if position_meeting(mouse_x,mouse_y,obj_slct_bpants){
global.preview_charname="Burgerpants"
spd = 7.1;
accel = 0.2;
turn = 4;
}

if position_meeting(mouse_x,mouse_y,obj_slct_mk){
global.preview_charname="Monster Kid"
spd = 6.9;
accel = 0.4;
turn = 3;
}

if position_meeting(mouse_x,mouse_y,obj_slct_tem){
global.preview_charname="Temmie"
spd = 6.9;
accel = 0.25;
turn = 4.5;
}

if position_meeting(mouse_x,mouse_y,obj_slct_napstablook){
global.preview_charname="Napstablook"
spd = 6.9;
accel = 0.25;
turn = 4.75;
}

if position_meeting(mouse_x,mouse_y,obj_slct_gaster){
if instance_exists(obj_slct_gaster){
if obj_slct_gaster.sprite_index!=spr_slct_nochar{
global.preview_charname="Gaster"
spd = 6.9;
accel = 0.25;
turn = 4.75;
}}}

if position_meeting(mouse_x,mouse_y,obj_slct_us_sans){
if instance_exists(obj_slct_us_sans){
if obj_slct_us_sans.sprite_index!=spr_slct_nochar{
global.preview_charname="US!Sans"
spd = 7.1;
accel = 0.2;
turn = 4;
}}}
//spd 5-10
//accel 0.185-0.4
//turn 0-10
if position_meeting(mouse_x,mouse_y,obj_slct_uf_papy){
if instance_exists(obj_slct_uf_papy){
if obj_slct_uf_papy.sprite_index!=spr_slct_nochar{
global.preview_charname="UF!Papyrus"
spd = 7.1;
accel = 0.2;
turn = 4;
}}}
if position_meeting(mouse_x,mouse_y,obj_slct_mewmew01){
if instance_exists(obj_slct_mewmew01){
if obj_slct_mewmew01.sprite_index!=spr_slct_nochar{
global.preview_charname="Mad Mew Mew"
spd = 7.1;
accel = 0.2;
turn = 4;
}}}
if position_meeting(mouse_x,mouse_y,obj_slct_mewmew02){
if instance_exists(obj_slct_mewmew02){
if obj_slct_mewmew02.sprite_index!=spr_slct_nochar{
global.preview_charname="Christmas Mew Mew"
spd = 7.1;
accel = 0.2;
turn = 4;
}}}

if position_meeting(mouse_x,mouse_y,obj_slct_ss_chara){
if instance_exists(obj_slct_ss_chara){
if obj_slct_ss_chara.sprite_index!=spr_slct_nochar{
global.preview_charname="SS!Chara"
spd = 6.9;
accel = 0.25;
turn = 4.75;
}}}
if position_meeting(mouse_x,mouse_y,obj_slct_hfrisk){
if instance_exists(obj_slct_hfrisk){
if obj_slct_hfrisk.sprite_index!=spr_slct_nochar{
global.preview_charname="hacker frisk"
spd = 6.9;
accel = 0.25;
turn = 4.75;
}}}
if position_meeting(mouse_x,mouse_y,obj_slct_asriel){
if instance_exists(obj_slct_asriel){
if obj_slct_asriel.sprite_index!=spr_slct_nochar{
global.preview_charname="Asriel"
spd = 6.9;
accel = 0.25;
turn = 4.75;
}}}
if position_meeting(mouse_x,mouse_y,obj_slct_asrielGOHD){
if instance_exists(obj_slct_asrielGOHD){
if obj_slct_asrielGOHD.sprite_index!=spr_slct_nochar{
global.preview_charname="Asriel God of Hyperdeath"
spd = 7.10;
accel = 0.4;
turn = 6;
}}}

if position_meeting(mouse_x,mouse_y,obj_slct_toby){
if instance_exists(obj_slct_toby){
if obj_slct_toby.sprite_index!=spr_slct_nochar{
global.preview_charname="Annoying Dog"
spd = 6.9;
accel = 0.25;
turn = 4.5;
}}}

if position_meeting(mouse_x,mouse_y,obj_slct_doggo){
global.preview_charname="Doggo"
spd = 6.9;
accel = 0.25;
turn = 4.5;
}

if position_meeting(mouse_x,mouse_y,obj_slct_grillby){
global.preview_charname="Grillby"
spd = 7.1;
accel = 0.2;
turn = 4;
}
if position_meeting(mouse_x,mouse_y,obj_slct_froggit){
global.preview_charname="Froggit"
spd=7
accel=0.25
turn=4.5
}
if position_meeting(mouse_x,mouse_y,obj_slct_vegitoid){
global.preview_charname="Vegitoid"
spd=7
accel=0.25
turn=4.5
}
if position_meeting(mouse_x,mouse_y,obj_slct_Icecap){
global.preview_charname="Icecap"
spd=6.8
accel=0.4
turn=4.4
}
