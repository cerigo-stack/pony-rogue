/// @description Insert description here
// You can write your code in this editor

hp_default=100
hp=100
name="woman"
mp_default=100
mp=100
abilities=[]
portait=undefined
has_played=false
max_abilities=3

function init(hp_num,mp_num)
{
	hp_default=hp_num
	hp=hp_num
	mp=mp_num
	mp_default=mp_num
}

function draw_bars()
{
	var c_nh=$120f4a
	var c_hp=c_green
	var c_mp=c_blue
	var w = sprite_width
	var h = 8
	draw_rectangle_color(x,y-2*h,x+w,y-h,c_nh,c_nh,c_nh,c_nh,false)
	draw_rectangle_color(x,y-h,x+w,y,c_nh,c_nh,c_nh,c_nh,false)
	if hp >0 draw_rectangle_color(x,y-2*h,x+w*(hp/hp_default),y-h,c_hp,c_hp,c_hp,c_hp,false)
	if mp >0 draw_rectangle_color(x,y-h,x+w*(mp/mp_default),y,c_mp,c_mp,c_mp,c_mp,false)
}

function restore(in_hp,in_mp)
{
	obj_battleRules.current_caster.hp+=in_hp
	obj_battleRules.current_caster.hp = clamp(obj_battleRules.current_caster.hp,0,obj_battleRules.current_caster.hp_default)
	obj_battleRules.current_caster.mp+=in_mp
	obj_battleRules.current_caster.mp = clamp(obj_battleRules.current_caster.mp,0,obj_battleRules.current_caster.mp_default)
}