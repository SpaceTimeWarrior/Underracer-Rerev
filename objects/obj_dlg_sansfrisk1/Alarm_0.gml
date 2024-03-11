if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(38,0))
}}

if dialogue=2{
if obj_kart_frisk.direction<95 and obj_kart_frisk.direction>85{
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(38,1))
}}
else{
if(obj_kart_frisk.direction > 90 && obj_kart_frisk.direction < 270){obj_kart_frisk.direction -= (obj_kart_frisk.kart_turn / 1.25)}
else{obj_kart_frisk.direction += (obj_kart_frisk.kart_turn / 1.25)}
alarm[0]=1;
}}

if dialogue=3{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(38,2))
}}

if dialogue=4{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_chuckle
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(38,3))
}}

if dialogue=5{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_wink
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(38,4))
}}

if dialogue=6{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_chuckle
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(38,5))
}}

if dialogue=7{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(38,6))
}}


if dialogue>dialoguemax{
if !instance_exists(obj_kart_sans){instance_destroy()}
else{
if obj_kart_sans.x <= 2328 and obj_kart_sans.y <= 168
{
    with obj_kart_sans{instance_destroy()}
}
else if obj_kart_sans.path_index == -1
{
    with obj_kart_sans {path_start(pth_cmpn_sansexit, obj_kart_sans.kart_accel * 10, 0, true)}
}

alarm[0]=1;
}}

