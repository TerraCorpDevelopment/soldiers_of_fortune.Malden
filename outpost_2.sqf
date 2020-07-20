_center_obj_pos = [
	(_this select 0) select 0,
	((_this select 0) select 1) - 15,
	0
];

_list = [
	["Land_MedicalTent_01_CSAT_brownhex_generic_open_F", [0, 0, 0], 0],	//0, 0, 0
	["Land_ConnectorTent_01_CSAT_brownhex_open_F", [0, 7, 0], 0],	// 0, 7, 0
	["Land_ConnectorTent_01_CSAT_brownhex_cross_F", [0, 10, 0], 0],	// 0, 10, 0
	["Land_MedicalTent_01_CSAT_brownhex_generic_open_F", [-11, 10, 0], 90],	// -11, 10, 0
	["Land_MedicalTent_01_CSAT_brownhex_generic_open_F", [11, 10, 0], 90], // 11, 10, 0
	["Land_ConnectorTent_01_CSAT_brownhex_open_F", [-4, 10, 0], 90],	// -4, 10, 0
	["Land_ConnectorTent_01_CSAT_brownhex_open_F", [4, 10, 0], 90],	// 4, 10, 0
	["Land_ConnectorTent_01_CSAT_brownhex_open_F", [0, 14, 0], 0],	// 0, 14, 0
	["Land_MedicalTent_01_CSAT_brownhex_generic_open_F", [0, 20, 0], 0], // 11, 10, 0
	["Land_BagFence_Round_F", [-4, -8, 0], 45],	// -4, 8, 0
	["Land_BagFence_Round_F", [4, -8, 0], 315],	// 4, 8, 0
	["Land_BagFence_Round_F", [-18, 7, 0], 45],	// -18, 8, 0
	["Land_BagFence_Round_F", [18, 7, 0], 315],	// 18, 8, 0
	["Land_BagFence_Round_F", [-18, 12, 0], 135],	// -18, 8, 0
	["Land_BagFence_Round_F", [18, 12, 0], 225],	// 18, 8, 0
	["Land_BagFence_Round_F", [-4, 28, 0], 135],	// -18, 8, 0
	["Land_BagFence_Round_F", [4, 28, 0], 225]	// 18, 8, 0
];


_center_obj = _list select 0;
_center_obj_type = _center_obj select 0;
_center_obj_dir = _center_obj select 2;

_center = createVehicle [_center_obj_type, _center_obj_pos];
_center setDir _center_obj_dir;

for "_i" from 1 to ((count _list) - 1) do {
	_o = _list select _i;
	_obj_type = _o select 0;
	_obj_rel_pos = _o select 1;
	_obj_pos = _center modelToWorld _obj_rel_pos;
	_obj_dir = _o select 2;
	_obj = createVehicle [_obj_type, [_obj_pos select 0, _obj_pos select 1, 0], [], 0, "CAN_COLLIDE"];
	_obj setDir _obj_dir;
};