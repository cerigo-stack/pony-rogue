/// @description Insert description here
// You can write your code in this editor
#macro LEFT 128
#macro RIGHT room_width-128

draw_set_valign(fa_top)
draw_set_halign(fa_left)
scene=
[
	{
		character: spr_redChar,
		pos: LEFT,
		text: "Are you black?",
		voice: vo_dinos
	},
	{
		character: spr_yellowEnemy,
		pos: RIGHT,
		text: "No",
		voice: vo_cerigo
	},
	{
		character: spr_redChar,
		pos: LEFT,
		text: ":3",
		voice: vo_dinos
	},
	{
		character: spr_blueChar,
		pos: LEFT,
		text: "No way 🤯 girl on discord? 🧐 Howdy I didn't expect to see no girl round dees parts 🤠 allow me to introduce myself to you mlady 😤 you can call me Jamal and I'll call you my kitten 🤓 I moderate multiple discord servers y'know I'm a man of high status 😁 I've been looking for some female companionship lately 🤗 and since my mother has thrown me out of the basement I'm not an independent person 😎 some may even refer to me as a big boy ☺️ I live in a homeless shelter tho 🤧 and I have no job 😄 I have hobbies such as reddit and discord and anime so I'm quirky like that 😵‍💫I live of disability benefits which I spend on funko pops and anime figurines 🤑 the homeless shelter however does not allow me more than 5 hours of reddit time so it's literally 1984 😓 but please give me a chance mlady cuz I just need you to cook me food and let me live in your house and give me money and change my diapers and pay for my Nitro 🤩 Other than that I am a nice guy 😍",
		voice: vo_sorting
	}
]

char_index = 0
current_text=""
current_scene=0
current_sound = audio_play_sound(scene[current_scene].voice,0,true)

function next_dialog()
{
	audio_stop_sound(current_sound)
	if (current_scene >= array_length(scene)-1) {room_goto(rm_battle)}
	else
	{
		char_index=0
		current_text=""
		current_scene++
		current_sound = audio_play_sound(scene[current_scene].voice,0,true)
	}
}