global.Items = {
    potion: {
        name: "Potion",
        func: function(_targets) {
				var _heal = 30;
				ChangeHP(_targets[0], _heal, 0);
			}
    },
	
	ether : 
	{
		name : "Ether",
		func : function(_user, _targets){
			var _healMP = 50;
			ChangeMP(_targets[0], _healMP, true);
		}		
	}
};