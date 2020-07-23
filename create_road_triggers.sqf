//create_road_markers.sqf

_path_markers = [];

{
	if ("gen_path" in _x) then {
		_path_markers pushBack _x;
	};
} forEach allMapMarkers;

_pos = getMarkerPos "gen_path_marker_1";
_trg = createTrigger ["EmptyDetector", _pos];
_trg setTriggerArea [400, 400, 0, false];
_trg setTriggerText "Ле Порт";
_trg setTriggerActivation ["VEHICLE", "PRESENT", true];
_trg triggerAttachVehicle [general_terrafox];
_condition = "(general_terrafox in thisList)";
_on_activate = "hint 'Цель проезжает ' + (triggerText thisTrigger); diag_log 'ты молодец, не плачь';";
_on_deactivate = "";
_trg setTriggerStatements [_condition, _on_activate, _on_deactivate];