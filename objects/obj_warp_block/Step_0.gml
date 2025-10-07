if place_meeting (x, y, Obj_Blek) &&  !instance_exists(obj_warp)
{
var inst = instance_create_depth(0, 0, -9999999, obj_warp);
inst.target_x =  target_x;
inst.target_y =  target_y;
inst.target_rm =  target_rm;
inst.target_face = target_face

}

if place_meeting (x, y, Obj_Blek) &&  !instance_exists(obj_warp)
{
audio_play_sound(snd_room_transition, 10, false);	
}




//Specific Teleports based on tags


if SmallsTalk = true && asset_has_tags(Obj_Blek, "SmallsTalk", asset_object)
{
target_x = 232
target_y = 212
target_rm = rm_area2_15

target_face = UP;
	
}



if SharpeBeaten = true && asset_has_tags(Obj_Blek, "SharpeBeaten", asset_object)
{
target_x = 231
target_y = 208
target_rm = rm_area2_14B

target_face = UP;
	
}

if SmallsTalk2 = true && asset_has_tags(Obj_Blek, "SmallsTalk2", asset_object)
{
target_x = 232
target_y = 212
target_rm = rm_area2_15C

target_face = UP;
	
}


if candleberry = true && asset_has_tags(Obj_Blek, "Candleberry", asset_object)
{
target_x = 800
target_y = 189
target_rm = rm_area4_20B

target_face = LEFT;	
}

if Rootwarm = true && asset_has_tags(Obj_Blek, "Rootwarm", asset_object)
{
target_x = 130
target_y = 26
target_rm = rm_area4_31C

target_face = UP;
}

if Rootwarm2 = true && asset_has_tags(Obj_Blek, "Rootwarm", asset_object)
{
target_x = 127
target_y = 153
target_rm = rm_area4_31C

target_face = UP;
}

if GraveKey = true && asset_has_tags(Obj_Blek, "GraveKey", asset_object)
{
target_x = 305
target_y = -2
target_rm = rm_area5_8B

target_face = DOWn;
}

if GraveKey2 = true && asset_has_tags(Obj_Blek, "GraveKey", asset_object)
{
target_x = 302
target_y = 422
target_rm = rm_area5_8B

target_face = UP;
}

if SLDead = true && asset_has_tags(Obj_Blek, "SLDead", asset_object)
{
target_x = 34
target_y = 154
target_rm = rm_area4_29B

target_face = UP;
}


if SLDead2 = true && asset_has_tags(Obj_Blek, "SLDead2", asset_object)
{
target_x = 856
target_y = 352
target_rm = rm_area5_20

target_face = LEFT;
}

if AranTalk = true && asset_has_tags(Obj_Blek, "AranTalk", asset_object)
{
target_x = 503;
target_y = 429;
target_rm = rm_area6_10B

target_face = UP;
}

if AranGone = true && asset_has_tags(Obj_Blek, "AranGone", asset_object)
{
target_x = 142;
target_y = 137;
target_rm = rm_area6_16B

target_face = UP;

}





//TREE STUFF

//if tree_tag_door = true && asset_has_tags(Obj_Blek, "TreeTag1", asset_object) &&  asset_has_tags(Obj_Blek, "TreeTag2", asset_object) &&  asset_has_tags(Obj_Blek, "TreeTag3", asset_object) &&  asset_has_tags(Obj_Blek, "TreeTag4", asset_object)
//{
//target_x = 800
//target_y = 189
//target_rm = rm_area4_20B

//target_face = LEFT;	
//}