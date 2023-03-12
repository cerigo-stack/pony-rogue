/// @description Insert description here
// You can write your code in this editor
function generate_message(text_input)
{
	if obj_battleRules.turn {
		instance_destroy(obj_textEnemyTurn)
		var msg = instance_create_depth(0,0,-1,obj_textEnemyTurn)
		msg.text=text_input
	}
}

if object_get_parent(mycharacter.object_index) == obj_enemy
{
	generate_message("WTF MAN THAT'S AN ENEMY, GET SERIOUS")
	exit
}
if (mycharacter.has_played==false and mycharacter.hp>0)
{
	if (obj_battleUI.not_casting) use_ability();
}else
{
	generate_message("You cannot play on the enemy's turn")
	if (mycharacter.hp<=0) generate_message("YOU ARE DEAD (no big surprise)")
	else if(mycharacter.has_played==true and obj_battleRules.turn) generate_message("You have already played this turn")
}