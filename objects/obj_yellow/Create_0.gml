/// @description Insert description here
// You can write your code in this editor
event_inherited()
function attack()
{
	var alive_members = instance_number_alive(obj_partyMember)
	var attackme=irandom(array_length(alive_members)-1)
	var ab = instance_create_depth(x,y,0,abilities[0])
	var skip = instance_create_depth(x,y,0,obj_skip)
	if ab.manacost<=mp{
		ab.attack(alive_members[attackme])
		audio_play_sound(snd_enemyAttack,0,false)
	} else {
		skip.use_ability()
	}
	instance_destroy(ab)
	instance_destroy(skip)
}
portait=spr_yellowEnemy
init(15,50)
name = string(random(35))
abilities = [obj_hoofStomp]