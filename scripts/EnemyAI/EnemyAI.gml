//function SimpleAttack(_userInstance) {
//    var _possibletargets = array_filter(Obj_Battle.partyUnits, function(_unit, _index) {
//		return (_unit.hp > 0);
//		});
		
//	var _target = [irandom(array_length(_possibletargets))];

//global.actionLibrary.attack.func(_user, _target);
//}

function SimpleAttack(_user) {
    var _possibletargets = array_filter(Obj_Battle_Old.partyUnits, function(_unit, _index) {
        return (_unit.hp > 0);
    });

    var _target = [_possibletargets[irandom(array_length(_possibletargets) - 1)]];
    
    var _action = _user.actions[0]; // 🔧 FIX: Access through passed struct
    return [_action, _target];
}
