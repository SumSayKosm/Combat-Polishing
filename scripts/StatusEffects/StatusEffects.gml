global.statusLibrary = {
    poison: function(_duration = 3) {
        return {
            type: "poison",
            turns: _duration,
            onTurnStart: function(_target, _status) {
                var dmg = ceil(_target.hpMax * 0.1);
                BattleChangeHP(_target, -dmg);
                BattleLogAdd(_target.name + " suffers " + string(dmg) + " poison damage!");
                _status.turns -= 1;
                if (_status.turns <= 0) {
                    StatusRemove(_target, "poison");
                }
            }
        };
    }
}

//    sleep: function() {
//        return {
//            type: "sleep",
//            turns: -1,
//            onTurnStart: function(_target, _status) {
//                if (random(1) < 0.3) {
//                    StatusRemove(_target, "sleep");
//                    BattleLogAdd(_target.name + " wakes up!");
//                }
//            },
//            onBeforeAction: function(_target, _status) {
//                BattleLogAdd(_target.name + " is asleep and can’t act!");
//                return false; // prevent action
//            },
//            onHit: function(_target, _status) {
//                StatusRemove(_target, "sleep");
//                BattleLogAdd(_target.name + " is jolted awake!");
//            }
//        };
//    }
//};