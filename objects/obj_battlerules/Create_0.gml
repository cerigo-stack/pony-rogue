/// @description Insert description here
// You can write your code in this editor
#macro MYTURN 1
#macro ENEMYTURN 0

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

randomize()
turn= MYTURN

function battle_end()
{
	with(obj_enemy) alarm[0]=-1
	if array_length(instance_number_alive(obj_partyMember)) == 0
	{
		show_message("YOU LOST")
		return
	}
	show_message("YOU WON")
}



function check_turn_is_finished()
{
	var i = 0
	var type=turn? obj_partyMember : obj_enemy
	var other_type=!turn? obj_partyMember : obj_enemy
	var alive_type=instance_number_alive(type)
	var other_alive=instance_number_alive(other_type)
	if  array_length(other_alive) == 0 or array_length(alive_type)== 0 return battle_end()
	for (var k =0;k<array_length(alive_type);k++)
	{
		with(alive_type[k]) 
		{
			if (has_played) i++
		}
	}
	if (array_length(alive_type) == i)
	{
		turn = !turn
		if (!turn)
		{
			var j=1
			var alive_party=instance_number_alive(obj_enemy)
			for (var k=0;k<array_length(alive_party);k++)
			{
				with(alive_party[k])
				{
					alarm[0]=j*120
					has_played=false
					j++
				}
			}
		}
		else
		{
			with(obj_partyMember)
			{
				has_played=false
			}
		}
	}
	show_debug_message(i)
}