_arr_boss_vehicles = [
	"B_GEN_Offroad_01_covered_F",
	"B_GEN_Offroad_01_comms_F",
	"B_GEN_Van_02_transport_F",
	"B_APC_Wheeled_01_cannon_F",
	"B_APC_Tracked_01_rcws_F",
	"B_MRAP_01_gmg_F",
	"B_MRAP_01_hmg_F",
	"B_MBT_01_cannon_F",
	"B_MBT_01_TUSK_F",
	"B_T_APC_Wheeled_01_cannon_F",
	"B_T_APC_Tracked_01_rcws_F",
	"B_T_MRAP_01_gmg_F",
	"B_T_MRAP_01_hmg_F",
	"O_APC_Tracked_02_cannon_F",
	"O_APC_Wheeled_02_rcws_v2_F",
	"O_MRAP_02_gmg_F",
	"O_MRAP_02_hmg_F",
	"O_T_APC_Tracked_02_cannon_ghex_F",
	"O_T_APC_Wheeled_02_rcws_v2_ghex_F",
	"O_T_MRAP_02_gmg_ghex_F",
	"O_T_MRAP_02_hmg_ghex_F",
	"I_E_APC_tracked_03_cannon_F",
	"I_E_Offroad_01_covered_F",
	"I_E_Offroad_01_comms_F",
	"I_APC_Wheeled_03_cannon_F",
	"I_APC_tracked_03_cannon_F",
	"I_MRAP_03_gmg_F",
	"I_MRAP_03_hmg_F"
];

_veh = selectRandom _arr_boss_vehicles;
_possible_pos = [];
{
	if ("general_car_spawn" in _x) then {
		_possible_pos pushBack _x;
	};
} forEach allMapMarkers;
_pos = getMarkerPos (selectRandom _possible_pos);
boss_vehicle = createVehicle [_veh, _pos];
for "_i" from 1 to 3 do {
	_unit = general_group createUnit ["I_E_Soldier_F", _pos, [], 0, "NONE"];
	_unit moveInAny boss_vehicle;
};
general_terrafox moveInCargo boss_vehicle;
next_pos = [];
call next_waypoint;