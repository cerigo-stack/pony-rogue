/// @description Insert description here
// You can write your code in this editor
#macro MYTURN 1
#macro ENEMYTURN 0

randomize()
turn= MYTURN

function check_casualties(turn)
{
	var type=turn? obj_enemy : obj_partyMember
	with(type)
	{
		//if hp<=0 instance_destroy()
	}
}

function check_turn_is_finished()
{
	check_casualties(turn)
	var i = 0
	var type=turn? obj_partyMember : obj_enemy
	var alive_type=instance_number_alive(type)
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