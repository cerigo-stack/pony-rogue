/// @description Insert description here
// You can write your code in this editor
event_inherited()
function attack()
{
	var alive_members = instance_number_alive(obj_partyMember)
	var attackme=irandom(array_length(alive_members)-1)
	alive_members[attackme].hp -=10
	audio_play_sound(snd_enemyAttack,0,false)
}