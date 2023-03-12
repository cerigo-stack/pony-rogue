/// @description Insert description here
// You can write your code in this editor
event_inherited()
name="Hoof Stomp"
tooltip= "Don't hit Zecora"
damage=0
manacost=700
function use_ability()
{
	if obj_battleRules.current_caster.mp>=manacost {
		obj_battleUI.not_casting = false
		var prompt = instance_create_depth(0,0,-1,obj_selectEnemy)
		prompt.who_asked = id
	}else generate_message("YOU HAVE NO MANA")
}

function attack(enemy)
{
		obj_battleRules.current_caster.restore(0,-manacost)
		enemy.hp-=damage
}