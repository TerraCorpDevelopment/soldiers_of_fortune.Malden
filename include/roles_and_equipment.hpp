/*
"\A3\Ui_f\data\GUI\Cfg\Ranks\private_gs.paa"
corporal_gs.paa
sergeant_gs.paa
lieutenant_gs.paa
captain_gs.paa
major_gs.paa
colonel_gs.paa
general_gs.paa
*/

class CfgRoles
{
	class Assault
	{
		displayName = $STR_A3_Role_Assault;
		icon = "a3\Ui_f\data\GUI\Cfg\RespawnRoles\assault_ca.paa";
	};
	class Ctrg
	{
		displayName = "Штурмовик CTRG";
		icon = "a3\Ui_f\data\GUI\Cfg\RespawnRoles\assault_ca.paa";
	};
	class Support
	{
		displayName = $STR_A3_Role_Support;
		icon = "a3\Ui_f\data\GUI\Cfg\RespawnRoles\support_ca.paa";
	};
	class Recon
	{
		displayName = $STR_A3_Role_Recon;
		icon = "a3\Ui_f\data\GUI\Cfg\RespawnRoles\recon_ca.paa";
	};
};

class CfgRespawnInventory
{
	class AssaultLightSand
	{
		displayName = "Легкий песочный";									// Name visible in the menu
		icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\private_gs.paa";				// Icon displayed next to the name
		role = "Assault";													// Optional, see CfgRoles

