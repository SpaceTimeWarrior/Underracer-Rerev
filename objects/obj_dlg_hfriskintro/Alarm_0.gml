if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_hfrisk_happy
if instance_exists(obj_npc_hfrisk){
obj_npc_hfrisk.image_speed=0.25
obj_npc_hfrisk.image_index=0}
with dlg
{
txtsound=snd_talk_hfrisk
writer_msg(
scr_dlg_master(59,0)
)
}}

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_hfrisk_quiet
if instance_exists(obj_npc_hfrisk){
obj_npc_hfrisk.image_speed=0.25
obj_npc_hfrisk.image_index=0}
with dlg
{
txtsound=snd_talk_hfrisk
writer_msg(
scr_dlg_master(59,1)
)
}}

if dialogue=3{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_weird
if instance_exists(obj_npc_hfrisk){
obj_npc_hfrisk.image_speed=0
obj_npc_hfrisk.image_index=0}
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
scr_dlg_master(59,2))
}}  

if dialogue=4{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_hfrisk_quiet
if instance_exists(obj_npc_hfrisk){
obj_npc_hfrisk.image_speed=0.25
obj_npc_hfrisk.image_index=0}
with dlg
{
txtsound=snd_talk_hfrisk
writer_msg(
scr_dlg_master(59,3))
}}  

if dialogue=5{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_hfrisk_happy
if instance_exists(obj_npc_hfrisk){
obj_npc_hfrisk.image_speed=0.25
obj_npc_hfrisk.image_index=0}
with dlg
{
txtsound=snd_talk_hfrisk
writer_msg(
scr_dlg_master(59,4))
}}  

if dialogue=6{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_weird2
if instance_exists(obj_npc_hfrisk){
obj_npc_hfrisk.image_speed=0
obj_npc_hfrisk.image_index=0}
with dlg
{
shake=3
txtsound=snd_talk_flowey
writer_msg(
scr_dlg_master(59,5))
}}  

if dialogue=7{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_hfrisk_happy
if instance_exists(obj_npc_hfrisk){
obj_npc_hfrisk.image_speed=0.25
obj_npc_hfrisk.image_index=0}
with dlg
{
txtsound=snd_talk_hfrisk
writer_msg(
scr_dlg_master(59,6))
}}  

if dialogue=8{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_hfrisk_happy
if instance_exists(obj_npc_hfrisk){
obj_npc_hfrisk.image_speed=0.25
obj_npc_hfrisk.image_index=0}
with dlg
{
txtsound=snd_talk_hfrisk
writer_msg(
scr_dlg_master(59,7))
}}  

if dialogue>dialoguemax{
if instance_exists(obj_npc_hfrisk){
obj_npc_hfrisk.image_speed=0
obj_npc_hfrisk.image_index=0}
instance_destroy()}

