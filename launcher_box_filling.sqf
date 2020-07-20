_box = _this select 0;

// Очищаем ящик от стандартного лута
clearBackpackCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearWeaponCargoGlobal _box;
clearItemCargoGlobal _box;

//Посмотрим, сколько рыл надо прокормить снарягой
_players_count = count units sof_group;

if (_players_count == 0) exitWith {};

//_mult - множитель для снаряжения
_mult = 1; //костылёк =)
switch (true) do {
	case (_players_count <= 5): {
		_mult = 1;
	};
	case (_players_count > 5 and _players_count <= 10): {
		_mult = 2;
	};
	case (_players_count > 10): {
		_mult = 5;
	};
};

//добавляем новый лут
_weap = [
	"launch_Titan_short_F",
	"launch_B_Titan_short_tna_F",
	"launch_Titan_F",
	"launch_B_Titan_tna_F"
];
_mags = ["Titan_AT", "Titan_AT", "Titan_AA", "Titan_AA"];

for "_i" from 0 to ((count _weap) - 1) do {
	_w = _weap select _i;
	_m = _mags select _i;
	switch (_w) do {
		default {
			_box addWeaponCargoGlobal [_w, _mult];
		};
	};
	switch (_m) do {
		default {
			_box addMagazineCargoGlobal [_m, _mult * 2];
		};
	};
};


