if (!isServer) exitWith {};

// передаём позицию спавна и группу
// здесь храним типы юнитов, и экипировку, если требуется. Здесь же рассчитываем количество пехоты.

private ["_pos", "_group"];

//типы юнитов
/*
_unitTypes =
[
	"C_man_hunter_1_F","C_man_p_beggar_F","C_man_p_beggar_F_afro",
	"C_man_p_fugitive_F","C_man_p_shorts_1_F","C_man_polo_1_F",
	"C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F",
	"C_man_p_beggar_F","C_man_p_beggar_F_afro",
	"C_man_p_fugitive_F","C_journalist_F","C_Orestes",
	"C_man_polo_5_F","C_man_polo_6_F","C_man_shorts_1_F",
	"C_man_shorts_2_F","C_man_shorts_3_F","C_man_shorts_4_F",
	"C_man_w_worker_F","C_man_p_beggar_F","C_man_p_beggar_F_afro",
	"C_man_p_fugitive_F"
];
*/
_pos = _this select 0;
_group = _this select 1;
_unit_types = arr_InfantryTypes;
_r_count = floor random 10;
_players_count = count units sof_group;
_units_count = _r_count + 5 * _players_count;

for "_i" from 1 to _units_count do
{
	//_uPos = _pos vectorAdd ([[random 15, 0, 0], random 360] call BIS_fnc_rotateVector2D);
	_x_c = (_pos select 0) + random [-30, 0, 30];
	_y_c = (_pos select 1) + random [-30, 0, 30];
	_z_c = 0;
	_uPos = [_x_c, _y_c, _z_c];
	_unit = _group createUnit [_unit_types call BIS_fnc_selectRandom, _uPos, [], 0, "NONE"];
	_unit setDir random 360;
	_unit disableAI "PATH";

	removeAllWeapons _unit;
//	removeAllAssignedItems _unit;
//	removeVest _unit;
//	removeBackpack _unit;
//	_unit addVest "V_HarnessOSpec_gry";
	_unit addMagazine "30Rnd_65x39_caseless_green";
	_unit addMagazine "30Rnd_65x39_caseless_green";
	_unit addMagazine "30Rnd_65x39_caseless_green";
	_unit addMagazine "30Rnd_65x39_caseless_green";
	_unit addMagazine "30Rnd_65x39_caseless_green";
//	_unit addMagazine "30Rnd_65x39_caseless_green";
//	_unit addMagazine "30Rnd_556x45_Stanag";

	switch (true) do
	{
		// Grenadier every 3 units
		case (_i % 3 == 0):
		{
			_unit addMagazine "1Rnd_HE_Grenade_shell";
			_unit addWeapon "arifle_Katiba_GL_F";
			_unit addMagazine "1Rnd_HE_Grenade_shell";
			_unit addMagazine "1Rnd_HE_Grenade_shell";
		};
		// RPG every 7 units, starting from second one
		case (_i % 7 == 0):
		{
			_unit addBackpack "B_Carryall_ocamo";
			_unit addWeapon "arifle_Katiba_F";
			_unit addMagazine "Titan_AT";
			_unit addWeapon "launch_Titan_short_F";
			_unit addMagazine "Titan_AT";
			_unit addMagazine "Titan_AT";
		};
		case (_i % 8 == 0):
		{
			_unit addBackpack "B_Carryall_ocamo";
			_unit addWeapon "arifle_Katiba_F";
			_unit addMagazine "Titan_AA";
			_unit addWeapon "launch_O_Titan_F";
			_unit addMagazine "Titan_AA";
			_unit addMagazine "Titan_AA";
		};
		// Rifleman
		default
		{
			_unit addWeapon "arifle_Katiba_F";
		};
	};

	_unit addRating 1e11;
	//_unit spawn refillPrimaryAmmo;
	//_unit call setMissionSkill;
	//_unit addEventHandler ["Killed", server_playerDied];
};