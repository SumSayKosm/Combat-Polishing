right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
interactKeyPressed = keyboard_check_pressed(ord("Z"));

xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

//interact with blocks
if interactKeyPressed == true
{
var _checkDir = face * 90;
var _checkX = x + lengthdir_x(interactDist, _checkDir);
var _checkY = y + lengthdir_y(interactDist, _checkDir);
var _pushBlockInst = instance_place(_checkX, _checkY, obj_block);

if instance_exists(_pushBlockInst) && _pushBlockInst.sliding == false
{
	_pushBlockInst.sliding = true;
	_pushBlockInst.faceDir = face;
}
}


//pauser insteractions
if instance_exists(Obj_pauser)
{ 
	xspd = 0;
	yspd = 0;
}
if instance_exists(obj_dialouge_pauser)
{ 
	xspd = 0;
	yspd = 0;
}



//set sprtite
mask_index = sprite[DOWn]
if xspd > 0 {face = RIGHT};
if xspd < 0 {face = LEFT};

if yspd > 0 {face = DOWn};
if yspd < 0 {face = UP};
sprite_index = sprite[face];



//collisions
if place_meeting( x + xspd, y, Obj_FOLL) == true
{
	xspd = 0
}

if place_meeting( x, y + yspd, Obj_FOLL) == true
{
	yspd = 0
}

if place_meeting( x + xspd, y, obj_block)==true
{
	xspd = 0
}

if place_meeting( x, y + yspd, obj_block) == true
{
	yspd = 0
}

if place_meeting( x + xspd, y, obj_invisiblock)==true
{
	xspd = 0
}

if place_meeting( x, y + yspd, obj_invisiblock) == true
{
	yspd = 0
}






//movement of player

x += xspd;
y += yspd;


//animate
if xspd = 0 and yspd = 0
{
	image_index = 0;
	sprite_index = sprite[face];
}


//depth
depth = -bbox_bottom;


//speed up

if keyboard_check_pressed(ord("C"))
{

move_spd = 2;

}

if keyboard_check_released(ord("C"))
{
	move_spd = 1;
}


