if !sound_isplaying(snd_whoopee){
if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_chuckle
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(41,0))
}}

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(41,1))
}}  

if dialogue=3{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(41,2))
}}

if dialogue=4{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_chuckle
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(41,3))
}}

if dialogue=5{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(41,4))
}}

if dialogue=6{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(41,5))
}}

if dialogue=7{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(41,6))
}}

if dialogue=8{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(41,7))
}}

if dialogue=9{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_chuckle
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(41,8))
}}

if dialogue=10{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(41,9))
}}

if dialogue=11{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(41,10))
}}

if dialogue=12{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(41,11))
}}

if dialogue=13{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(41,12))
}}

if dialogue>dialoguemax{instance_destroy()}
}
else{alarm[0]=1}

