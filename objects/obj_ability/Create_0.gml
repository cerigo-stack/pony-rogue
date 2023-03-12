/// @description Insert description here
// You can write your code in this editor
name=""
tooltip=""
manacost=0
damage=10
function use_ability(){}

function ability_used()
{
	obj_battleRules.current_caster.has_played=true
	obj_battleRules.check_turn_is_finished()
}

function attack()
{
	
}

