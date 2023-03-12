/// @description Insert description here
// You can write your code in this editor
event_inherited()
name="SKIP"
tooltip= "Skips turn"
manacost=-700
function use_ability() {
	obj_battleRules.current_caster.restore(0,-manacost)
	ability_used()
}