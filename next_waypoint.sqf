_general_pos = getPos general_terrafox;
_general_x = _general_pos select 0;
_general_y = _general_pos select 1;

_selected = false;

//проверяем, как далеко ещё ехать
if ((count next_pos) != 0) then {
	_next_x = next_pos select 0;
	_next_y = next_pos select 1;
	_dx = _general_x - _next_x;
	_dy = _general_y - _next_y;
	if (_dx < 0) then { _dx	= _dx * (-1) };
	if (_dy < 0) then { _dy = _dy * (-1) };
	if ((_dx < 350) && (_dy < 350)) then { 
		_selected = false;
	} else {
		_selected = true;
	};
};

if _selected exitWith {};

_markers = [];

{
	if ("gen_path" in _x) then {
		_markers pushBack _x;
	};
} forEach allMapMarkers;

while { !_selected } do {
	next_pos = getMarkerPos (selectRandom _markers);
	_next_x = next_pos select 0;
	_next_y = next_pos select 1;
	_dx = _general_x - _next_x;
	_dy = _general_y - _next_y;
	if (_dx < 0) then { _dx	= _dx * (-1) };
	if (_dy < 0) then { _dy = _dy * (-1) };
	if ((_dx < 300) && (_dy < 300)) then { 
		_selected = false;
	} else {
		_selected = true;
	};
};

general_terrafox doMove next_pos;