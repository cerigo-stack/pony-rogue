/// @description Insert description here
// You can write your code in this editor
height=64;
width = 2*height;
text="PLAY"
function onclickme()
{
	if (mouse_check_button_pressed(mb_left))
	{
		if (mouse_x>=x and mouse_x<=x+width and mouse_y>=y and mouse_y<=y+height)
		{
			return true
		}
	}
	return false
}
