
if room ==  rm_area1_24{

if asset_has_tags(Obj_Blek, "HHallway1", asset_object) && place_meeting(x, y, Obj_Blek)
{
	instance_create_layer(783, 144, "Instances_12", Obj_Shitass_Pillar_2)
	instance_destroy()
	asset_remove_tags(Obj_Blek, "HHallway1", asset_object)
}
} else {	
instance_destroy(Obj_Shitass_Pillar_2)
}