/// @description Insert description here
// You can write your code in this editor

event_inherited()
damage=10
manacost=100
function use_ability()
 {
	if obj_battleRules.current_caster.mp>=manacost{
		with(obj_enemy){hp-=other.damage}
		obj_battleRules.current_caster.restore(0,-manacost)
		ability_used()
	}else generate_message("YOU HAVE NO MANA")
 }