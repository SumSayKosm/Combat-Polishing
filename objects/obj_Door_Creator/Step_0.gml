


if room == rm_area5_3{
	
if asset_has_tags(Obj_Blek, "GK1BathroomKey", asset_object) && place_meeting(x, y, Obj_Blek)
{
instance_destroy(inst_E62E9F0);
instance_destroy(inst_668CAE37);
instance_destroy(inst_1419B5AA)
	
}
	
}


if room ==  rm_area2_5{

if asset_has_tags(Obj_Blek, "SharpeBeaten", asset_object) && place_meeting(x, y, Obj_Blek)
{
	instance_create_layer(555, 414, "Instances_12", obj_Rudy_Door)
	instance_destroy(inst_6DA68BA9)
	instance_destroy(inst_62D0DAA1)
}
}



if room == rm_area5_3{
	
if asset_has_tags(Obj_Blek, "GK1BedroomKey", asset_object) && place_meeting(x, y, Obj_Blek)
{
instance_destroy(inst_2C742163);
instance_destroy(inst_5AB3CB83);
instance_destroy(inst_7ABA8336);
	
}
	
}

if room == rm_area5_11{
	
if asset_has_tags(Obj_Blek, "BasementScare", asset_object) && place_meeting(x, y, Obj_Blek)
{
instance_destroy(inst_3EAB04EE_1);
instance_destroy(inst_E97FEB1);
instance_destroy(inst_496F9306);
}
}




if room ==  rm_area6_10B{

if asset_has_tags(Obj_Blek, "AranTalk", asset_object) && place_meeting(x, y, Obj_Blek)
{
asset_add_tags(Obj_Blek, "AranGone", asset_object);
}
}