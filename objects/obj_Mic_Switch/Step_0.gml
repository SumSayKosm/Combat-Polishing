//is that damn switch pulled?

state = 0;


//match button state

if instance_exists(obj_Lever_Presser)
{
state = obj_Lever_Presser.state;
}

depth = -bbox_bottom;
image_index = state;  