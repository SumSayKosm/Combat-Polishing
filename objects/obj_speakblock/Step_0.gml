interact_key = keyboard_check_pressed(ord("Z"));

if place_meeting(x, y, Obj_Blek) && interact_key && instance_number(Obj_textbox) < 1
{

create_textbox(text_id);
}

if Quenched = true && asset_has_tags(Obj_Blek, "Quenched", asset_object)
{
	text_id = "GK1 Fireplace Water"
	
}

if GKFireDoused = true && asset_has_tags(Obj_Blek, "GKFireDoused", asset_object)
{
	text_id = "GK1 Fireplace Water B"
	
}

if KitchenNote = true && asset_has_tags(Obj_Blek, "KitchenNote", asset_object)
{
	text_id = "GK1 Armchair Key"
	
}