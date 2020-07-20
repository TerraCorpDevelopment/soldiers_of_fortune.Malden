_center_obj_pos = _this select 0;

_list = [
	//тип, относительная позиция, направление
	["Land_BagBunker_Tower_F", [0, 0, 0], 0],	//center 0-0-0
	["Land_BagBunker_Small_F", [-8, 9, 0], 135],	//ul  -8, +9
	["Land_BagBunker_Small_F", [8, 9, 0], 225],	//ur +8, +9
	["Land_BagBunker_Small_F", [-8, -9, 0], 45],	//dl -8, -9
	["Land_BagBunker_Small_F", [8, -9, 0], 315],	//dr +8, -9
	["CamoNet_BLUFOR_open_F", [0, 9, 0], 0],	//up 0, +9
	["CamoNet_BLUFOR_open_F", [0, -9, 0], 0],	//down 0, -9
	["CamoNet_BLUFOR_open_F", [-9, 0, 0], 90],	//left -9, 0
	["CamoNet_BLUFOR_open_F", [9, 0, 0], 90],	//right +9, 0
	["Land_HBarrier_5_F", [-6, 10.5, 0], 0],	//ul -4, +10
	["Land_HBarrier_5_F", [1.5, 10.5, 0], 0],	//ur +4, +10
	["Land_HBarrier_5_F", [-6, -9.5, 0], 0],	//dl -4, -10
	["Land_HBarrier_5_F", [1.5, -9.5, 0], 0],	//dr +4, -10
	["Land_HBarrier_5_F", [-11.5, 5, 0], 90],	//ul -10, +4
	["Land_HBarrier_5_F", [7, 5, 0], 90],	//ur +10, +4
	["Land_HBarrier_5_F", [-11.5, -4, 0], 90],	//dl -10, -4
	["Land_HBarrier_5_F", [7, -4, 0], 90]	//dr -10, +4
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