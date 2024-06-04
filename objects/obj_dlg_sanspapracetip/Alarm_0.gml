if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
if !sound_isplaying(global.snd_papyrus){sound_2loop(global.snd_papyrus)}
with dlg
{
spriteface=spr_dlg_sans_chuckle
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(40,0))
}}  

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
if !sound_isplaying(global.snd_papyrus){sound_2loop(global.snd_papyrus)}
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(40,1))
}}  

if dialogue=3{ 
dlg=instance_create(x,y,obj_writer);
if !sound_isplaying(global.snd_papyrus){sound_2loop(global.snd_papyrus)}
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(40,2))
}}  

if dialogue=4{ 
dlg=instance_create(x,y,obj_writer);
if !sound_isplaying(global.snd_papyrus){sound_2loop(global.snd_papyrus)}
with dlg
{
spriteface=spr_dlg_sans_chuckle
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(40,3))
}}  

if dialogue=5{ 
dlg=instance_create(x,y,obj_writer);
if !sound_isplaying(global.snd_papyrus){sound_2loop(global.snd_papyrus)}
with dlg
{
spriteface=spr_dlg_sans_wink
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(40,4))
}}  

if dialogue=6{ 
dlg=instance_create(x,y,obj_writer);
if !sound_isplaying(global.snd_papyrus){sound_2loop(global.snd_papyrus)}
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(40,5))
}}  

if dialogue>dialoguemax{instance_destroy()}

