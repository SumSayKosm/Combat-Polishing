
//match button state

if asset_has_tags(Obj_Blek, tag_id, asset_object) 
{
	state = 1
} 
	
	
	
//closed
if state == 0
{
mask_index = sprite_index;	
}


if state == 1
{
mask_index= spr_nocollision;
	
}

image_index = state;  