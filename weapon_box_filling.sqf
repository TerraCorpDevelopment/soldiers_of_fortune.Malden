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
		_mult = 5;
	};
	case (_players_count > 5 and _players_count <= 10): {
		_mult = 10;
	};
	case (_players_count > 10): {
		_mult = 15;
	};
};

//добавляем новый лут

_weap = ["arifle_MX_Hamr_pointer_F", "arifle_MSBS65_GL_ico_pointer_f", "LMG_Mk200_MRCO_F", "srifle_DMR_03_AMS_F"];
_mags = ["20Rnd_762x51_Mag", "30Rnd_65x39_caseless_black_mag", "200Rnd_65x39_cased_Box_Red", "30Rnd_65x39_caseless_msbs_mag", "1Rnd_HE_Grenade_shell"];

for "_i" from 0 to ((count _weap) - 1) do {
	_w = _weap select _i;
	switch (_w) do {
		case "arifle_MX_Hamr_pointer_F": {
			_box addWeaponCargoGlobal [_w, _mult];
		};
		default {
			_box addWeaponCargoGlobal [_w, (_mult/5)];
		};
	};
};
for "_i" from 0 to ((count _mags) - 1) do {
	_m = _mags select _i;
	switch (_m) do {
		case "30Rnd_65x39_caseless_black_mag": {
			_box addMagazineCargoGlobal [_m, 5 * _mult];
		};
		default {
			_box addMagazineCargoGlobal [_m, _mult];
		};
	};
};


