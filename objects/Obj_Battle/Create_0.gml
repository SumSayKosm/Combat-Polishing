// Battle outcome constants
enum BATTLE_OUTCOME {
	DEFEAT = 0,
	VICTORY = 1,
	FLED = 2,
	FAILED_ESCAPE = 3
}

instance_deactivate_all(true);
instance_activate_object(Obj_PartyData);
audio_play_sound(Trout_Boss_Battle_1,2,true);

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


////Make enemies
//for (var i = 0; i < array_length(enemies); i++)
//{
//	enemyUnits[i] = instance_create_depth(x+150+(i*10), y+68+(i*20), depth-10, Obj_BattleUnitEnemy, enemies[i]);
//	array_push(units, enemyUnits[i]);
//}
var numEnemies = array_length(enemies);
var baseX = x + 223;
var baseY = y + 112;

var spacingX = 32; // horizontal offset (distance behind front enemy)
var spacingY = 28; // vertical offset (distance up/down from center)

for (var i = 0; i < numEnemies; i++)
{
    //var placeX, 
	//var placeY;

    switch (numEnemies)
    {
        case 1:
            // Single enemy, dead center
           var posX = baseX;
          var  posY = baseY;
        break;

        case 2:
            // Two enemies side by side
            posX = baseX - (i * spacingX);
            posY = baseY + (i == 0 ? -spacingY/2 : spacingY/2);
        break;

        case 3:
            // One front, two behind
            if (i == 0) { posX = baseX; posY = baseY; }             // front
            if (i == 1) { posX = baseX - spacingX; posY = baseY - spacingY; } // back-upper
            if (i == 2) { posX = baseX - spacingX; posY = baseY + spacingY; } // back-lower
        break;

        case 4:
            // One front, three behind in a triangle
            if (i == 0) { posX = baseX; posY = baseY; }
            if (i == 1) { posX = baseX - spacingX; posY = baseY - spacingY; }
            if (i == 2) { posX = baseX - spacingX; posY = baseY + spacingY; }
            if (i == 3) { posX = baseX - spacingX * 2; posY = baseY; } // center back
        break;

        default:
            // 5+ enemies — stagger them into a rough triangle cluster
            var row = floor((i - 1) / 2);
            var offset = ((i % 2) * 2 - 1) * spacingY * (row + 1) * 0.5; 
            posX = baseX - row * spacingX;
            posY = baseY + offset;
        break;
    }

    enemyUnits[i] = instance_create_depth(posX, posY, depth - 10, Obj_BattleUnitEnemy, enemies[i]);
    array_push(units, enemyUnits[i]);
}



if (variable_instance_exists(id, "customBehaviors"))
{
    // Custom behaviors specified for this encounter
    for (var i = 0; i < array_length(enemyUnits); i++)
    {
        if (i < array_length(customBehaviors))
        {
            enemyUnits[i].AIBehavior = customBehaviors[i];
        }
    }
}

////Make enemies (Two Sided Combat)
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

//Make party
for (var i = 0; i < array_length(global.party); i++)
{
	partyUnits[i] = instance_create_depth(x+30-(i*25), y+112+(i*35), depth-10, Obj_BattleUnitPC, global.party[i]);
	array_push(units, partyUnits[i]);
}

//// Make enemies (Front Facing Combat)
//for (var i = 0; i < array_length(enemies); i++) {
//    var xOffset = 0;
//	var enemyCount = array_length(enemies);
//    if (enemyCount == 2) xOffset = 20;
//    if (enemyCount == 3) xOffset = 60;

//    enemyUnits[i] = instance_create_depth(x + 140 - xOffset + (i * 80), y + 110, depth - 10, Obj_BattleUnitEnemy, enemies[i]);
//    array_push(units, enemyUnits[i]);
//}


////Make party (Sprites Under Menus)
//for (var i = 0; i < array_length(global.party); i++)
//{
//	partyUnits[i] = instance_create_depth(x + 75 + (i * 100),y+120, depth-10, Obj_BattleUnitPC, global.party[i]);
//	array_push(units, partyUnits[i]);
//}

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

//Build action menu for player units
BuildActionMenu = function(_unit)
{
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

//Recenter living enemies after death
RecenterEnemies = function()
{
	var spacing = 80;
	var enemyCount = array_length(enemyUnits);
	var xOffset = 0;
	if (enemyCount == 2) xOffset = 20;
	if (enemyCount == 3) xOffset = 60;
	var startX = x + 140 - xOffset;

	for (var i = 0; i < enemyCount; i++)
	{
		enemyUnits[i].targetX = startX + i * spacing;
	}
}


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
			BuildActionMenu(_unit);
		}
		else
		{
			////if unit is AI controlled:
			//var _enemyAction = _unit.AIscript();
			//if (_enemyAction != -1) BeginAction(_unit.id, _enemyAction[0], _enemyAction[1]);
			
//if unit is AI controlled:
    // Get the AI behavior function by name
    var _aiBehavior = global.GetEnemyAIBehavior(_unit.AIBehavior);
    var _enemyAction = _aiBehavior(_unit);
    if (_enemyAction != -1) BeginAction(_unit.id, _enemyAction[0], _enemyAction[1]);

		}
	}
}

