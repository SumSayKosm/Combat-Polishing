

switch(Obj_Blek.toRecordSprite[record]){
case Blek_down: sprite_index = Nerves_Down; break;
case Blek_Left: sprite_index = Nerves_Right; break;
case Blek_right: sprite_index = Nerves_Left; break;
case Blek_up: sprite_index = Nerves_up; break;
	
}



x = Obj_Blek.pos_x[record];
y = Obj_Blek.pos_y[record];

if Obj_Blek.image_index == 0{
	image_index = 0
}


depth = -bbox_bottom

