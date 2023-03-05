/// @description Insert description here
// You can write your code in this editor
event_inherited()
name="Hoof Stomp"
tooltip= "Don't hit Zecora"
function use_ability()
{
	obj_battleUI.not_casting = false
	var prompt = instance_create_depth(0,0,-1,obj_selectEnemy)
	prompt.who_asked = id
}

function attack(enemy)
{
	enemy.hp-=10
}