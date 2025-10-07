
//create inventory onscreen

if !instance_exists(obj_InventoryGUI){
inventoryDisplay = instance_create_depth(0, 0, depth-1, obj_InventoryGUI);
with inventoryDisplay  {
x = sprite_get_xoffset(sprite_index);
y = room_height - sprite_get_yoffset(sprite_index);
}
} 
else {
	
	instance_destroy(obj_InventoryGUI);
}


