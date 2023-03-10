/// @description Insert description here
// You can write your code in this editor
var scene_text=scene[current_scene].text
if (char_index<string_length(scene_text)) 
{
	char_index=string_length(scene_text)-1
	current_text=scene_text
}
else next_dialog()