		// Loadout definition, uses same entries as CfgVehicles classes
		weapons[] = {
			"hgun_P07_F",
			"arifle_TRG21_F"
		};
		magazines[] = {
			"16Rnd_9x21_Mag",
			"30Rnd_556x45_Stanag",
			"16Rnd_9x21_Mag",
			"16Rnd_9x21_Mag",
			"16Rnd_9x21_Mag",
			"HandGrenade",
			"HandGrenade",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"HandGrenade",
			"HandGrenade",
			"SmokeShellBlue",
			"SmokeShellBlue",
			"SmokeShellBlue",
			"SmokeShellBlue"
		};
		items[] = {
			"FirstAidKit",
			"FirstAidKit",
		};
		linkedItems[] = {
			"V_Chestrig_khk",
			"H_HelmetB_light_sand",
			"optic_Aco",
			"acc_flashlight",
			"ItemMap",
			"ItemCompass",
			"ItemWatch",
			"ItemRadio",
			"NVGoggles"
		};
		uniformClass = "U_B_CombatUniform_mcam_tshirt";
		//backpack = "B_AssaultPack_mcamo";
	};
	class AssaultLightCTRG
	{
		displayName = "Легкий CTRG";
		icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\private_gs.paa";
		role = "Ctrg";
		uniformClass = "U_B_CTRG_2";
		//backpack = "B_AssaultPack_rgr";
		weapons[] = {
			"hgun_P07_F",
			"arifle_TRG21_F"
		};
		magazines[] = {
			"16Rnd_9x21_Mag",
			"30Rnd_556x45_Stanag",
			"16Rnd_9x21_Mag",
			"16Rnd_9x21_Mag",
			"16Rnd_9x21_Mag",
			"HandGrenade",
			"HandGrenade",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"HandGrenade",
			"HandGrenade",
			"SmokeShellBlue",
			"SmokeShellBlue",
			"SmokeShellBlue",
			"SmokeShellBlue"
		};
		items[] = {
			"FirstAidKit",
			"FirstAidKit",
		};
		linkedItems[] = {
			"V_Chestrig_rgr",
			"H_HelmetB_light_black",
			"ItemMap",
			"ItemCompass",
			"ItemWatch",
			"ItemRadio",
			"NVGoggles_OPFOR",
			"ItemGPS",
			"optic_Aco",
			"acc_flashlight"
		};
	};
	class AssaultLightCTRGTropic
	{
		displayName = "Легкий CTRG тропики";
		icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\private_gs.paa";
		role = "Ctrg";
		uniformClass = "U_B_CTRG_Soldier_2_F";
		//backpack = "B_AssaultPack_rgr";
		weapons[] = {
			"hgun_P07_F",
			"arifle_SPAR_01_khk_F"
		};
		magazines[] = {
			"16Rnd_9x21_Mag",
			"30Rnd_556x45_Stanag",
			"16Rnd_9x21_Mag",
			"16Rnd_9x21_Mag",
			"16Rnd_9x21_Mag",
			"HandGrenade",
			"HandGrenade",
			"HandGrenade",
			"HandGrenade",
			"SmokeShellBlue",
			"SmokeShellBlue",
			"SmokeShellBlue",
			"SmokeShellBlue",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag"
		};
		items[] = {
			"FirstAidKit",
			"FirstAidKit"
		};
		linkedItems[] = {
			"V_Chestrig_rgr",
			"H_HelmetB_Light_tna_F",
			"ItemMap",
			"ItemCompass",
			"ItemWatch",
			"ItemRadio",
			"ItemGPS",
			"NVGoggles_OPFOR",
			"optic_Aco",
			"acc_flashlight"
		};
	};
	class AssaultLightCTRGCity
	{
		displayName = "Легкий CTRG городской";
		icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\private_gs.paa";
		uniformClass = "U_B_CTRG_Soldier_urb_2_F";
		//backpack = "B_AssaultPack_blk";
		role = "Ctrg";
		weapons[] = {
			"hgun_P07_F",
			"arifle_SPAR_01_blk_F"
		};
		magazines[] = {
			"16Rnd_9x21_red_Mag",
			"30Rnd_556x45_Stanag",
			"16Rnd_9x21_red_Mag",
			"16Rnd_9x21_red_Mag",
			"16Rnd_9x21_red_Mag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"HandGrenade",
			"HandGrenade",
			"HandGrenade",
			"HandGrenade",
			"SmokeShellBlue",
			"SmokeShellBlue",
			"SmokeShellBlue",
			"SmokeShellBlue"
		};
		items[] = {
			"FirstAidKit",
			"FirstAidKit"
		};
		linkedItems[] = {
			"V_Chestrig_blk",
			"H_HelmetB_light_black",
			"ItemMap",
			"ItemCompass",
			"ItemWatch",
			"ItemRadio",
			"ItemGPS",
			"NVGoggles_OPFOR",
			"optic_Aco",
			"acc_flashlight"
		};
	};
	class AssaultLightForest
	{
		displayName = "Легкий лесной";									// Name visible in the menu
		icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\private_gs.paa";	// Icon displayed next to the name
		role = "Assault";										// Optional, see CfgRoles

		// Loadout definition, uses same entries as CfgVehicles classes
		weapons[] = {
			"arifle_TRG21_F",
			"hgun_Pistol_heavy_01_green_F"
		};
		magazines[] = {
			"11Rnd_45ACP_Mag",
			"30Rnd_556x45_Stanag",
			"11Rnd_45ACP_Mag",
			"11Rnd_45ACP_Mag",
			"11Rnd_45ACP_Mag",
			"HandGrenade",
			"HandGrenade",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"HandGrenade",
			"HandGrenade",
			"SmokeShellBlue",
			"SmokeShellBlue",
			"SmokeShellBlue",
			"SmokeShellBlue"
		};
		items[] = {
			"FirstAidKit",
			"FirstAidKit",
		};
		linkedItems[] = {
			"V_Chestrig_blk",
			"H_HelmetB_light_wdl",
			"optic_Aco",
			"acc_flashlight",
			"ItemMap",
			"ItemCompass",
			"ItemWatch",
			"ItemRadio",
			"ItemGPS",
			"NVGoggles_INDEP"
		};
		uniformClass = "U_B_CombatUniform_tshirt_mcam_wdL_f";
		//backpack = "B_AssaultPack_blk";
	};
	class AssaultLightTropic
	{
		displayName = "Легкий тропики";
		icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\private_gs.paa";
		uniformClass = "U_B_T_Soldier_AR_F";
		//backpack = "B_AssaultPack_tna_F";
		role = "Assault";
		weapons[] = {
			"arifle_SPAR_01_blk_F",
			"hgun_P07_F"
		};
		magazines[] = {
			"16Rnd_9x21_red_Mag",
			"30Rnd_556x45_Stanag",
			"16Rnd_9x21_red_Mag",
			"16Rnd_9x21_red_Mag",
			"16Rnd_9x21_red_Mag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"HandGrenade",
			"HandGrenade",
			"HandGrenade",
			"HandGrenade",
			"SmokeShellBlue",
			"SmokeShellBlue",
			"SmokeShellBlue",
			"SmokeShellBlue"
		};
		items[] = {
			"FirstAidKit",
			"FirstAidKit"
		};
		linkedItems[] = {
			"V_Chestrig_blk",
			"H_HelmetB_Light_tna_F",
			"ItemMap",
			"ItemCompass",
			"ItemWatch",
			"ItemRadio",
			"ItemGPS",
			"NVGoggles_tna_F",
			"optic_Aco",
			"acc_flashlight"
		};
	};
	class AssaultMediumSand
	{
		displayName = "Средний песочный";									// Name visible in the menu
		icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\corporal_gs.paa";				// Icon displayed next to the name
		role = "Assault";													// Optional, see CfgRoles

