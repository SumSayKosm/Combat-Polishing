if asset_has_tags(Obj_Blek, "SmallsTalk", asset_object) && place_meeting(x, y, Obj_Blek) 
{
	instance_create_layer(582, 220, "Instances_1", Obj_Trough)
	instance_destroy()
}