
function scr_set_defaults_for_text() {
line_break_pos[0, page_number] = 999;
line_break_num[page_number] = 0;
line_break_offset[page_number] = 0;


//variables for every letter/character
for (var c = 0; c < 500; c++)
{
	col_1[c, page_number] = c_white
	col_2[c, page_number] = c_white
	col_3[c, page_number] = c_white
	col_4[c, page_number] = c_white
	
	float_text[c, page_number] = 0;
	float_dir[c, page_number] = c*20;
	
	shake_text[c, page_number] = 0;
	shake_dir[c, page_number] = irandom(360);
	shake_timer[c, page_number] = irandom(4);
	

	
}

txtb_spr[page_number] = Spr_dialouge_box;
speaker_sprite[page_number] = noone;
speaker_side[page_number] = 1;
snd[page_number] = snd_textbox_sound;
}



//-----------text VFX---------//
/// @param 1st_char
/// @param last_char
/// @param col1
/// @param col2
/// @param col3
/// @param col4
function scr_text_color(_start, _end, _col1, _col2, _col3, _col4){
	
for (var c = _start; c <= _end; c++)
{
col_1[c, page_number-1] = _col1;	
col_2[c, page_number-1] = _col2;	
col_3[c, page_number-1] = _col3;	
col_4[c, page_number-1] = _col4;	
}


}

// @param 1st_char
// @param last_char

function scr_text_float(_start, _end){

for (var c = _start; c <= _end; c++)
{
float_text[c, page_number-1] = true
}

}



// @param 1st_char
// @param last_char

function scr_text_shake(_start, _end){

for (var c = _start; c <= _end; c++)
{
shake_text[c, page_number-1] = true
}

}

/// @param closed_id
function scr_on_close(_closed_id) {
    on_close = true;
    on_close_id = _closed_id;
}


/// @param text
///@param [character]
///@param [side]



