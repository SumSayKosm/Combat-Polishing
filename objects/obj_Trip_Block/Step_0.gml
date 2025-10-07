
if place_meeting(x, y, Obj_Blek)
{
instance_destroy(Obj_Blek)
instance_create_layer(NewX, NewY, "Instances_1", obj_Blek_Stand)
instance_destroy(self)
	
}