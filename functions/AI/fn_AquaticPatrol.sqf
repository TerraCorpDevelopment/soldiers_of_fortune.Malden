private["_group","_markername","_searchRange","_oncomplete","_destinationPos","_waypoint","_leader"];
if(!isserver) exitwith {};

_group = _this select 0;
_markerName = _this select 1;

_oncomplete = "";

[_group,"PATROL"] call fnc_SetTaskState;


_destinationPos = [_markerName] call fnc_RandomMarkerPos;
//player sidechat _markerName;
while {!(surfaceIsWater [_destinationPos select 0, _destinationPos select 1])} do {
	_destinationPos = [_markerName] call fnc_RandomMarkerPos;
};

_oncomplete = format["[group this,""%1""] spawn fnc_AquaticPatrol;",_markerName];
_group setvariable ["homeMarker",_markerName,false];




_waypoint = [_group,_destinationPos,"MOVE","COLUMN","NORMAL","AWARE",_oncomplete] call fnc_move;
if(!isNil("_waypoint")) then {
	_waypoint setWaypointTimeout [0, 30, 60];
};