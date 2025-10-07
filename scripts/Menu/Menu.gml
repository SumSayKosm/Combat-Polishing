global.menu_active = false;

function Menu(_x, _y, _options, _description = -1)
{	
	 if (!global.menu_active)
    {
		with (instance_create_depth(_x,_y,-999,Obj_Menu))
		{
			global.menu_active = true;
			
			options = _options;
			description = _description;
			optionsCount = array_length(_options);
			hovermarker = "*";
		
			//Set up size
			margin = 2
			draw_set_font(Font1);
		
			width = 1;
			if (_description != -1) width = max(width,string_width(_description));
			for (var i = 0; i < optionsCount; i++)
			{
				width = max(width,string_width(_options[i][0]));
			}
			width += string_width(hovermarker);
		
			heightLine = 17;
		
				height = heightLine * (optionsCount + !(description == -1));
			
				widthFull = width + margin * 2;
				heightFull = height + margin *2;
	}	
		}
}

function ShowStats() {
    with (instance_create_depth(x, y, -999, Obj_StatScreen)) {
        var party = global.party;

        var stats = "Party Stats:\n";
        var text = "";

        for (var i = 0; i < array_length(party); i++) {
            var member = party[i];
            text += member.name + ": \n";
            text += "   HP: " + string(member.hp) + "/" + string(member.hpMax) + "\n";
            text += "   MP: " + string(member.mp) + "/" + string(member.mpMax) + "\n";
            // Add other relevant stats here
            text += "\n";
		}

        // Calculate text dimensions
        var textWidth = string_width(text);
        var textHeight = string_height(text);

        // Set up size
        var margin = 2;
		draw_set_font(Font1);
        var width = textWidth + margin * 2;
        var height = textHeight + margin * 2;

        // Create instance variables
        width_full = width;
        height_full = height;
		text_full = text;
    }
}

function OpenInventory() {
    var inv_screen = instance_create_depth(x, y, -999, Obj_InventoryScreen);
    global.menu_active = true;
    
    inv_screen.inventory = global.inventory;
    inv_screen.hovermarker = "*";
    inv_screen.margin = 2;
    inv_screen.heightLine = 17;

    var text = "";
    var width = 1;
    var height = inv_screen.heightLine; // Initialize height with line height
    
    // Create menu options
    for (var i = 0; i < array_length(inv_screen.inventory); i++) {
        var item = inv_screen.inventory[i];
        var lineText = (i == inv_screen.hover ? inv_screen.hovermarker + " " : "  ") + item[0].name + "(" + string(item[1]) + ")";
        text += lineText + "\n";
        width = max(width, string_width(lineText)); // Calculate maximum width required
        height += inv_screen.heightLine; // Increase height for each item
    }
    
    // Set up size
    inv_screen.widthFull = width + inv_screen.margin * 2;
    inv_screen.heightFull = height + inv_screen.margin * 2;
    inv_screen.textFull = text;
}


function OpenTargetSelection(_itemIndex) {
    with (instance_create_depth(x, y, -999, Obj_TargetSelection)) {
		global.selectedItemIndex = _itemIndex;
        hovermarker = "*"
		
        var party = global.party;
        var text = "Select Target:\n";
        targetOptions = []; // Initialize the target options array

        for (var i = 0; i < array_length(party); i++) {
            var member = party[i];
            targetOptions[i] = [member.name, member]; // Store name and reference to member instance
            if (i == hover) {
                text += "> " + member.name + "\n";
                selectedTargetIndex = i;
            } else {
                text += "  " + member.name + "\n";
            }
        }
		
        // Setup for menu
        margin = 2;
        draw_set_font(Font1);
        width = string_width(text) + margin * 2;
        height = string_height(text) + margin * 2;
		heightLine = 20;

        widthFull = width;
        heightFull = height;
        textFull = text;
    }
}

function CloseMenu()
{
	if instance_exists(Obj_Menu)
	{
		instance_destroy();
		global.menu_active = false;
	}
}

function UseItemOnTarget(selectedItem,selectedTarget)
{
	
}