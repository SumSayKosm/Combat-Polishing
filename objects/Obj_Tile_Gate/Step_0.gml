
//match button state

if global.current_code = "BBCBA"
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