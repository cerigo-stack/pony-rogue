/// @description Insert description here
// You can write your code in this editor

hp_default=100
hp=100
name="woman"
mp=100
abilities=[]
portait=undefined
has_played=false
max_abilities=3

function hp_init(num)
{
	hp_default=num
	hp=num
}

function draw_hp_bar()
{
	var c_nh=$120f4a
	var c_hp=c_green
	var w = sprite_width
	var h = 8
	var draw_hp=hp>0?hp:0
	draw_rectangle_color(x,y-h,x+w,y,c_nh,c_nh,c_nh,c_nh,false)
	if hp >0 draw_rectangle_color(x,y-h,x+w*(draw_hp/hp_default),y,c_hp,c_hp,c_hp,c_hp,false)
}