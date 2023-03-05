/// @description Insert description here
// You can write your code in this editor

var clicked_enemy=instance_position(mouse_x,mouse_y,obj_enemy)
if (clicked_enemy!=noone)
{
	if(clicked_enemy.hp>0){
		 who_asked.attack(clicked_enemy)
		 audio_play_sound(snd_enemyAttack,0,false)
		 who_asked.ability_used()
		 obj_battleUI.not_casting=true
		 instance_destroy()
	}
}