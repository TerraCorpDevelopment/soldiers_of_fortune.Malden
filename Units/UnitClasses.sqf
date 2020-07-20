arr_MilitaryTraffic_EnemyVehicleClasses = [

	//blufor tanoa
	"B_T_APC_Wheeled_01_cannon_F",
	"B_T_APC_Tracked_01_CRV_F",
	"B_T_APC_Tracked_01_rcws_F",
	"B_T_AFV_Wheeled_01_cannon_F",
	"B_T_AFV_Wheeled_01_up_cannon_F",
	"B_T_MRAP_01_gmg_F",
	"B_T_MRAP_01_hmg_F",
	"B_T_LSV_01_AT_F",
	"B_T_LSV_01_armed_F",
	"B_T_APC_Tracked_01_AA_F",
	"B_T_MBT_01_cannon_F",
	"B_T_MBT_01_TUSK_F",

	//opfor ghex
	"O_T_APC_Tracked_02_cannon_ghex_F",
	"O_T_APC_Wheeled_02_rcws_v2_ghex_F",
	"O_T_MRAP_02_gmg_ghex_F",
	"O_T_MRAP_02_hmg_ghex_F",
	"O_T_LSV_02_AT_F",
	"O_T_LSV_02_armed_F",
	"O_T_APC_Tracked_02_AA_ghex_F",
	"O_T_MBT_02_cannon_ghex_F",
	"O_T_MBT_04_command_F",

	//indep
	"I_APC_Wheeled_03_cannon_F",
	"I_APC_tracked_03_cannon_F",
	"I_LT_01_AA_F",
	"I_LT_01_AT_F",
	"I_MBT_03_cannon_F",
	"I_MRAP_03_gmg_F",
	"I_MRAP_03_hmg_F",
	"I_LT_01_cannon_F",
	"I_G_Offroad_01_AT_F",
	"I_C_Offroad_02_LMG_F",
	"I_C_Offroad_02_AT_F",

	//opfor hex
	"O_MBT_04_command_F",
	"O_MBT_02_cannon_F",
	"O_APC_Tracked_02_AA_F",
	"O_APC_Tracked_02_cannon_F",
	"O_APC_Wheeled_02_rcws_v2_F",
	"O_MRAP_02_gmg_F",
	"O_MRAP_02_hmg_F",
	"O_LSV_02_AT_F",
	"O_LSV_02_armed_F",

	//blufor sand
	"B_APC_Wheeled_01_cannon_F",
	"B_APC_Tracked_01_CRV_F",
	"B_APC_Tracked_01_rcws_F",
	"B_AFV_Wheeled_01_cannon_F",
	"B_AFV_Wheeled_01_up_cannon_F",
	"B_MRAP_01_gmg_F",
	"B_MRAP_01_hmg_F",
	"B_LSV_01_AT_F",
	"B_LSV_01_armed_F",
	"B_APC_Tracked_01_AA_F",
	"B_MBT_01_cannon_F",
	"B_MBT_01_TUSK_F"
];

arr_InfantryTypes = [
	"I_E_Soldier_GL_F",
	"I_E_Soldier_TL_F",
	"I_E_Soldier_SL_F",
	"I_E_Medic_F",
	"I_ghillie_lsh_F",
	"I_E_Soldier_Repair_F",
	"I_E_Soldier_Pathfinder_F",
	"I_E_Soldier_MP_F",
	"I_E_Soldier_A_F",
	"I_E_Soldier_AAR_F",
	"I_E_Soldier_AR_F",
	"I_E_RadioOperator_F",
	"I_ghillie_sard_F",
	"I_E_Soldier_AA_F",
	"I_E_Soldier_Exp_F",
	"I_E_soldier_M_F",
	"I_E_Soldier_CBRN_F",
	"I_E_soldier_Mine_F",
	"I_E_Soldier_F",
	"I_ghillie_ard_F",
	"I_E_Soldier_LAT_F",
	"I_E_Soldier_LAT2_F",
	"I_E_Soldier_lite_F"
];

arr_RoadBlock_MannedVehicleTypes = [
	"B_MRAP_01_gmg_F",
	"B_MRAP_01_hmg_F",
	"O_MRAP_02_gmg_F",
	"O_MRAP_02_hmg_F",
	"O_LSV_02_AT_F",
	"O_LSV_02_armed_F",
	"I_MRAP_03_gmg_F",
	"I_MRAP_03_hmg_F",
	"O_T_MRAP_02_gmg_ghex_F",
	"O_T_MRAP_02_hmg_ghex_F",
	"O_T_LSV_02_AT_F",
	"O_T_LSV_02_armed_F",
	"B_T_MRAP_01_gmg_F",
	"B_T_MRAP_01_hmg_F",
	"B_T_LSV_01_AT_F",
	"B_T_LSV_01_armed_F"
];

arr_StaticWeaponTypes = [
	"I_HMG_01_high_F",
	"I_HMG_02_high_F",
	"I_GMG_01_high_F",
	"I_static_AT_F"
];

//////////////////////////////////////////////////////////////////
// fn_AmbientInfantry
// only INS is used
//////////////////////////////////////////////////////////////////
arr_AmbientInfantry = arr_InfantryTypes;
//a3e_arr_AmbientInfantry_Inf_GUE = a3e_arr_Escape_InfantryTypes_Ind;

/*
//////////////////////////////////////////////////////////////////
// fn_InitGuardedLocations
// Units spawned to guard ammo camps and com centers
// Only INS used
//////////////////////////////////////////////////////////////////
a3e_arr_InitGuardedLocations_Inf_INS = a3e_arr_Escape_InfantryTypes;
a3e_arr_InitGuardedLocations_Inf_GUE = a3e_arr_Escape_InfantryTypes_Ind;
*/

//////////////////////////////////////////////////////////////////
// fn_roadblocks
// units spawned on roadblocks
// Only INS used
// vehicle arrays not used, uses a3e_arr_Escape_RoadBlock_MannedVehicleTypes and a3e_arr_Escape_RoadBlock_MannedVehicleTypes_Ind instead
//////////////////////////////////////////////////////////////////
arr_roadblocks_Inf = arr_InfantryTypes;
//a3e_arr_roadblocks_Inf_GUE = a3e_arr_Escape_InfantryTypes_Ind;

arr_roadblocks_Veh = arr_RoadBlock_MannedVehicleTypes;
//arr_roadblocks_Veh_GUE = a3e_arr_Escape_RoadBlock_MannedVehicleTypes_Ind;

arr_CASplane = ["I_Plane_Fighter_04_F"];

arr_Scopes = ["Item_optic_MRCO", "Item_optic_AMS"];
arr_NightScopes = ["Item_optic_NVS"];
arr_Bipods = ["Item_bipod_03_F_blk"];