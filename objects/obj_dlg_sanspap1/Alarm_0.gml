if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(39,0))
}}

if dialogue=2{
if obj_kart_frisk.x >= 2480 and obj_kart_frisk.y >= 336{

with obj_kart_frisk {path_end()}

if !sound_isplaying(global.snd_papyrus){
sound_2loop(global.snd_papyrus)
papyrus = instance_create(2440,784,obj_kart_papyrus)
with obj_kart_papyrus
{
    path_start(pth_cmpn_papentrance, obj_kart_papyrus.kart_accel * 20, 0, true)
}}

if(obj_kart_papyrus.y <= 392)
{
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(39,1))
}}

else{alarm[0]=1}
}
else{
if(obj_kart_frisk.path_index == -1)
{
    with obj_kart_frisk{path_start(pth_cmpn_frisklamp, obj_kart_frisk.kart_accel * 10, 0, true)}
}

alarm[0]=1
}}  

if dialogue=3{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,2))
}}

if dialogue=4{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,3))
}}

if dialogue=5{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,4))
}}

if dialogue=6{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,5))
}}

if dialogue=7{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,6))
}}

if dialogue=8{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(39,7))
}}

if dialogue=9{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,8))
}}

if dialogue=10{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,9))
}}

if dialogue=11{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,10))
}}

if dialogue=12{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,11))
}}

if dialogue=13{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,12))
}}

if dialogue=14{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,13))
}}

if dialogue=15{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,14))
}}

if dialogue=16{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_laugh
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,15))
}}

if dialogue=17{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_laugh
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,16))
}}

if dialogue=18{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_laugh
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,17))
}}

if dialogue=19{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_laugh
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,18))
}}

if dialogue=20{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(39,19))
}}

if dialogue=21{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_chuckle
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(39,20))
}}

if dialogue=22{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,21))
}}

if dialogue=23{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,22))
}}

if dialogue=24{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,23))
}}

if dialogue=25{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(39,24))
}}

if dialogue=26{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_wink
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(39,25))}}

if dialogue=27{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,26))
}}

if dialogue=28{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_chuckle
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(39,27))
}}

if dialogue=29{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,28))
}}

if dialogue=30{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_side
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,29))
}}

if dialogue=31{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,30))
}}

if dialogue=32{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,31))
}}

if dialogue=33{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(39,32))
}}

if dialogue=34{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_wink
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(39,33))
}}

if dialogue=35{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,34))
}}

if dialogue=36{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,35))
}}

if dialogue=37{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,36))
}}

if dialogue=38{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,37))
}}

if dialogue=39{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,38))
}}

if dialogue=40{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_laugh
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,39))
}}

if dialogue=41{ 
if obj_kart_papyrus.y >= 472{

with obj_kart_papyrus {path_end()}
obj_kart_papyrus.direction = 90
obj_kart_papyrus.speed = 0

dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_laugh
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(39,40))
}}
else{
if(obj_kart_papyrus.path_index == -1)
{
    with obj_kart_papyrus{path_start(pth_cmpn_papexit, obj_kart_papyrus.kart_accel * 20, 0, true)}
}

alarm[0]=1;
}}

if dialogue=42{ 
if !instance_exists(obj_kart_papyrus){
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(39,41))
}}
else{
with obj_kart_papyrus {path_start(pth_cmpn_papexit, obj_kart_papyrus.kart_accel * 20, 0, false)}
if obj_kart_papyrus.y >= 784{
with papyrus{instance_destroy()}
sound_stop(global.snd_papyrus);
}
alarm[0]=1;
}}

if dialogue>dialoguemax{instance_destroy()}

