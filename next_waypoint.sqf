_general_pos = getPos general_terrafox;
_general_x = _general_pos select 0;
_general_y = _general_pos select 1;
_general_pos = getPos general_terrafox;

_allLocations = [];
{
    _allLocations pushBack (locationPosition _x);
} forEach nearestLocations [_general_pos, ["NameCity", "NameCityCapital"], 40000];

_next_pos = selectRandom _allLocations;
systemChat (toString _next_pos);
_trg = createTrigger ["EmptyDetector", _next_pos];
_trg setTriggerArea [30, 30, 0, false];
_trg setTriggerActivation ["VEHICLE", "PRESENT", true];
_trg triggerAttachVehicle [general_terrafox];
_condition = "(general_terrafox in thisList)";
_on_activate = "diag_log 'ты молодец, не плачь'; call next_waypoint; deleteVehicle thisTrigger;";
_on_deactivate = "";
_trg setTriggerStatements [_condition, _on_activate, _on_deactivate];

general_terrafox doMove _next_pos;