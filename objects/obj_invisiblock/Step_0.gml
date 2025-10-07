
//Montana (state lol)

if sliding == false
{
	//set starting coords
	StartPointX = x;
	StartPointY = y;
	
	// reset move speed
	xspd = 0; 
	yspd = 0;
}

//get ground type
if place_meeting(x, y, Obj_block_ground)
{
blockArea = true;	
} else {
blockArea = false;	
}


if sliding == true
{
//move speed baybee!
var _realDir = faceDir*90

//Get target coords
var _targetXDist = lengthdir_x(grid_space, _realDir);
var _targetYDist = lengthdir_y(grid_space, _realDir);
targetX = StartPointX + _targetXDist;
targetY = StartPointY + _targetYDist;

//set speeds
var _targetDist = point_distance(x,y, targetX, targetY);
var _finalSpd = min(move_spd, _targetDist);
xspd = lengthdir_x(_finalSpd, _realDir);
yspd = lengthdir_y(_finalSpd, _realDir);


//cancel movement 
if blockArea == true && !place_meeting(targetX, targetY, Obj_block_ground)
{
xspd = 0;
yspd = 0;
}

//block sync control
	if place_meeting(targetX, targetY, Obj_Block_wall)
	{
	xspd = 0;
	yspd = 0;
	}

}

//move
x += xspd;
y += yspd;

//finish sliding
if xspd == 0 && yspd == 0
{
sliding = false	
}

depth = -bbox_bottom;