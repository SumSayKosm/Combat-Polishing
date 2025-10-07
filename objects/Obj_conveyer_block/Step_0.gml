


if place_meeting(x, y, Obj_Blek) == true
{
   
var _move = flowspeed
Obj_Blek.x += lengthdir_x(_move, direction);
Obj_Blek.y += lengthdir_y(_move, direction);
}

if place_meeting(x, y, obj_block) == true
{
var _move = flowspeed
obj_block.x += lengthdir_x(_move, direction);
obj_block.y += lengthdir_y(_move, direction);
	
}

