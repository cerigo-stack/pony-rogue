/// @description Insert description here
// You can write your code in this editor
var c = c_white
var spr = scene[current_scene].character
var pos = scene[current_scene].pos
draw_text_ext_color(room_width/2,room_height/2,current_text,16,(room_width-4)/2,c,c,c,c,1)
draw_sprite(spr,0,pos,room_height/2)