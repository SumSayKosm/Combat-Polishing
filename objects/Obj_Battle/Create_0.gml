instance_deactivate_all(true);
instance_activate_object(Obj_PartyData);

units = [];
turn = 0;
turnCount = 0;
roundCount = 0;
battleWaitTimeFrames = 30;
battleWaitTimeRemaining = 0;
battleText = "";
currentUser = noone;
currentAction = -1;
currentTargets = noone;
unitTurnOrder = [];
unitRenderOrder = [];

//Status Effect Stuff
wakeUp = 0;

//Make targetting cursor
cursor = 
{
	activeUser: noone,
	activeTarget: noone,
	activeAction : -1,
	targetSide : -1, 
	targetIndex : 0,
	targetAll : false,
	confirmDelay : 0,
	active : false
};

//Make enemies (Two Sided Combat)
//for (var i = 0; i < array_length(enemies); i++)
//{
//	var enemyCount = array_length(enemies);
//	if enemyCount = 1
//	{
//		enemyUnits[i] = instance_create_depth(x+140+(i*80), y+110, depth-10, Obj_BattleUnitEnemy, enemies[i]);
//		array_push(units, enemyUnits[i]);
//	}
//	if enemyCount = 2
//	{
//	enemyUnits[i] = instance_create_depth(x+120+(i*80), y+110, depth-10, Obj_BattleUnitEnemy, enemies[i]);
//	array_push(units, enemyUnits[i]);
//	}
//	if enemyCount = 3
//	{
//	enemyUnits[i] = instance_create_depth(x+80+(i*80), y+110, depth-10, Obj_BattleUnitEnemy, enemies[i]);
//	array_push(units, enemyUnits[i]);
//	}
//}

// Make enemies (Front Facing Combat)
for (var i = 0; i < array_length(enemies); i++) {
    var xOffset = 0;
	var enemyCount = array_length(enemies);
    if (enemyCount == 2) xOffset = 20;
    if (enemyCount == 3) xOffset = 60;

    enemyUnits[i] = instance_create_depth(x + 140 - xOffset + (i * 80), y + 110, depth - 10, Obj_BattleUnitEnemy, enemies[i]);
    array_push(units, enemyUnits[i]);
}


//Make party (Sprites Under Menus)
for (var i = 0; i < array_length(global.party); i++)
{
	partyUnits[i] = instance_create_depth(x + 75 + (i * 100),y+120, depth-10, Obj_BattleUnitPC, global.party[i]);
	array_push(units, partyUnits[i]);
}

////Make party ("No" Sprites)
//for (var i = 0; i < array_length(global.party); i++)
//{
//	partyUnits[i] = instance_create_depth(-9999, -9999, depth, Obj_BattleUnitPC, global.party[i]);
//	array_push(units, partyUnits[i]);
//}

//Shuffle turn order
unitTurnOrder = array_shuffle(units);

//Get render order
RefreshRenderOrder = function()
{
	unitRenderOrder = [];
	array_copy(unitRenderOrder,0,units,0,array_length(units));
	array_sort(unitRenderOrder,function(_1, _2)
	{
		return _1.y - _2.y;
	});
}
RefreshRenderOrder();


