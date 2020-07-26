_unit = _this select 0;

_types = [
	"I_E_Soldier_LAT_F",
	"I_E_Soldier_LAT2_F",
	"I_E_Soldier_AR_F",
	"I_E_Soldier_Pathfinder_F",
	"I_E_Soldier_F",
	"I_E_Soldier_GL_F",
	"I_E_Medic_F",
	"I_E_soldier_M_F",
	"I_ghillie_lsh_F"
];

_unit_type = selectRandom _types;

// "Remove existing items";
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

switch (_unit_type) do {
	case "I_E_Soldier_LAT_F": {
		_unit addWeapon "arifle_MSBS65_F";
		_unit addPrimaryWeaponItem "acc_pointer_IR";
		_unit addPrimaryWeaponItem "optic_ico_01_f";
		_unit addPrimaryWeaponItem "30Rnd_65x39_caseless_msbs_mag";
		_unit addWeapon "launch_NLAW_F";
		_unit addSecondaryWeaponItem "NLAW_F";
		_unit addWeapon "hgun_Pistol_heavy_01_green_F";
		_unit addHandgunItem "11Rnd_45ACP_Mag";
		
		_unit forceAddUniform "U_I_E_Uniform_01_F";
		_unit addVest "V_TacVest_camo";
		_unit addBackpack "B_TacticalPack_oli";
		
		_unit addItemToUniform "FirstAidKit";
		for "_i" from 1 to 2 do {_unit addItemToUniform "30Rnd_65x39_caseless_msbs_mag";};
		_unit addItemToUniform "Chemlight_blue";
		for "_i" from 1 to 3 do {_unit addItemToVest "30Rnd_65x39_caseless_msbs_mag";};
		for "_i" from 1 to 2 do {_unit addItemToVest "11Rnd_45ACP_Mag";};
		_unit addItemToVest "SmokeShell";
		_unit addItemToVest "SmokeShellBlue";
		_unit addItemToVest "Chemlight_blue";
		for "_i" from 1 to 2 do {_unit addItemToBackpack "NLAW_F";};
		_unit addHeadgear "H_HelmetHBK_ear_F";
		_unit addGoggles "G_Tactical_Clear";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "ItemRadio";
		_unit linkItem "NVGoggles_INDEP";
	};
	case "I_E_Soldier_LAT2_F": {
		_unit addWeapon "arifle_MSBS65_F";
		_unit addPrimaryWeaponItem "acc_pointer_IR";
		_unit addPrimaryWeaponItem "optic_ico_01_f";
		_unit addPrimaryWeaponItem "30Rnd_65x39_caseless_msbs_mag";
		_unit addWeapon "launch_MRAWS_green_F";
		_unit addSecondaryWeaponItem "MRAWS_HEAT55_F";
		_unit addWeapon "hgun_Pistol_heavy_01_green_F";
		_unit addHandgunItem "11Rnd_45ACP_Mag";

		_unit forceAddUniform "U_I_E_Uniform_01_F";
		_unit addVest "V_TacVest_camo";
		_unit addBackpack "B_TacticalPack_oli";

		_unit addItemToUniform "FirstAidKit";
		for "_i" from 1 to 2 do {_unit addItemToUniform "30Rnd_65x39_caseless_msbs_mag";};
		_unit addItemToUniform "Chemlight_blue";
		for "_i" from 1 to 3 do {_unit addItemToVest "30Rnd_65x39_caseless_msbs_mag";};
		for "_i" from 1 to 2 do {_unit addItemToVest "11Rnd_45ACP_Mag";};
		_unit addItemToVest "SmokeShell";
		_unit addItemToVest "SmokeShellBlue";
		_unit addItemToVest "Chemlight_blue";
		for "_i" from 1 to 2 do {_unit addItemToBackpack "MRAWS_HEAT_F";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "MRAWS_HE_F";};
		_unit addHeadgear "H_HelmetHBK_ear_F";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "ItemRadio";
		_unit linkItem "NVGoggles_INDEP";
	};
	case "I_E_Soldier_AR_F": {
		_unit addWeapon "LMG_Mk200_black_F";
		_unit addPrimaryWeaponItem "acc_pointer_IR";
		_unit addPrimaryWeaponItem "optic_ERCO_blk_F";
		_unit addPrimaryWeaponItem "200Rnd_65x39_cased_Box_Red";
		_unit addPrimaryWeaponItem "bipod_01_F_blk";
		_unit addWeapon "hgun_Pistol_heavy_01_green_F";
		_unit addHandgunItem "11Rnd_45ACP_Mag";

		_unit forceAddUniform "U_I_E_Uniform_01_shortsleeve_F";
		_unit addVest "V_TacVest_camo";
		_unit addBackpack "B_FieldPack_green_F";

		_unit addItemToUniform "FirstAidKit";
		for "_i" from 1 to 2 do {_unit addItemToUniform "11Rnd_45ACP_Mag";};
		_unit addItemToUniform "HandGrenade";
		_unit addItemToVest "SmokeShell";
		_unit addItemToVest "SmokeShellBlue";
		for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_blue";};
		_unit addItemToVest "200Rnd_65x39_cased_Box_Red";
		for "_i" from 1 to 2 do {_unit addItemToBackpack "200Rnd_65x39_cased_Box_Red";};
		_unit addHeadgear "H_HelmetHBK_ear_F";

		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "ItemRadio";
		_unit linkItem "NVGoggles_INDEP";
	};
	case "I_E_Soldier_Pathfinder_F": {
		_unit addWeapon "arifle_MSBS65_UBS_F";
		_unit addPrimaryWeaponItem "muzzle_snds_65_TI_blk_F";
		_unit addPrimaryWeaponItem "acc_pointer_IR";
		_unit addPrimaryWeaponItem "optic_ico_01_f";
		_unit addPrimaryWeaponItem "30Rnd_65x39_caseless_msbs_mag";
		_unit addWeapon "hgun_Pistol_heavy_01_green_F";
		_unit addHandgunItem "muzzle_snds_acp";
		_unit addHandgunItem "11Rnd_45ACP_Mag";

		_unit forceAddUniform "U_I_E_Uniform_01_F";
		_unit addVest "V_TacVest_camo";
		_unit addBackpack "B_AssaultPack_eaf_IEPathfinder_F";

		_unit addItemToUniform "FirstAidKit";
		for "_i" from 1 to 2 do {_unit addItemToUniform "30Rnd_65x39_caseless_msbs_mag";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_blue";};
		_unit addItemToUniform "I_E_IR_Grenade";
		for "_i" from 1 to 3 do {_unit addItemToVest "30Rnd_65x39_caseless_msbs_mag";};
		for "_i" from 1 to 2 do {_unit addItemToVest "6Rnd_12Gauge_Pellets";};
		for "_i" from 1 to 3 do {_unit addItemToVest "6Rnd_12Gauge_Slug";};
		for "_i" from 1 to 2 do {_unit addItemToVest "11Rnd_45ACP_Mag";};
		_unit addItemToVest "HandGrenade";
		_unit addItemToVest "SmokeShell";
		_unit addItemToBackpack "DemoCharge_Remote_Mag";
		for "_i" from 1 to 3 do {_unit addItemToBackpack "30Rnd_65x39_caseless_msbs_mag";};
		_unit addHeadgear "H_HelmetHBK_F";
		_unit addGoggles "G_Bandanna_oli";

		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "ItemRadio";
		_unit linkItem "NVGogglesB_grn_F";
	};
	case "I_E_Soldier_GL_F": {
		_unit addWeapon "arifle_MSBS65_GL_F";
		_unit addPrimaryWeaponItem "acc_pointer_IR";
		_unit addPrimaryWeaponItem "optic_ico_01_f";
		_unit addPrimaryWeaponItem "30Rnd_65x39_caseless_msbs_mag";
		_unit addWeapon "hgun_Pistol_heavy_01_green_F";
		_unit addHandgunItem "11Rnd_45ACP_Mag";

		_unit forceAddUniform "U_I_E_Uniform_01_F";
		_unit addVest "V_CarrierRigKBT_01_heavy_EAF_F";

		_unit addItemToUniform "FirstAidKit";
		for "_i" from 1 to 2 do {_unit addItemToUniform "30Rnd_65x39_caseless_msbs_mag";};
		_unit addItemToUniform "Chemlight_blue";
		_unit addItemToUniform "SmokeShell";
		_unit addItemToUniform "SmokeShellBlue";
		for "_i" from 1 to 3 do {_unit addItemToVest "30Rnd_65x39_caseless_msbs_mag";};
		for "_i" from 1 to 2 do {_unit addItemToVest "11Rnd_45ACP_Mag";};
		for "_i" from 1 to 8 do {_unit addItemToVest "1Rnd_HE_Grenade_shell";};
		for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "MiniGrenade";};
		_unit addItemToVest "Chemlight_blue";
		_unit addHeadgear "H_HelmetHBK_chops_F";

		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "ItemRadio";
		_unit linkItem "NVGoggles_INDEP";
	};
	case "I_E_Medic_F": {
		_unit addWeapon "arifle_MSBS65_F";
		_unit addPrimaryWeaponItem "acc_pointer_IR";
		_unit addPrimaryWeaponItem "optic_ico_01_f";
		_unit addPrimaryWeaponItem "30Rnd_65x39_caseless_msbs_mag";
		_unit addWeapon "hgun_Pistol_heavy_01_green_F";
		_unit addHandgunItem "11Rnd_45ACP_Mag";

		_unit forceAddUniform "U_I_E_Uniform_01_shortsleeve_F";
		_unit addVest "V_TacVest_camo";
		_unit addBackpack "B_Fieldpack_green_IEMedic_F";

		_unit addItemToUniform "FirstAidKit";
		for "_i" from 1 to 3 do {_unit addItemToUniform "30Rnd_65x39_caseless_msbs_mag";};
		_unit addItemToUniform "Chemlight_blue";
		for "_i" from 1 to 3 do {_unit addItemToVest "30Rnd_65x39_caseless_msbs_mag";};
		for "_i" from 1 to 2 do {_unit addItemToVest "11Rnd_45ACP_Mag";};
		_unit addItemToVest "SmokeShell";
		_unit addItemToVest "SmokeShellBlue";
		_unit addItemToVest "SmokeShellOrange";
		_unit addItemToVest "SmokeShellGreen";
		_unit addItemToVest "Chemlight_blue";
		_unit addItemToBackpack "Medikit";
		for "_i" from 1 to 10 do {_unit addItemToBackpack "FirstAidKit";};
		_unit addItemToBackpack "SmokeShellGreen";
		_unit addItemToBackpack "SmokeShellBlue";
		_unit addItemToBackpack "SmokeShellOrange";
		_unit addHeadgear "H_HelmetHBK_ear_F";
		_unit addGoggles "G_Lowprofile";

		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "ItemRadio";
		_unit linkItem "NVGoggles_INDEP";
	};
	case "I_E_soldier_M_F": {
		_unit addWeapon "arifle_MSBS65_Mark_F";
		_unit addPrimaryWeaponItem "muzzle_snds_65_TI_blk_F";
		_unit addPrimaryWeaponItem "acc_pointer_IR";
		_unit addPrimaryWeaponItem "optic_SOS";
		_unit addPrimaryWeaponItem "30Rnd_65x39_caseless_msbs_mag";
		_unit addPrimaryWeaponItem "bipod_01_F_blk";
		_unit addWeapon "hgun_Pistol_heavy_01_green_F";
		_unit addHandgunItem "11Rnd_45ACP_Mag";

		_unit forceAddUniform "U_I_E_Uniform_01_F";
		_unit addVest "V_TacVest_camo";

		_unit addItemToUniform "FirstAidKit";
		for "_i" from 1 to 2 do {_unit addItemToUniform "30Rnd_65x39_caseless_msbs_mag";};
		_unit addItemToUniform "Chemlight_blue";
		for "_i" from 1 to 5 do {_unit addItemToVest "30Rnd_65x39_caseless_msbs_mag";};
		for "_i" from 1 to 2 do {_unit addItemToVest "11Rnd_45ACP_Mag";};
		for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
		_unit addItemToVest "SmokeShell";
		_unit addItemToVest "SmokeShellBlue";
		_unit addItemToVest "Chemlight_blue";
		_unit addHeadgear "H_HelmetHBK_F";
		_unit addGoggles "G_Aviator";

		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "ItemRadio";
		_unit linkItem "NVGoggles_INDEP";
	};
	case "I_ghillie_lsh_F": {
		_unit addWeapon "srifle_GM6_F";
		_unit addPrimaryWeaponItem "optic_LRPS";
		_unit addPrimaryWeaponItem "5Rnd_127x108_Mag";
		_unit addWeapon "hgun_ACPC2_F";
		_unit addHandgunItem "muzzle_snds_acp";
		_unit addHandgunItem "9Rnd_45ACP_Mag";

		_unit forceAddUniform "U_I_FullGhillie_lsh";
		_unit addVest "V_Chestrig_oli";

		_unit addWeapon "Rangefinder";

		_unit addItemToUniform "FirstAidKit";
		for "_i" from 1 to 2 do {_unit addItemToUniform "5Rnd_127x108_Mag";};
		_unit addItemToUniform "SmokeShell";
		for "_i" from 1 to 4 do {_unit addItemToVest "5Rnd_127x108_Mag";};
		for "_i" from 1 to 2 do {_unit addItemToVest "9Rnd_45ACP_Mag";};
		_unit addItemToVest "APERSTripMine_Wire_Mag";
		_unit addItemToVest "ClaymoreDirectionalMine_Remote_Mag";
		_unit addItemToVest "SmokeShellGreen";
		_unit addItemToVest "SmokeShellOrange";
		_unit addItemToVest "SmokeShellPurple";
		for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_green";};

		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "ItemRadio";
		_unit linkItem "ItemGPS";
		_unit linkItem "NVGoggles_INDEP";
	};
	default {   //mean simple soldier
		_unit addWeapon "arifle_MSBS65_F";
		_unit addPrimaryWeaponItem "acc_pointer_IR";
		_unit addPrimaryWeaponItem "optic_ico_01_f";
		_unit addPrimaryWeaponItem "30Rnd_65x39_caseless_msbs_mag";
		_unit addWeapon "hgun_Pistol_heavy_01_green_F";
		_unit addHandgunItem "11Rnd_45ACP_Mag";

		_unit forceAddUniform "U_I_E_Uniform_01_F";
		_unit addVest "V_TacVest_camo";

		_unit addItemToUniform "FirstAidKit";
		for "_i" from 1 to 2 do {_unit addItemToUniform "30Rnd_65x39_caseless_msbs_mag";};
		_unit addItemToUniform "Chemlight_blue";
		for "_i" from 1 to 6 do {_unit addItemToVest "30Rnd_65x39_caseless_msbs_mag";};
		for "_i" from 1 to 2 do {_unit addItemToVest "11Rnd_45ACP_Mag";};
		_unit addItemToVest "HandGrenade";
		_unit addItemToVest "SmokeShell";
		_unit addItemToVest "Chemlight_blue";
		_unit addHeadgear "H_HelmetHBK_F";
		_unit addGoggles "G_Tactical_Black";

		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "ItemRadio";
		_unit linkItem "NVGoggles_INDEP";
	};
};