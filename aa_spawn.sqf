//aa_spawn.sqf

//systemChat "Begin AA spawn";

{
//	systemChat _x;
	if ("aa_spawn" in _x) then {
		_pos = getMarkerPos _x;
		_r = floor random 100;
		if (_r > 70) then {
			_aa = createVehicle ["I_LT_01_AA_F", _pos];
			createVehicleCrew _aa;
			//systemChat "created AA vehicle";
		} else {
			_group = createGroup [resistance, true];
			for "_i" from 0 to 2 do {
				_unit = _group createUnit ["I_E_Soldier_AA_F", _pos, [], 0, "NONE"];
				_unit disableAI "PATH";
				_unit setSkill 0.7;
			};
			//systemChat "created AA inf";
		};
	};
} forEach allMapMarkers;