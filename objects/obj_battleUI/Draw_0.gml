/// @description Insert description here
// You can write your code in this editor
var c = c_gray

draw_rectangle_colour(containerX,containerY,containerX+width,containerY+height,c,c,c,c,false)

if (selected_char != noone)
{
	var display_hp=string(selected_char.hp>0?selected_char.hp:0)+"/"+string(selected_char.hp_default)+" hp"
	var display_mp=string(selected_char.mp>0?selected_char.mp:0)+"/"+string(selected_char.mp_default)+" mp"
	var text_c = c_black
	var ability_c = c_fuchsia
	draw_text_color(containerX+width-96,containerY+height/2,display_hp,text_c,text_c,text_c,text_c,1)
	draw_text_color(containerX+width-96,containerY+height/2+8+6,display_mp,text_c,text_c,text_c,text_c,1)
	draw_sprite_ext(selected_char.portait,0,containerX+64,containerY+16,2,2,0,c_white,1)
	draw_text_colour(containerX+64+128/2,containerY+16+128+32,selected_char.name,text_c,text_c,text_c,text_c,1)
	for (var i=0; i < selected_char.max_abilities;i++)
	{
		var _x=draw_abilities_X+i*offset+i*boxdimension
		var _y=draw_abilities_Y
		draw_rectangle_colour(_x,_y,_x+boxdimension,_y+boxdimension,ability_c,ability_c,ability_c,ability_c,false)
	}
}