
//match button state

if instance_exists(buttonObj)
{
state = buttonObj.state;
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