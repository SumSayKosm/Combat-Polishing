// Step Event for Obj_TargetSelectionScreen

// Handle menu navigation
if (keyboard_check_pressed(vk_down)) {
    hover += 1;
    if (hover >= array_length(targetOptions)) {
        hover = 0; // Loop to the beginning
    }
} 
else if (keyboard_check_pressed(vk_up)) {
    hover -= 1;
    if (hover < 0) {
        hover = array_length(targetOptions) - 1; // Loop to the end
    }
}

if (keyboard_check_pressed(vk_enter)){
		var selectedTarget = targetOptions[hover];
		UseItemOnTarget(Obj_InventoryScreen.selectedItem,selectedTarget);
}

// Handle menu closing
if (keyboard_check_pressed(vk_escape)) {
    instance_destroy();
    global.menu_active = false;
}
