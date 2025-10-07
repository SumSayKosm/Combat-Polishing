
image_speed = Obj_Blek.image_speed
image_index = Obj_Blek.image_index


switch(Obj_Blek.toRecordSprite[record]){
case Blek_down: sprite_index = Aran_Down; break;
case Blek_Left: sprite_index = Aran_Left; break;
case Blek_right: sprite_index = Aran_Right; break;
case Blek_up: sprite_index = Aran_Up; break;
	
}



x = Obj_Blek.pos_x[record];
y = Obj_Blek.pos_y[record];



if Obj_Blek.image_index == 0{
	image_index = 0
}


depth = -bbox_bottom