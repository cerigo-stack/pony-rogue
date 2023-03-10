/// @description Insert description here
// You can write your code in this editor
var scene_text=scene[current_scene].text
if (char_index<string_length(scene_text))
{
	char_index++
	current_text+=string_char_at(scene_text,char_index)
	
}
else
{
	audio_stop_sound(current_sound)
}