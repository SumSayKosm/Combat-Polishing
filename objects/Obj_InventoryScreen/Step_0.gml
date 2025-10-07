// Step Event for Obj_InventoryScreen

// Handle menu navigation
if (keyboard_check_pressed(vk_down)) {
    hover += 1;
    if (hover >= array_length(inventory)) {
        hover = 0; // Loop to the beginning
    }
} 
else if (keyboard_check_pressed(vk_up)) {
    hover -= 1;
    if (hover < 0) {
        hover = array_length(inventory) - 1; // Loop to the end
    }
}

// Handle item selection
	if (keyboard_check_pressed(vk_enter)) {
	if (keyboard_check_pressed(vk_enter)) {
    var selectedItem = inventory[hover];
    if (selectedItem[1] > 0) { // Check if the item quantity is greater than zero
        // Select Target
        OpenTargetSelection(selectedItem);
		instance_destroy();
		} 
	}
}

// Handle menu closing
if (keyboard_check_pressed(vk_escape)) {
    instance_destroy();
    global.menu_active = false;
}
