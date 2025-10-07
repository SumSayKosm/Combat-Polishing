

//draw inventory on screen
draw_self();
draw_set_color(myColor);
draw_set_font(global.font_main)


draw_text(bbox_left + textBorder, bbox_top + textBorder, "Image");
draw_text(bbox_left + 38, bbox_top + textBorder, "Name");
draw_text(bbox_left + 65, bbox_top + textBorder, "Amount");

itemLeftStart = bbox_left+ 120;
itemTopStart = bbox_top + 48;

for(i = 0; i < inventoryEndAt; ++i)
{
draw_text(itemLeftStart, itemTopStart + (i * 32), ds_grid_get(myItems, 0, i));

}