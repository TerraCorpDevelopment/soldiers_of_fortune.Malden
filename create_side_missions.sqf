private _count = "desc_side_mission_count" call BIS_fnc_getparamvalue;

_mission_types =  ["attack", "assassination", "rescue"];

_base_pos = getMarkerPos "base_flag";

_markers = [
			"marker_0",
			"marker_1",
			"marker_2",
			"marker_3",
			"marker_4",
			"marker_5",
			"marker_6",
			"marker_7",
			"marker_8",
			"marker_9",
			"marker_10",
			"marker_11",
			"marker_12",
			"marker_13",
			"marker_14",
			"marker_15",
			"marker_16",
			"marker_17",
			"marker_18",
			"marker_19",
			"marker_20",
			"marker_21",
			"marker_22",
			"marker_23",
			"marker_24",
			"marker_25",
			"marker_26",
			"marker_27",
			"marker_28",
			"marker_29",
			"marker_30",
			"marker_31",
			"marker_32",
			"marker_33",
			"marker_34",
			"marker_35",
			"marker_36"
			];
_box_markers = [
				"box_marker_1",
				"box_marker_2",
				"box_marker_3",
				"box_marker_4",
				"box_marker_5",
				"box_marker_6",
				"box_marker_7",
				"box_marker_8",
				"box_marker_9",
				"box_marker_10",
				"box_marker_11",
				"box_marker_12",
				"box_marker_13",
				"box_marker_14",
				"box_marker_15",
				"box_marker_16",
				"box_marker_17",
				"box_marker_18",
				"box_marker_19",
				"box_marker_20"
				];

_busy_markers = [];

for "_m" from 1 to _count do {
	_marker = selectRandom _markers;
	_busy_markers pushBack _marker;
	_marker_pos = getMarkerPos _marker;
	_task_type = selectRandom _mission_types;
	_task_id = "SideTask" + "_" + _marker;

//	_trg = createTrigger ["EmptyDetector", _marker_pos];
//	_trg setTriggerArea [200, 200, 0, false];

	//создаем группу юнитов треша
//	_group = createGroup [east, true];
//	[_marker_pos, _group] call spawn_mission_units;

	switch (_task_type) do {
		case "assassination": {
			[_marker_pos] call outpost_1;
			_group = createGroup [east, true];
			[_marker_pos, _group] call spawn_mission_units;
			_new_group = createGroup [east, true];
			_officer = _new_group createUnit ["O_V_Soldier_TL_hex_F", _marker_pos, [], 0, "NONE"];
			_officer disableAI "PATH";
			_officer setRank "COLONEL";
			_officer setPos _marker_pos;
			trg = createTrigger ["EmptyDetector", _marker_pos];
			trg setTriggerArea [200, 200, 0, false];
			trg setTriggerActivation ["VEHICLE", "NOT PRESENT", false];
			trg triggerAttachVehicle [_officer];
			trg_cond = "this";
			special_code = "";
		};
		case "rescue": {
			[_marker_pos] call outpost_3;
			_group = createGroup [east, true];
			[_marker_pos, _group] call spawn_mission_units;
			_new_group = createGroup [independent, true];
			_resc_unit_pos = [((_marker_pos select 0) + 5), (_marker_pos select 1), 0];
			resc_unit = _new_group createUnit ["I_pilot_F", _resc_unit_pos, [], 0, "NONE"];
			[resc_unit] call equip_rescued_unit;
			trg = createTrigger ["EmptyDetector", _base_pos];
			trg setTriggerArea [30, 30, 0, false];
			trg setTriggerActivation ["ANY", "PRESENT", false];
			trg_cond = "resc_unit in thisList";
			special_code = "deleteVehicle loose_trg; deleteVehicle resc_unit;";
			_join_trg = createTrigger ["EmptyDetector", _marker_pos];
			_join_trg setTriggerArea [10, 10, 0, false];
			_join_trg setTriggerActivation ["WEST", "PRESENT", false];
			_join_trg_statement = "resc_unit joinAs [sof_group, 10];";
			_join_trg setTriggerStatements ["this", _join_trg_statement, ""];
			//_loose_trg_name = "LooseRescue";// + _marker;
			loose_trg = createTrigger ["EmptyDetector", _base_pos];//[_loose_trg_name, _base_pos];
			//_loose_trg triggerAttachVehicle [_resc_unit];
			_loose_statement = "['" + _task_id + "', 'Failed'] call BIS_fnc_taskSetState;";
			//_loose_statement = "hint 'Они убили Кенни!'";
			_loose_cond = "!Alive resc_unit;";
			loose_trg setTriggerStatements [_loose_cond, _loose_statement, ""];
		};
		default { // type attack
			[_marker_pos] call outpost_2;
			_group = createGroup [east, true];
			[_marker_pos, _group] call spawn_mission_units;
			trg = createTrigger ["EmptyDetector", _marker_pos];
			trg setTriggerArea [200, 200, 0, false];
			trg setTriggerActivation ["EAST", "NOT PRESENT", false];
			trg_cond = "this";
			special_code = "";
		};
	};
	
	// таск = [владелец, ид, описание, позиция или объект, статус, приоритет, уведомления, тип таска]
	_side_task = [sof_group, _task_id, _task_type, _marker_pos, "Created", -1, true, _task_type] call BIS_fnc_taskCreate;
	//[_task_id, "attack"] call BIS_fnc_taskSetType;
	//[_task_id, "Created"] call BIS_fnc_taskSetState;
	
	_weapon_box_pos = getMarkerPos (_box_markers select _m);
	_weapon_box_pos_str = format ["[%1, %2, %3]", _weapon_box_pos select 0, _weapon_box_pos select 1, _weapon_box_pos select 2];
	_launcher_box_pos_str = format ["[%1, %2, %3]", (_weapon_box_pos select 0) + 1, _weapon_box_pos select 1, _weapon_box_pos select 2];
	
	_set_task_win = "['" + _task_id + "', 'Succeeded'] call BIS_fnc_taskSetState;";
	
	_weapon_box = "x = createVehicle ['C_supplyCrate_F', " + _weapon_box_pos_str + "]; [x] call weapon_box_filling;";
	_launcher_box = "x = createVehicle ['C_supplyCrate_F', " + _launcher_box_pos_str + "]; [x] call launcher_box_filling;";
	
	//_win_statement = "['" + _task_id + "', 'Succeeded'] call BIS_fnc_taskSetState;";
	_win_statement = special_code + _set_task_win + _weapon_box + _launcher_box;
	
	trg setTriggerStatements [trg_cond, _win_statement, ""];

	//удаляем маркер, который заняли, из общего пула маркеров
	_markers = _markers - _busy_markers;
	_busy_markers = [];

	//_task_id call BIS_fnc_taskState;

	waitUntil {
		_success = ((_task_id call BIS_fnc_taskState) == "Succeeded");
		_failed = ((_task_id call BIS_fnc_taskState) == "Failed"); 
		_success or _failed;
	};

	sleep 5;
};

//hint format ["Hello, %1!", name player];