//Start a unit action
function BeginAction(_user, _action, _targets)
{
	currentUser = _user;
	currentUser.dotAppliedThisTurn = false;
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
    var anyDead = false;

    // Remove all dead enemies
    for (var i = array_length(enemyUnits) - 1; i >= 0; i--)
    {
        if (enemyUnits[i].hp <= 0)
        {
            // Destroy instance
            if (instance_exists(enemyUnits[i])) instance_destroy(enemyUnits[i]);

            // Remove from arrays
            array_delete(enemyUnits, i, 1);
            anyDead = true;
        }
    }

    if (anyDead)
    {
        RecenterEnemies();
    }

    // Remove all dead party units (optional, if needed)
    for (var i = array_length(partyUnits) - 1; i >= 0; i--)
    {
        if (partyUnits[i].hp <= 0)
        {
            if (instance_exists(partyUnits[i])) instance_destroy(partyUnits[i]);
            array_delete(partyUnits, i, 1);
        }
    }

    // **Clean up unitTurnOrder**
    unitTurnOrder = array_filter(unitTurnOrder, function(_u)
    {
        return instance_exists(_u) && _u.hp > 0;
    });

    // Update current turn if needed
    if (turn >= array_length(unitTurnOrder)) turn = 0;

    // Check victory/defeat
    var _allEnemiesDead = !array_any(enemyUnits, function(_unit) { return _unit.hp > 0; });
    var _allPartyDead = !array_any(partyUnits, function(_unit) { return _unit.hp > 0; });

    if (_allPartyDead)
    {
        battleWin = BATTLE_OUTCOME.DEFEAT;
        battleState = BattleStateWaitingForInput;
    }
    else if (_allEnemiesDead)
    {
        battleWin = BATTLE_OUTCOME.VICTORY;
        battleState = BattleStateWaitingForInput;
    }
    else
    {
        battleState = BattleStateTurnProgression;
    }
}



function BattleStateTurnProgression()
{
	// Apply DoTs to the unit whose turn just ended
	if (!currentUser.dotAppliedThisTurn){
		if (instance_exists(currentUser))
		{
			if (currentUser.poisonDoTTurns > 0)
			{
				currentUser.poisonDoTTurns--;
				BattleChangeHP(currentUser, -currentUser.poisonDoTDamage);
				// Immediately check for death
	            BattleStateVictoryCheck();
				currentUser.dotAppliedThisTurn = true;
	            exit;
			}
			if (currentUser.burnDoTTurns > 0)
			{
				currentUser.burnDoTTurns--;
				BattleChangeHP(currentUser, -currentUser.burnDoTDamage);
				// Immediately check for death
	            BattleStateVictoryCheck();
				currentUser.dotAppliedThisTurn = true;
				exit;
			}
		}
	}

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
	// Set battle text based on outcome
	switch (battleWin)
	{
		case BATTLE_OUTCOME.VICTORY:
			battleText = "Party is victorious!";
			break;
		case BATTLE_OUTCOME.DEFEAT:
			battleText = "Party was defeated!";
			break;
		case BATTLE_OUTCOME.FLED:
			battleText = "Party fled...";
			break;
		case BATTLE_OUTCOME.FAILED_ESCAPE:
			battleText = "Party failed to escape!";
			break;
	}

	// Wait for spacebar to continue
	if (keyboard_check_pressed(vk_space))
	{
		// Failed escape returns to battle, all others end battle
		if (battleWin == BATTLE_OUTCOME.FAILED_ESCAPE)
		{
			battleState = BattleStateTurnProgression;
		}
		else
		{
			battleState = BattleStateWin;
		}
	}
}

function BattleStateWin()
{
	
	//Destroy all battle related stuffs
	    with (Obj_BattleUnit)
    {
        instance_destroy();
    }
	
	// End battle and return to overworld
	instance_activate_all();
	global.steps = 0;
	audio_stop_sound(Trout_Boss_Battle_1);
	instance_destroy(Obj_Battle);
}

function BattleStateNapTime()
{
	waitForInput = true;
	if (waitForInput) && wakeUp == 0
	{
		show_debug_message("Rolling Sleep Check");
		battleText = string(napUnit.name) + " is stirring..."

		if keyboard_check_pressed(vk_space)
		{
			io_clear();
			show_debug_message("Space Bar Pressed, Moving On");
			if (irandom(1) == 0)
			{
				wakeUp = 1;
			}
			else
			{
				wakeUp = 2;
			}
		}
		else
		{
			return;
		}
	}

	if wakeUp != 0 && (waitForInput)
	{
		if wakeUp == 1
		{
			show_debug_message("Enemy Wakes Up");
			battleText = string(napUnit.name) + " woke up!"
			napUnit.statusEffects.Sleep = false
			if keyboard_check_pressed(vk_space)
			{
				show_debug_message("Space Bar Pressed, Moving On");
				waitForInput = false;
				wakeUp = 0; // Reset for next sleeping unit
				battleState = BattleStateSelectAction;
				exit;
			}
			else
			{
				return;
			}
		}
		if wakeUp == 2
		{
			show_debug_message("Enemy Stays Sleep")
			battleText = string(napUnit.name) + " is sleeping..."
			if keyboard_check_pressed(vk_space)
			{
				show_debug_message("Space Bar Pressed, Moving On");
				waitForInput = false;
				wakeUp = 0; // Reset for next sleeping unit
				battleState = BattleStateVictoryCheck;
				exit;
			}
			else
			{
				return;
			}
		}
	}
}