		// Loadout definition, uses same entries as CfgVehicles classes
		weapons[] = {
			"hgun_ACPC2_F",
			"arifle_MX_F"
		};
		magazines[] = {
			"9Rnd_45ACP_Mag",
			"30Rnd_65x39_caseless_mag",
			"9Rnd_45ACP_Mag",
			"9Rnd_45ACP_Mag",
			"9Rnd_45ACP_Mag",
			"HandGrenade",
			"HandGrenade",
			"30Rnd_65x39_caseless_mag",
			"30Rnd_65x39_caseless_mag",
			"30Rnd_65x39_caseless_mag",
			"30Rnd_65x39_caseless_mag",
			"30Rnd_65x39_caseless_mag",
			"HandGrenade",
			"HandGrenade",
			"SmokeShellBlue",
			"SmokeShellBlue",
			"SmokeShellBlue",
			"SmokeShellBlue"
		};
		items[] = {
			"FirstAidKit",
			"FirstAidKit",
		};
		linkedItems[] = {
			"V_PlateCarrier1_rgr",
			"H_HelmetB_light_sand",
			"optic_Hamr",
			"acc_flashlight",
			"ItemMap",
			"ItemCompass",
			"ItemWatch",
			"ItemRadio",
			"NVGoggles"
		};
		uniformClass = "U_B_CombatUniform_mcam";
		backpack = "B_AssaultPack_mcamo";
	};
	class AssaultMediumForest
	{
		displayName = "Средний лесной";									// Name visible in the menu
		icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\corporal_gs.paa";				// Icon displayed next to the name
		role = "Assault";													// Optional, see CfgRoles

		// Loadout definition, uses same entries as CfgVehicles classes
		weapons[] = {
			"hgun_ACPC2_F",
			"arifle_MX_Black_F"
		};
		magazines[] = {
			"9Rnd_45ACP_Mag",
			"30Rnd_65x39_caseless_black_mag",
			"9Rnd_45ACP_Mag",
			"9Rnd_45ACP_Mag",
			"9Rnd_45ACP_Mag",
			"HandGrenade",
			"HandGrenade",
			"30Rnd_65x39_caseless_black_mag",
			"30Rnd_65x39_caseless_black_mag",
			"30Rnd_65x39_caseless_black_mag",
			"30Rnd_65x39_caseless_black_mag",
			"30Rnd_65x39_caseless_black_mag",
			"HandGrenade",
			"HandGrenade",
			"SmokeShellBlue",
			"SmokeShellBlue",
			"SmokeShellBlue",
			"SmokeShellBlue"
		};
		items[] = {
			"FirstAidKit",
			"FirstAidKit",
		};
		linkedItems[] = {
			"V_PlateCarrier1_wdl",
			"H_HelmetB_plain_wdl",
			"optic_Hamr",
			"acc_flashlight",
			"ItemMap",
			"ItemCompass",
			"ItemWatch",
			"ItemRadio",
			"NVGoggles_INDEP",
			"G_Lowprofile"
		};
		uniformClass = "U_B_CombatUniform_mcam_wdl_f";
		backpack = "B_AssaultPack_wdl_F";
	};
	class AssaultMediumTropic
	{
		displayName = "Средний тропики";									// Name visible in the menu
		icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\corporal_gs.paa";				// Icon displayed next to the name
		role = "Assault";													// Optional, see CfgRoles