function scr_text(_text)
{

scr_set_defaults_for_text();

text[page_number] = _text;

//get character info for portraits
if argument_count > 1 {
	switch(argument[1])
	{
		
		//BLEK//
		case "Blek":
		speaker_sprite[page_number] = spr_Blek_portrait;
		snd[page_number] = snd_Blek_Talk
		break;
		
		case "Blek base":
		speaker_sprite[page_number] = spr_Blek_portrait_base;
		snd[page_number] = snd_Blek_Talk
		break;
		
		case "Blek confused":
		speaker_sprite[page_number] = Spr_Blek_portrait_confused;
		snd[page_number] = snd_Blek_Talk
		break;
		
		case "Blek listen":
		speaker_sprite[page_number] = Spr_Blek_portrait_listen;
		snd[page_number] = snd_Blek_Talk
		break;
		
		case "Blek shock":
		speaker_sprite[page_number] = Spr_Blek_portrait_shock;
		snd[page_number] = snd_Blek_Talk
		break;
		
		case "Blek concerned":
		speaker_sprite[page_number] = Spr_Blek_portrait_concerned
		snd[page_number] = snd_Blek_Talk
		break;
		
		case "Blek cry":
		speaker_sprite[page_number] = Spr_Blek_portrait_cry
		snd[page_number] = snd_Blek_Talk
		break;
		
		case "Blek appalled":
		speaker_sprite[page_number] = spr_Blek_portrait_appalled
		snd[page_number] = snd_Blek_Talk
		break;
		
		case "Blek mad":
		speaker_sprite[page_number] = spr_Blek_portrait_mad
		snd[page_number] = snd_Blek_Talk
		break;
		
		case "Blek wonder":
		speaker_sprite[page_number] = Spr_Blek_portrait_wonder
		snd[page_number] = snd_Blek_Talk
		break;
		
		case "Blek depressed":
		speaker_sprite[page_number] = spr_Blek_portrait_depressed
		snd[page_number] = snd_Blek_Talk
		break;
		
		case "Blek sob":
		speaker_sprite[page_number] = Spr_Blek_portrait_sob
		snd[page_number] = snd_Blek_Talk
		break;
		
		case "Blek resigned":
		speaker_sprite[page_number] = Spr_Blek_portrait_resigned
		snd[page_number] = snd_Blek_Talk
		break;
		
		
		//LUMEN//
		case "Lumen":
		speaker_sprite[page_number] = Spr_Lumen_portrait_base;
		txtb_spr[page_number] = spr_dialouge_box_blue;
		break;
		
		case "Lumen shock":
		speaker_sprite[page_number] = spr_Lumen_portrait_shock;
		txtb_spr[page_number] = spr_dialouge_box_blue;
		break;
		
		case "Lumen cry":
		speaker_sprite[page_number] = Spr_Lumen_portrait_cry;
		txtb_spr[page_number] = spr_dialouge_box_blue;
		break;
		
		case "Lumen fear":
		speaker_sprite[page_number] = spr_Lumen_portrait_fear;
		txtb_spr[page_number] = spr_dialouge_box_blue;
		break;
		
		
		case "Lumen shame":
		speaker_sprite[page_number] = Spr_Lumen_portrait_shame;
		txtb_spr[page_number] = spr_dialouge_box_blue;
		break;
		
		
		
		
		
		
		
		//TROUT//
		case "Trout Base":
		speaker_sprite[page_number] = Spr_Trout_portrait_base;
		txtb_spr[page_number] = spr_dialouge_box_purple
		snd[page_number] = snd_Trout_Talk
		break;
		
		case "Trout Angry":
		speaker_sprite[page_number] = spr_Trout_portrait_angry
		txtb_spr[page_number] = spr_dialouge_box_purple
			snd[page_number] = snd_Trout_Talk
		break;
		
		case "Trout Laugh":
		speaker_sprite[page_number] = spr_Trout_portrait_laugh
		txtb_spr[page_number] = spr_dialouge_box_purple
			snd[page_number] = snd_Trout_Talk
		break;
		
		case "Trout Sad":
		speaker_sprite[page_number] = spr_Trout_portrait_sad
		txtb_spr[page_number] = spr_dialouge_box_purple
			snd[page_number] = snd_Trout_Talk
		break;
		
		case "Trout Shock":
		speaker_sprite[page_number] = spr_Trout_portrait_shock
		txtb_spr[page_number] = spr_dialouge_box_purple
			snd[page_number] = snd_Trout_Talk
		break;
		
			case "Trout Unamused":
		speaker_sprite[page_number] = spr_Trout_portrait_unamused
		txtb_spr[page_number] = spr_dialouge_box_purple
			snd[page_number] = snd_Trout_Talk
		break;	
		
		
		
		//NERVES//
		
		case "Nerves base":
		speaker_sprite[page_number] = spr_Nerves_Portrait_base
		txtb_spr[page_number] = spr_dialouge_box_grey
			snd[page_number] = snd_Nerves_Talk
		break;	
		
		case "Nerves unamused":
		speaker_sprite[page_number] = spr_Nerves_Portrait_unamused
		txtb_spr[page_number] = spr_dialouge_box_grey
			snd[page_number] = snd_Nerves_Talk
		break;	
		
		case "Nerves sad":
		speaker_sprite[page_number] = spr_Nerves_Portrait_sad
		txtb_spr[page_number] = spr_dialouge_box_grey
			snd[page_number] = snd_Nerves_Talk
		break;	
		
		case "Nerves smug":
		speaker_sprite[page_number] = spr_Nerves_Portrait_smug
		txtb_spr[page_number] = spr_dialouge_box_grey
			snd[page_number] = snd_Nerves_Talk
		break;	
		
		
		
		
		
		//SHARPE//
		
		case "Sharpe base":
		speaker_sprite[page_number] = spr_Sharpe_Portrait_base
		txtb_spr[page_number] = Spr_dialouge_box_pink
		snd[page_number] = snd_Sharpe_Talk
		break;	
		
		case "Sharpe frown":
		speaker_sprite[page_number] = spr_Sharpe_Portrait_big_frown
		txtb_spr[page_number] = Spr_dialouge_box_pink
		snd[page_number] = snd_Sharpe_Talk
		break;	
		
		case "Sharpe fury":
		speaker_sprite[page_number] = spr_Sharpe_Portrait_fury
		txtb_spr[page_number] = Spr_dialouge_box_pink
		snd[page_number] = snd_Sharpe_Talk
		break;	
		
		case "Sharpe hurt":
		speaker_sprite[page_number] = spr_Sharpe_Portrait_hurt
		txtb_spr[page_number] = Spr_dialouge_box_pink
		snd[page_number] = snd_Sharpe_Talk
		break;	
		
		case "Sharpe narrow":
		speaker_sprite[page_number] = spr_Sharpe_Portrait_narrow
		txtb_spr[page_number] = Spr_dialouge_box_pink
		snd[page_number] = snd_Sharpe_Talk
		break;	
		
		case "Sharpe shock":
		speaker_sprite[page_number] = spr_Sharpe_Portrait_shock
		txtb_spr[page_number] = Spr_dialouge_box_pink
		snd[page_number] = snd_Sharpe_Talk
		break;	
		
		case "Sharpe smug smile":
		speaker_sprite[page_number] = spr_Sharpe_Portrait_smile
		txtb_spr[page_number] = Spr_dialouge_box_pink
		snd[page_number] = snd_Sharpe_Talk
		break;	
		
		case "Sharpe smug":
		speaker_sprite[page_number] = spr_Sharpe_Portrait_smug
		txtb_spr[page_number] = Spr_dialouge_box_pink
		snd[page_number] = snd_Sharpe_Talk
		break;	
		
		case "Sharpe smile":
		speaker_sprite[page_number] = spr_Sharpe_Portrait_big_smile
		txtb_spr[page_number] = Spr_dialouge_box_pink
		snd[page_number] = snd_Sharpe_Talk
		break;	
		
		
		
		//ARAN//
		
		case "Aran gone":
		txtb_spr[page_number] = spr_dialouge_box_orange
		snd[page_number] = snd_Aran_Talk
		break;	
		
		case "Aran base":
		speaker_sprite[page_number] = spr_Aran_portrait_base
		txtb_spr[page_number] = spr_dialouge_box_orange
		snd[page_number] = snd_Aran_Talk
		break;	
		
		case "Aran mad":
		speaker_sprite[page_number] = spr_Aran_portrait_mad
		txtb_spr[page_number] = spr_dialouge_box_orange
		snd[page_number] = snd_Aran_Talk
		break;	
		
		case "Aran narrow":
		speaker_sprite[page_number] = spr_Aran_portrait_narrow
		txtb_spr[page_number] = spr_dialouge_box_orange
		snd[page_number] = snd_Aran_Talk
		break;	
		
		case "Aran sad":
		speaker_sprite[page_number] = spr_Aran_portrait_sad
		txtb_spr[page_number] = spr_dialouge_box_orange
		snd[page_number] = snd_Aran_Talk
		break;	
		
		case "Aran shame":
		speaker_sprite[page_number] = spr_Aran_portrait_shame
		txtb_spr[page_number] = spr_dialouge_box_orange
		snd[page_number] = snd_Aran_Talk
		break;	
		
		case "Aran shock":
		speaker_sprite[page_number] = spr_Aran_portrait_shock
		txtb_spr[page_number] = spr_dialouge_box_orange
		snd[page_number] = snd_Aran_Talk
		break;	
		
		case "Aran happy":
		speaker_sprite[page_number] = spr_Aran_portrait_happy
		txtb_spr[page_number] = spr_dialouge_box_orange
		snd[page_number] = snd_Aran_Talk
		break;	
		
		case "Aran confused":
		speaker_sprite[page_number] = spr_Aran_portrait_confused
		txtb_spr[page_number] = spr_dialouge_box_orange
		snd[page_number] = snd_Aran_Talk
		break;	
		
		
		
		
		
		
		
		
		//OTHER//
		
			case "Russell":
		speaker_sprite[page_number] = spr_Russell_Portrait
  	txtb_spr[page_number] = spr_dialouge_box_yellow
			snd[page_number] = snd_Russell_Talk
		break;
		
			case "Russell View":
		speaker_sprite[page_number] = spr_Russell_Portrait_Eaten
  	txtb_spr[page_number] = spr_dialouge_box_yellow
			snd[page_number] = snd_Russell_Talk
		break;
		
			case "Burn Cat":
		speaker_sprite[page_number] = Spr_Burncat_Portrait
		snd[page_number] = snd_textbox_sound
		break;
		
		case "Lanternhead":
		speaker_sprite[page_number] = Spr_Lanternhead_Portrait
		txtb_spr[page_number] = spr_dialouge_box_black
		snd[page_number] = snd_LH_Talk
		break;
		
		case "Machinot":
		speaker_sprite[page_number] = spr_Machinot_Portrait
		txtb_spr[page_number] = spr_dialouge_box_black
		snd[page_number] = snd_textbox_sound
		break;
	
		case "Smalls":
		speaker_sprite[page_number] = spr_Smalls_Portrait
		txtb_spr[page_number] = Spr_dialouge_box_black_black
		snd[page_number] = snd_Smalls_Talk
		break;
	
		case "Jackson":
		speaker_sprite[page_number] = spr_Jackson_Portrait
		txtb_spr[page_number] = spr_dialouge_box_light_purple
		snd[page_number] = snd_Jackson_Talk
		break;
		
		case "Heyho":
		speaker_sprite[page_number] = spr_Heyho_portrait
		txtb_spr[page_number] = spr_dialouge_box_blue
		snd[page_number] = snd_Heyho_Talk
		break;
		
		case "Heyho sad":
		speaker_sprite[page_number] = spr_Heyho_portrait_sad
		txtb_spr[page_number] = spr_dialouge_box_blue
		snd[page_number] = snd_Heyho_Talk
		break;
		
		case "Deer":
		speaker_sprite[page_number] = spr_Deer_Portrait
		txtb_spr[page_number] = Spr_dialouge_box_maroon
		snd[page_number] = snd_Deer_Talk
		break;
	
		case "Empty":
		speaker_sprite[page_number] = spr_Deer_Portrait_animated
		txtb_spr[page_number] = Spr_dialouge_box_maroon
		snd[page_number] = snd_Deer_Talk
		break;	
	
		case "GK":
		speaker_sprite[page_number] = spr_GK_Portrait
		txtb_spr[page_number] = spr_dialouge_box_black
		snd[page_number] = snd_GK_Talk
		break;
		
		case "Empty God":
		txtb_spr[page_number] = Spr_dialouge_box_maroon
		snd[page_number] = snd_GotF_Talk
		break;
		
		case "GotF":
		speaker_sprite[page_number] = spr_Deerlord_Portrait
		txtb_spr[page_number] = Spr_dialouge_box_maroon
		snd[page_number] = snd_GotF_Talk
		break;
		
		case "Flesh":
		txtb_spr[page_number] = Spr_dialouge_box_Flesh
		snd[page_number] = snd_Flesh_Talk
		break;
	
	}
}
	

//side the character is on
if argument_count > 2 {
	
	speaker_side[page_number] =argument[2];
	
}

page_number++;
}







/// @param option
/// @param link_id
function scr_option(_option, _link_id)
{
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number++;
}







function create_textbox(_text_id)
{

with (instance_create_depth(0, 0, -999999, Obj_textbox) )
{
scr_game_text(_text_id);

}


}