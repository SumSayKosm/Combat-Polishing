function HealOutsideBattle(_target, _amount) {
    // Check if the target is valid and alive
    if (!instance_exists(_target) || _target.hp <= 0) {
        show_debug_message("Cannot heal. Target is either invalid or dead.");
        return;
    }

    // Apply healing
    _target.hp = clamp(_target.hp + _amount, 0, _target.hpMax);

    // Update the global party data to reflect the change
    for (var i = 0; i < array_length(global.party); i++) {
        if (global.party[i].name == _target.name) {
            global.party[i].hp = _target.hp;
            break;
        }
    }

    show_debug_message(_target.name + " has been healed by " + string(_amount) + " HP.");
}

 function UsePotionOnBlek() {
    // Find the index of Blek in the global.party array
    var _targetIndex = -1;
    for (var i = 0; i < array_length(global.party); i++) {
        if (global.party[i].name == "Blek") {
            _targetIndex = i;
            break;
        }
    }
    
    // Check if Blek was found
    if (_targetIndex != -1) {
        var _target = global.party[_targetIndex];
        
        // Check if the target is valid and alive
        if (_target.hp > 0) {
            var healAmount = 20;
            _target.hp = clamp(_target.hp + healAmount, 0, _target.hpMax);
            show_debug_message("Potion used on Blek. HP restored: " + string(healAmount));
        } else {
            show_debug_message("Target is invalid or dead.");
        }
    } else {
        show_debug_message("Blek not found in the party.");
    }
}

