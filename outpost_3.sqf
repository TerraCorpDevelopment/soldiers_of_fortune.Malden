_center_obj_pos = _this select 0;

_list = [
	["Land_LampHalogen_F", [0, 0, 0], 270],	//0, 0, 0
	["Land_HBarrierTower_F", [-1, -5 , 0], 0],	//0, 0, 0
	["Land_HBarrierWall4_F", [5, -7, 0], 180],	// 0, 10, 0
	["Land_HBarrierWall_corner_F", [9.8, -6.7, 0], 90],	// -11, 10, 0 ur
	["Land_HBarrierWall6_F", [10.8, 0.2, 0], 90],	// 0, 7, 0
	["Land_HBarrierWall_corner_F", [9, 6, 0], 0],	// 0, 14, 0 dl
	//["Land_HBarrierWall_corridor_F", [4, 10, 0], 90], // 11, 10, 0
	["Land_HBarrierWall6_F", [-1.5, 6.5, 0], 0],	// -4, 8, 0
	["Land_HBarrierWall_corner_F", [-8, 6, 0], 270],	// 4, 10, 0 dr
	["Land_HBarrierWall6_F", [-6.8, -0.5, 0], 270],	// -4, 10, 0
	["Land_HBarrierWall_corner_F", [-7, -7, 0], 180]	// 4, 10, 0 dr
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
	_obj_dir = (_o select 2) - 90;
	_obj = createVehicle [_obj_type, [_obj_pos select 0, _obj_pos select 1, 0], [], 0, "CAN_COLLIDE"];
	_obj setDir _obj_dir;
};