		// Loadout definition, uses same entries as CfgVehicles classes
		weapons[] = {
			"hgun_ACPC2_F",
			"arifle_MX_khk_F"
		};
		magazines[] = {
			"9Rnd_45ACP_Mag",
			"30Rnd_65x39_caseless_khaki_mag",
			"9Rnd_45ACP_Mag",
			"9Rnd_45ACP_Mag",
			"9Rnd_45ACP_Mag",
			"HandGrenade",
			"HandGrenade",
			"30Rnd_65x39_caseless_khaki_mag",
			"30Rnd_65x39_caseless_khaki_mag",
			"30Rnd_65x39_caseless_khaki_mag",
			"30Rnd_65x39_caseless_khaki_mag",
			"30Rnd_65x39_caseless_khaki_mag",
			"HandGrenade",
			"HandGrenade",
			"SmokeShellBlue",
			"SmokeShellBlue",
			"SmokeShellBlue",
			"SmokeShellBlue"
		};
		items[] = {
			"FirstAidKit",
			"FirstAidKit",
		};
		linkedItems[] = {
			"V_PlateCarrier1_tna_F",
			"H_HelmetB_tna_f",
			"optic_Hamr_khk_F",
			"acc_flashlight",
			"ItemMap",
			"ItemCompass",
			"ItemWatch",
			"ItemRadio",
			"NVGoggles_tna_F",
			"G_Lowprofile"
		};
		uniformClass = "U_B_T_Soldier_f";
		backpack = "B_AssaultPack_tna_F";
	};
	class AssaultMediumCTRGTropic
	{
		displayName = "Средний CTRG тропики";									// Name visible in the menu
		icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\corporal_gs.paa";				// Icon displayed next to the name
		role = "Ctrg";													// Optional, see CfgRoles

		// Loadout definition, uses same entries as CfgVehicles classes
		weapons[] = {
			"hgun_ACPC2_F",
			"arifle_MX_khk_F"
		};
		magazines[] = {
			"9Rnd_45ACP_Mag",
			"30Rnd_65x39_caseless_khaki_mag",
			"9Rnd_45ACP_Mag",
			"9Rnd_45ACP_Mag",
			"9Rnd_45ACP_Mag",
			"HandGrenade",
			"HandGrenade",
			"30Rnd_65x39_caseless_khaki_mag",
			"30Rnd_65x39_caseless_khaki_mag",
			"30Rnd_65x39_caseless_khaki_mag",
			"30Rnd_65x39_caseless_khaki_mag",
			"30Rnd_65x39_caseless_khaki_mag",
			"HandGrenade",
			"HandGrenade",
			"SmokeShellBlue",
			"SmokeShellBlue",
			"SmokeShellBlue",
			"SmokeShellBlue"
		};
		items[] = {
			"FirstAidKit",
			"FirstAidKit",
		};
		linkedItems[] = {
			"V_PlateCarrier1_tna_F",
			"H_HelmetB_TI_tna_F",
			"optic_ERCO_khk_F",
			"acc_flashlight",
			"ItemMap",
			"ItemCompass",
			"ItemWatch",
			"ItemRadio",
			"NVGoggles_tna_F",
			"G_Balaclava_TI_G_blk_F"
		};
		uniformClass = "U_B_CTRG_Soldier_F";
		backpack = "B_AssaultPack_tna_F";
	};
};