function BattleStateSelectAction()
{	
	if (!instance_exists(Obj_BattleMenu))
	{
		//Get current unit
		var _unit = unitTurnOrder[turn];
		global.currentActor = _unit.name;
		//is the unit dead or unable to act?
		if (!instance_exists(_unit)) || (_unit.hp <= 0)
		{
			battleState = BattleStateVictoryCheck;
			exit;
		}
		

		
		if _unit.statusEffects.Sleep == true{
			napUnit = _unit;
			battleState = BattleStateNapTime;
			exit;
		}

		//if unit is player controlled:
		if (_unit.object_index == Obj_BattleUnitPC)
		{
			_unit.defending = false; //reset Defending
			//Compile the action menu
			var _menuOptions = [];
			var _subMenus = {};
			
			//add inventory to action list
				var _inventoryActions = [];
				for (var i = 0; i < array_length(global.battleInventory); i++)
				{
					//if we have any of this item left we want to add the to the action list
					if (global.battleInventory[i][1] > 0)	
					{
						var _itemAction = global.battleInventory[i][0];
						_itemAction.count = global.battleInventory[i][1];
						array_push(_inventoryActions, _itemAction); 
					}
				}
				
				var _actionList = array_union(_unit.actions, _inventoryActions);

			for (var i = 0; i < array_length(_actionList); i++)
			{
				var _action = _actionList[i];
				var _requiresMP = _action.requiresMP;
				var _available = !_requiresMP || _action.mpCost <= _unit.mp;
				//Add item count to option name if necessary
					var _nameAndCount = _action.name;
					if (_action.subMenu == "Item") _nameAndCount += string(" x{0}", _action.count); 
					//add top level action
					if (_action.subMenu == -1) array_push(_menuOptions,[_nameAndCount, MenuSelectAction, [_unit, _action], _available]);
					else 
					{
						//create or add to a submenu
						if (is_undefined(_subMenus[$ _action.subMenu]))
						{
							variable_struct_set(_subMenus, _action.subMenu, [[_nameAndCount, MenuSelectAction, [_unit, _action], _available]]);
						}				
						else
						{
							array_push(_subMenus[$ _action.subMenu],[_nameAndCount, MenuSelectAction, [_unit, _action], _available]);
						}
					}
				}
			
			//turn sub menus into an array
			var _subMenusArray = variable_struct_get_names(_subMenus);
			for (var i = 0; i < array_length(_subMenusArray); i++)
			{
				//sort submenu if needed
				//(here)
					
				//add back option at end of each submenu
				array_push( _subMenus[$ _subMenusArray[i]] , ["Back", MenuGoBack, -1, true]);
				//add submenu into main menu
				array_push(_menuOptions, [_subMenusArray[i], SubMenu, [_subMenus[$ _subMenusArray[i]]], true]);
			}

				//sort top level menu
				array_sort(_menuOptions, function(_a, _b)
				{
					var _Priority = function(_option)
					{
						if (_option[0] == "Attack") return 99;
						if (_option[0] == "Ghost Cat") return 99;
						if (_option[0] == "Magic") return 50;
						if (_option[0] == "Defend") return 30;
						if (_option[0] == "Item") return -10;
						if (_option[0] == "Escape") return -15;
						return 0;
					}
					return _Priority(_b) - _Priority(_a);
				});

			BattleMenu(x+10,y+110,_menuOptions,,74,60);
				
		}
		else
		{
			//if unit is AI controlled:
			var _enemyAction = _unit.AIscript();
			if (_enemyAction != -1) BeginAction(_unit.id, _enemyAction[0], _enemyAction[1]);
		}
	}
}

//Start a unit action
function BeginAction(_user, _action, _targets)
{
	currentUser = _user;
	currentAction = _action;
	currentTargets = _targets;
	battleText = string_ext(_action.description, [_user.name]);
	if (!is_array(currentTargets)) currentTargets = [currentTargets];
	battleWaitTimeRemaining = battleWaitTimeFrames;
	with (_user)
	{
		acting = true;
		if (_action.subMenu == "Item") RemoveItemFromInventory(_action, 1)
		//play user animation if it is defined for that action, and that user
		if  (!is_undefined(_action[$ "userAnimation"])) && (!is_undefined(_user.sprites[$ _action.userAnimation]))
		{
			sprite_index = sprites[$ _action.userAnimation];
			image_index = 0;
		}
	}
	// Check and apply DoTs
        if (currentUser.poisonDotTurns > 0)
        {
            // Reduce DoT turns
            currentUser.poisonDotTurns--;

            // Apply DoT damage
            BattleChangeHP(currentUser, -currentUser.poisonDotDamage);
        }
		if (currentUser.burnDotTurns > 0)
        {
            // Reduce DoT turns
            currentUser.burnDotTurns--;

            // Apply DoT damage
            BattleChangeHP(currentUser, -currentUser.burnDotDamage);
        }
	
	battleState = BattleStatePerformAction;
}

function BattleStatePerformAction()
{
	//if animation etc is still playing
	if (currentUser.acting)
	{
		//when it ends, perform action effect if it exists
		if (currentUser.image_index >= currentUser.image_number -1)
		{
			with (currentUser)
			{
				sprite_index = sprites.idle;
				image_index = 0;
				acting = false;
			}
			
			if (variable_struct_exists(currentAction, "effectSprite"))
			{
				if (currentAction.effectOnTarget == MODE.ALWAYS) || ( (currentAction.effectOnTarget == MODE.VARIES) && (array_length(currentTargets) <= 1) )
				{
					for (var i = 0; i < array_length(currentTargets); i++)
					{
						instance_create_depth(currentTargets[i].x,currentTargets[i].y,currentTargets[i].depth-1,Obj_BattleEffect,{sprite_index : currentAction.effectSprite});	
					}
				}
				else //play it at 0,0
				{
					var _effectSprite = currentAction.effectSprite
					if (variable_struct_exists(currentAction, "effectSpriteNoTarget")) _effectSprite = currentAction.effectSpriteNoTarget;
					instance_create_depth(x,y,depth-100,Obj_BattleEffect,{sprite_index : _effectSprite});	
				}
				
			}
			currentAction.func(currentUser, currentTargets);
		}
	} 
	else //wait for delay and then end the turn
	{
		if (!instance_exists(Obj_BattleEffect))
		{
			battleWaitTimeRemaining--
			if (battleWaitTimeRemaining == 0)
			{
				battleState = BattleStateVictoryCheck;
			}
		}
	}
}

