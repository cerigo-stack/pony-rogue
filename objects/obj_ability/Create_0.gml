/// @description Insert description here
// You can write your code in this editor
name=""
tooltip=""
manacost=10
damage=10
mycharacter=noone
function use_ability(){}

function ability_used()
{
	mycharacter.has_played=true
	obj_battleRules.check_turn_is_finished()
}

function attack()
{
	
}