
if place_meeting(x, y, Obj_Blek) &&  keyboard_check_pressed(ord("Z")) && state <= 1 
{
asset_add_tags(Obj_Blek, LeverTags, asset_object)
state = state+1;
} 

