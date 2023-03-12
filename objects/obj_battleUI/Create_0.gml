/// @description Insert description here
// You can write your code in this editor
selected_char=noone
containerY=3*room_height/4
containerX=0
width=room_width
height=room_height-(3*room_height/4)
offset=8
draw_abilities_X=(containerX+width/2)
draw_abilities_Y=(containerY+height/2)
boxdimension = 32
not_casting = true

function select_character(_id)
{
	if (not_casting){
		selected_char=_id
		if obj_battleRules.turn obj_battleRules.current_caster=selected_char
		instance_destroy(obj_ability)
		var skip=instance_create_depth(containerX+width/3,containerY+height/2,-1, obj_skip)
		skip.mycharacter=selected_char
		for (var i=0;i<array_length(selected_char.abilities);i++)
		{
			var _x=draw_abilities_X+i*offset+i*boxdimension
			var _y=draw_abilities_Y
			var ability=instance_create_depth(_x,_y,-1, selected_char.abilities[i])
			ability.mycharacter=selected_char
		}
	}
}