function scr_add_item() {
	{
///@param0 DSGrid Grid_To_Add
///@param1 String-Item_Name
///@param2 Int-Item_Amount
///@param3 String-Item_Description
///@param4 Sprite-Item_sprite
///@param5 Script-Item_Script
	}
gridToAddTo = argument0;
newItemName = argument1;
newItemAmount = argument2;
newItemDescription = argument3;
newItemSprite = argument4;
newItemScript = argument5;

//Case 1 - Item is inventory
function case1(){
for(i = 0; i < ds_grid_height(gridToAddTo); ++i)
{
	if(ds_grid_get(gridToAddTo, 0, i) == newItemName){
		ds_grid_set(gridToAddTo, 1, i, ds_grid_get(gridToAddTo, 1, i) + newItemAmount);
		return true;
	}
}
};

//Case 2 - Item isn't in the ventory
function case2(){
if (ds_grid_get(gridToAddTo, 0, 0) != 0){
	ds_grid_resize(gridToAddTo, playerInventoryWidth, ds_grid_height(gridToAddTo) + 1);
}
newItemSpot = ds_grid_height(gridToAddTo) - 1;
ds_grid_set(gridToAddTo, 0, newItemSpot, newItemName);
ds_grid_set(gridToAddTo, 1, newItemSpot, newItemAmount);
ds_grid_set(gridToAddTo, 2, newItemSpot, newItemDescription);
ds_grid_set(gridToAddTo, 3, newItemSpot, newItemSprite);
ds_grid_set(gridToAddTo, 4, newItemSpot, newItemScript);

return true;
}








}