char=instance_create(x,y,obj_kart_mk)
char.direction+=direction
char.player+=2
char.bot+=1
char.z = terrain_get_z(x,y)
