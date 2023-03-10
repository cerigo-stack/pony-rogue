/// @description Insert description here
// You can write your code in this editor
event_inherited()
function attack()
{
	var alive_members = instance_number_alive(obj_partyMember)
	var attackme=irandom(array_length(alive_members)-1)
	abilities[0].attack(alive_members[attackme])
	audio_play_sound(snd_enemyAttack,0,false)
}
portait=spr_yellowEnemy
hp_init(15)
name = string(random(35))
abilities = [obj_hoofStomp]