function BattleStateVictoryCheck()
{
	// Check for enemy death in BattleStateVictoryCheck
var deadEnemyIndex = -1;

for (var i = 0; i < array_length(enemyUnits); i++) {
    if (enemyUnits[i].hp <= 0) {
        // Enemy is dead, store its index 
        deadEnemyIndex = i;
    }
}
// Recentering the living enemies
if (deadEnemyIndex != -1) {
    // Remove the dead enemy from the array
    array_delete(enemyUnits, deadEnemyIndex, 1);

    // Recenter the living enemies
    // Calculate the target positions for the living enemies
    var spacing = 80;
    var startX = x + 140;
    for (var i = 0; i < array_length(enemyUnits); i++) {
        enemyUnits[i].targetX = startX + i * spacing;
    }
}
	
	var _enemyHealth = array_any(enemyUnits, function(_unit)
	{
		return (_unit.hp);
	});
	
	var _partyHealth = array_any(partyUnits, function(_unit)
	{
		return (_unit.hp);
	});
	
	if (_partyHealth <= 0)
	{
		battleWin = 0
		battleState = BattleStateWaitingForInput;
	}
	
	if (_enemyHealth <= 0)
	{
		battleWin = 1
		battleState = BattleStateWaitingForInput;
	}
	
	else battleState = BattleStateTurnProgression;
}

function BattleStateTurnProgression()
{
	battleText = ""; //reset battle text
	turnCount++; //total turns
	turn++;
	//Loop turns
	if (turn > array_length(unitTurnOrder) - 1) 
	{
			turn = 0;
			roundCount++;	
	}
	
	  // Call MP regeneration function here
		MPRegenerationPerTurn();
	
	battleState = BattleStateSelectAction;
}


battleState = BattleStateSelectAction;

function BattleStateWaitingForInput()
{
	waitForInput = true;
	if (waitForInput)
	{
		if battleWin == 1
		{
			battleText = "Party is victorious!";
				if (keyboard_check_pressed(vk_space)) // Change vk_space to the desired button
		        {
		            // Reset the flag and transition to the battle win state
		            waitForInput = false;
		            battleState = BattleStateWin;
		        }
		else {return}
		}
	}
	if (waitForInput)
	{
		if battleWin == 0
		{
			battleText = "Party was defeated!";
				if (keyboard_check_pressed(vk_space)) // Change vk_space to the desired button
		        {
		            // Reset the flag and transition to the battle win state
		            waitForInput = false;
		            battleState = BattleStateWin;
		        }
		else {return}
		}
	}
	if (waitForInput)
	{
		if battleWin == 2
		{
			battleText = "Party fled...";
				if (keyboard_check_pressed(vk_space)) // Change vk_space to the desired button
		        {
		            // Reset the flag and transition to the battle win state
		            waitForInput = false;
		            battleState = BattleStateWin;
		        }
		else {return}
		}
	}
	if (waitForInput)
	{
		if battleWin == 3
		{
			battleText = "Party failed to escape!";
				if (keyboard_check_pressed(vk_space)) // Change vk_space to the desired button
		        {
		            // Reset the flag and transition to the battle win state
		            waitForInput = false;
		            battleState = BattleStateTurnProgression;
		        }
		else {return}
		}
	}
	
};

function BattleStateWin()
{
	if battleWin == 1
	{
		instance_activate_all();
		global.steps = 0;
		instance_destroy(Obj_Battle);
	}
	
	if battleWin == 0
	{
		instance_activate_all();
		global.steps = 0;
		instance_destroy(Obj_Battle);
	}
	
	if battleWin == 2
	{
		instance_activate_all();
		global.steps = 0;
		instance_destroy(Obj_Battle);
	}
}

function BattleStateNapTime()
{
	waitForInput = true;
	if (waitForInput) && wakeUp == 0
	{
		show_debug_message("Rolling Sleep Check");
		battleText = string(napUnit.name) + " is stirring..."
				
		if keyboard_check_pressed(vk_enter){
			show_debug_message("Enter Key Pressed, Moving On");
			if (irandom(1) < 2)
			{
				wakeUp = 1;
			}
			else
			{
				wakeUp = 2;
			}
		} else {return;}
	}
	
	if wakeUp != 0 && (waitForInput)
		if wakeUp == 1
			{
				show_debug_message("Enemy Wakes Up");
				battleText = string(napUnit.name) + " woke up!"
				napUnit.statusEffects.Sleep = false
				if keyboard_check_pressed(vk_space){
					show_debug_message("Space Bar Pressed, Moving On");
					waitForInput = false;
					battleState = BattleStateSelectAction;
					exit;
				} else {return;}
			}
		if wakeUp == 2 {
			show_debug_message("Enemy Stays Sleep")
			battleText = string(napUnit.name) + " is sleeping..."
				if keyboard_check_pressed(vk_space){
					show_debug_message("Space Bar Pressed, Moving On");
					waitForInput = false;
					battleState = BattleStateVictoryCheck;
					exit;
				} else {return;}
		}	
}