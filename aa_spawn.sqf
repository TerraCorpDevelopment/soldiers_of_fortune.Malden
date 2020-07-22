//aa_spawn.sqf

//systemChat "Begin AA spawn";

{
//	systemChat _x;
	if ("aa_spawn" in _x) then {
		_pos = getMarkerPos _x;
		_r = floor random 100;
		if (_r > 70) then {
			_aa = createVehicle ["I_LT_01_AA_F", _pos];
			createVehicleCrew _aa;
			//systemChat "created AA vehicle";
		} else {
			_group = createGroup [resistance, true];
			for "_i" from 0 to 2 do {
				//_unit = _group createUnit ["I_E_Soldier_AA_F", _pos, [], 0, "NONE"];
				"I_E_Soldier_F" createUnit [
					_pos,
					_group,
					"aaUnit = this; this addBackpack 'B_Carryall_eaf_F'; this addWeapon 'launch_I_Titan_eaf_F'; this addSecondaryWeaponItem 'Titan_AA'; this addItemToBackpack 'Titan_AA'; this addItemToBackpack 'Titan_AA'",
					0.5,
					"corporal"
				];
				aaUnit disableAI "PATH";
				aaUnit setSkill 0.7;
			};
			//systemChat "created AA inf";
		};
	};
} forEach allMapMarkers;

/*
"B_RangeMaster_F" createUnit [
	getMarkerPos "marker_1",
	_groupAlpha,
	"loon1 = this; this addWeapon 'BAF_L85A2_RIS_SUSAT'",
	0.6,
	"corporal"
];
*/
/*
comment "Exported from Arsenal by Terrafox";

comment "[!] UNIT MUST BE LOCAL [!]";
if (!local this) exitWith {};

comment "Remove existing items";
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

comment "Add weapons";
this addWeapon "arifle_MSBS65_F";
this addPrimaryWeaponItem "acc_pointer_IR";
this addPrimaryWeaponItem "optic_ico_01_f";
this addPrimaryWeaponItem "30Rnd_65x39_caseless_msbs_mag";
this addWeapon "launch_I_Titan_eaf_F";
this addSecondaryWeaponItem "Titan_AA";
this addWeapon "hgun_Pistol_heavy_01_green_F";
this addHandgunItem "11Rnd_45ACP_Mag";

comment "Add containers";
this forceAddUniform "U_I_E_Uniform_01_F";
this addVest "V_CarrierRigKBT_01_light_EAF_F";
this addBackpack "B_Carryall_eaf_F";

comment "Add items to containers";
this addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {this addItemToUniform "30Rnd_65x39_caseless_msbs_mag";};
this addItemToUniform "Chemlight_blue";
for "_i" from 1 to 3 do {this addItemToVest "30Rnd_65x39_caseless_msbs_mag";};
for "_i" from 1 to 2 do {this addItemToVest "11Rnd_45ACP_Mag";};
this addItemToVest "SmokeShell";
this addItemToVest "SmokeShellBlue";
this addItemToVest "Chemlight_blue";
for "_i" from 1 to 2 do {this addItemToBackpack "Titan_AA";};
this addHeadgear "H_HelmetHBK_ear_F";
this addGoggles "G_Tactical_Black";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";
this linkItem "NVGoggles_INDEP";

comment "Set identity";
[this,"LivonianHead_10","male02pol"] call BIS_fnc_setIdentity;
*/
