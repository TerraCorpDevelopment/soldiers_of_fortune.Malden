g_compile = compileFinal
('
	private ["_path", "_code"];
	_path = "";
	switch (toUpper typeName _this) do {
		case "STRING": {
			_path = _this;
		};
		case "ARRAY": {
			_path = format["%1\%2", _this select 0, _this select 1];
		};
		case "CODE": {
			_code = toArray str _this;
			_code set [0, (toArray " ") select 0];
			_code set [count _code - 1, (toArray " ") select 0];
		};
	};

	if (isNil "_code") then {
		compileFinal preProcessFileLineNumbers _path
	} else {
		compileFinal toString _code
	};
');

// example: cargoToPairs = [_serverFunc, "cargoToPairs.sqf"] call g_compile;

create_side_missions = "create_side_missions.sqf" call g_compile;
spawn_mission_units = "spawn_mission_units.sqf" call g_compile;
weapon_box_filling = "weapon_box_filling.sqf" call g_compile;
launcher_box_filling = "launcher_box_filling.sqf" call g_compile;
outpost_1 = "outpost_1.sqf" call g_compile;
outpost_2 = "outpost_2.sqf" call g_compile;
outpost_3 = "outpost_3.sqf" call g_compile;
equip_rescued_unit = "equip_rescued_unit.sqf" call g_compile;
aa_spawn = "aa_spawn.sqf" call g_compile;
populate_vehicles = "populate_vehicles.sqf" call g_compile;
post_init = "init_enemy_groups_and_traffic.sqf" call g_compile;
create_boss_vehicle = "create_boss_vehicle.sqf" call g_compile;
next_waypoint = "next_waypoint.sqf" call g_compile;
create_road_triggers = "create_road_triggers.sqf" call g_compile;

_path_drn = "functions\DRN";
fnc_AmbientInfantry = _path_drn + "\fn_AmbientInfantry.sqf" call g_compile;
drn_fnc_MoveInfantryGroup = _path_drn + "\fn_MoveInfantryGroup.sqf" call g_compile; 
drn_fnc_MonitorEmptyGroups = _path_drn + "\fn_MonitorEmptyGroups.sqf" call g_compile;
drn_fnc_PopulateLocation = _path_drn + "\fn_PopulateLocation.sqf" call g_compile;
drn_fnc_DepopulateLocation = _path_drn + "\fn_DepopulateLocation.sqf" call g_compile;
drn_fnc_InitGuardedLocations = _path_drn + "\fn_InitGuardedLocations.sqf" call g_compile;
drn_fnc_DynamicWeatherEffects = _path_drn + "\fn_DynamicWeatherEffects.sqf" call g_compile;
drn_fnc_InsertionTruck = _path_drn + "\fn_InsertionTruck.sqf" call g_compile;
drn_fnc_MilitaryTraffic = _path_drn + "\fn_MilitaryTraffic.sqf" call g_compile;
drn_fnc_MoveVehicle = _path_drn + "\fn_MoveVehicle.sqf" call g_compile;
drn_fnc_MotorizedSearchGroup = _path_drn + "\fn_MotorizedSearchGroup.sqf" call g_compile;	
drn_fnc_SearchChopper = _path_drn + "\fn_SearchChopper.sqf" call g_compile;
drn_fnc_SearchGroup = _path_drn + "\fn_SearchGroup.sqf" call g_compile;
drn_fnc_InitVillageMarkers = _path_drn + "\fn_InitVillageMarkers.sqf" call g_compile;
drn_fnc_PopulateVillage = _path_drn + "\fn_PopulateVillage.sqf" call g_compile;
drn_fnc_DepopulateVillage = _path_drn + "\fn_DepopulateVillage.sqf" call g_compile;
drn_fnc_InitVillagePatrols = _path_drn + "\fn_InitVillagePatrols.sqf" call g_compile;
drn_fnc_InitAquaticPatrols = _path_drn + "\fn_InitAquaticPatrols.sqf" call g_compile;
drn_fnc_PopulateAquaticPatrol = _path_drn + "\fn_PopulateAquaticPatrol.sqf" call g_compile;
drn_fnc_DepopulateAquaticPatrol = _path_drn + "\fn_DepopulateAquaticPatrol.sqf" call g_compile;
drn_fnc_InitAquaticPatrolMarkers = _path_drn + "\fn_InitAquaticPatrolMarkers.sqf" call g_compile;
drn_fnc_GarrisonUnits = _path_drn + "\fn_GarrisonUnits.sqf" call g_compile;
drn_fnc_RoadBlocks = _path_drn + "\fn_RoadBlocks.sqf" call g_compile;



//class Common
_path_common = "functions\Common";
fnc_RandomMarkerPos = _path_common + "\fn_RandomMarkerPos.sqf" call g_compile;
fnc_GetSideColor = _path_common + "\fn_GetSideColor.sqf" call g_compile;
fnc_RandomSpawnPos = _path_common + "\fn_RandomSpawnPos.sqf" call g_compile;
fnc_KeyDown = _path_common + "\fn_KeyDown.sqf" call g_compile;
fnc_RandomPatrolPos = _path_common + "\fn_RandomPatrolPos.sqf" call g_compile;
fnc_WriteParamBriefing = _path_common + "\fn_WriteParamBriefing.sqf" call g_compile;
fnc_findFlatArea = _path_common + "\fn_findFlatArea.sqf" call g_compile;
fnc_findFlatAreaNear = _path_common + "\fn_findFlatAreaNear.sqf" call g_compile;
fnc_RotatePosition = _path_common + "\fn_RotatePosition.sqf" call g_compile;
fnc_GetEnemyCount = _path_common + "\fn_GetEnemyCount.sqf" call g_compile;
fnc_paramWeather = _path_common + "\fn_paramWeather.sqf" call g_compile;
fnc_paramDaytime = _path_common + "\fn_paramDaytime.sqf" call g_compile;
fnc_systemChat = _path_common + "\fn_systemChat.sqf" call g_compile;
fnc_groupChat = _path_common + "\fn_groupChat.sqf" call g_compile;
fnc_addUserActions = _path_common + "\fn_addUserActions.sqf" call g_compile;
fnc_Hijack = _path_common + "\fn_Hijack.sqf" call g_compile;
fnc_HealAtBuilding = _path_common + "\fn_HealAtBuilding.sqf" call g_compile;
fnc_GetPlayers = _path_common + "\fn_GetPlayers.sqf" call g_compile;
fnc_GetRandomPlayer = _path_common + "\fn_GetRandomPlayer.sqf" call g_compile;
fnc_GetPlayerGroup = _path_common + "\fn_GetPlayerGroup.sqf" call g_compile;
//fnc_ = _path_common + "\fn_  Briefing " call g_compile;
fnc_cleanupTerrain = _path_common + "\fn_cleanupTerrain.sqf" call g_compile;
fnc_handleRating = _path_common + "\fn_handleRating.sqf" call g_compile;
fnc_handleScore = _path_common + "\fn_handleScore.sqf" call g_compile;
fnc_CheckCampDistance = _path_common + "\fn_CheckCampDistance.sqf" call g_compile;
fnc_FireSmokeFX = _path_common + "\fn_FireSmokeFX.sqf" call g_compile;
fnc_RoadBlock = _path_common + "\fn_RoadBlock.sqf" call g_compile;


_path_ai = "functions\AI";
// раздел AI
fnc_RandomPatrolRoute = _path_ai + "\fn_RandomPatrolRoute.sqf" call g_compile;
fnc_EngageReportedGroup = _path_ai + "\fn_EngageReportedGroup.sqf" call g_compile;
fnc_InCombat = _path_ai + "\fn_InCombat.sqf" call g_compile;
fnc_Move = _path_ai + "\fn_Move.sqf" call g_compile;
fnc_Search = _path_ai + "\fn_Search.sqf" call g_compile;
fnc_SearchDrone = _path_ai + "\fn_SearchDrone.sqf" call g_compile;
fnc_LeafletDrone = _path_ai + "\fn_LeafletDrone.sqf" call g_compile;
fnc_Patrol = _path_ai + "\fn_Patrol.sqf" call g_compile;
fnc_Flee = _path_ai + "\fn_Flee.sqf" call g_compile;
fnc_FireArtillery = _path_ai + "\fn_FireArtillery.sqf" call g_compile;
fnc_CallCAS = _path_ai + "\fn_CallCAS.sqf" call g_compile;
fnc_OrderSearch = _path_ai + "\fn_OrderSearch.sqf" call g_compile;
fnc_SetTaskState = _path_ai + "\fn_SetTaskState.sqf" call g_compile;
fnc_GetTaskState = _path_ai + "\fn_GetTaskState.sqf" call g_compile;
fnc_AquaticPatrol = _path_ai + "\fn_AquaticPatrol.sqf" call g_compile;
fnc_AddStaticGunner = _path_ai + "\fn_AddStaticGunner.sqf" call g_compile;
fnc_ExtractionChopper = _path_ai + "\fn_ExtractionChopper.sqf" call g_compile;