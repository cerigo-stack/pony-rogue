/// @description Insert description here
// You can write your code in this editor
if (mycharacter.has_played==false and mycharacter.hp>0)
{
	if (obj_battleUI.not_casting) use_ability();
}else
{
	instance_destroy(obj_textEnemyTurn)
	var msg = instance_create_depth(0,0,-1,obj_textEnemyTurn)
	if (mycharacter.hp<=0) msg.text="YOU ARE DEAD (no big surprise)"
	else if(mycharacter.has_played==true and obj_battleRules.turn) msg.text="You have already played this turn"
}