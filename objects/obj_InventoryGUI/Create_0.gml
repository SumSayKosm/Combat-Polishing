//setting up variables


playerInventoryWidth = 5;
playerInventory = ds_grid_create(playerInventoryWidth, 1)

textBorder = 7;
myItems = playerInventory;
myColor = c_white;
isEmpty = false;
emptyMessage = "Nothing to note."

globalvar itemSelected, scrolledAmount, inventoryEndAt;

itemSelected = 0
scrolledAmount = 0
inventoryEndAt = min(ds_grid_height(myItems), floor((sprite_height - (textBorder*3)) /32));
inventoryOnScreen = 0;
if(ds_grid_get(myItems, 0, 0) == 0) {
inventoryEndAt = 0;
isEmpty = true
}








