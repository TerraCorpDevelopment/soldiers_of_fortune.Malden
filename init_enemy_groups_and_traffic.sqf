private ["_minEnemiesPerGroup", "_maxEnemiesPerGroup"];

_enemyFrequency = 2;
_enemySpawnDistance = 300;
_groupsPerSqkm = 1.2;
_enemyMinSkill = 0.2;
_enemyMaxSkill = 0.7;
_villagePatrolSpawnArea = 10000;

// Initialize ambient infantry groups
_players_group = call fnc_GetPlayerGroup;
_fnc_OnSpawnAmbientInfantryUnit = {
	//_this call drn_fnc_Escape_OnSpawnGeneralSoldierUnit;
};
	
_fnc_OnSpawnAmbientInfantryGroup = {
	private ["_unit", "_enemyUnit", "_i"];
	private ["_scriptHandle"];

	_unit = units _this select 0;
	
	while {!(isNull _unit)} do {
		_enemyUnit = _unit findNearestEnemy (getPos _unit);
		if (!(isNull _enemyUnit)) exitWith {
			
			for [{_i = (count waypoints _this) - 1}, {_i >= 0}, {_i = _i - 1}] do {
				deleteWaypoint [_this, _i];
			};
				
			_scriptHandle = [_this, drn_searchAreaMarkerName, (getPos _enemyUnit)] spawn drn_fnc_searchGroup;
			_this setVariable ["drn_scriptHandle", _scriptHandle];
		};
			
		sleep 5;
	};
};
	
private ["_infantryTypes"];
private ["_infantryGroupsCount", "_radius", "_groupsPerSqkm"];

switch (_enemyFrequency) do
{
	case 1: // 1-2 players
	{
		_minEnemiesPerGroup = 2;
		_maxEnemiesPerGroup = 4;
		_groupsPerSqkm = 1;
	};
	case 2: // 3-5 players
	{
		_minEnemiesPerGroup = 2;
		_maxEnemiesPerGroup = 8;
		_groupsPerSqkm = 1.2;
	};
	default // 6-8 players
	{
		_minEnemiesPerGroup = 2;
		_maxEnemiesPerGroup = 12;
		_groupsPerSqkm = 1.4;
	};
};

_radius = (_enemySpawnDistance + 500) / 1000;
_infantryGroupsCount = 20;//round (_groupsPerSqkm * _radius * _radius * 3.141592);
	
[_players_group, resistance, arr_InfantryTypes, _infantryGroupsCount, _enemySpawnDistance + 200, _enemySpawnDistance + 500, _minEnemiesPerGroup, _maxEnemiesPerGroup, _enemyMinSkill, _enemyMaxSkill, 750, _fnc_OnSpawnAmbientInfantryUnit, _fnc_OnSpawnAmbientInfantryGroup] spawn fnc_AmbientInfantry;


//Village Patrols
switch (_enemyFrequency) do
{
	case 1: // 1-2 players
    {
	    _minEnemiesPerGroup = 2;
	    _maxEnemiesPerGroup = 4;
    };
    case 2: // 3-5 players
    {
        _minEnemiesPerGroup = 3;
        _maxEnemiesPerGroup = 6;
    };
    default // 6-8 players
    {
        _minEnemiesPerGroup = 4;
        _maxEnemiesPerGroup = 8;
    };
};
        
_fnc_OnSpawnGroup = {
    {
        //_x call drn_fnc_Escape_OnSpawnGeneralSoldierUnit;
    } foreach units _this;
};
        
[_players_group, "drn_villageMarker_", resistance, "INS", 5, _minEnemiesPerGroup, _maxEnemiesPerGroup, _enemyMinSkill, _enemyMaxSkill, _enemySpawnDistance, _villagePatrolSpawnArea] call drn_fnc_InitVillagePatrols;

    
// Initialize the Escape military and civilian traffic
private ["_vehiclesPerSqkm", "_radius", "_vehiclesCount", "_fnc_onSpawnCivilian", "_vehicleClasses"];
	
// Civilian traffic
	
switch (_enemyFrequency) do
{
	case 1: // 1-3 players
	{
		_vehiclesPerSqkm = 1.6;
	};
	case 2: // 4-6 players
	{
		_vehiclesPerSqkm = 1.4;
	};
	default // 7-8 players
	{
		_vehiclesPerSqkm = 1.2;
	};
};
	
_radius = _enemySpawnDistance + 500;
_vehiclesCount = round (_vehiclesPerSqkm * (_radius / 1000) * (_radius / 1000) * 3.141592);
/*	
_fnc_onSpawnCivilian = {
	private ["_vehicle", "_crew"];
	_vehicle = _this select 0;
	_crew = _this select 1;
	//_vehiclesGroup = _result select 2;
	
	{
		{
			_x removeWeapon "ItemMap";
		} foreach _crew; // foreach crew
			
		_x addeventhandler ["killed",{
			if ((_this select 1) in (call A3E_fnc_GetPlayers)) then {
				if(isNil("a3e_var_Escape_SearchLeader_civilianReporting")) then {
					a3e_var_Escape_SearchLeader_civilianReporting = true;
					publicVariable "a3e_var_Escape_SearchLeader_civilianReporting";
					(_this select 1) addScore -5;
				} else {
					(_this select 1) addScore -1;
				};
				(_this select 1) addRating 1000; //Even out the minus score by killing civilians
				[name (_this select 1) + " has killed a civilian."] call drn_fnc_CL_ShowCommandTextAllClients;
			}
		}];
	} foreach _crew;
	
	if (random 100 < 20) then {
		private ["_weaponItem"];
		
		_weaponItem = selectRandom a3e_arr_CivilianCarWeapons;
			
		_vehicle addWeaponCargoGlobal [_weaponItem select 0, 1];
		_vehicle addMagazineCargoGlobal [_weaponItem select 1, _weaponItem select 2];
	};
};
	
[civilian, [], _vehiclesCount, _enemySpawnDistance, _radius, 0.5, 0.5, _fnc_onSpawnCivilian, A3E_Debug] spawn drn_fnc_MilitaryTraffic;
*/
	
// Enemy military traffic
	
switch (_enemyFrequency) do
{
	case 1: // 1-3 players
	{
		_vehiclesPerSqkm = 1.6;
	};
	case 2: // 4-6 players
	{
		_vehiclesPerSqkm = 1.8;
	};
	default // 7-8 players
	{
		_vehiclesPerSqkm = 2;
	};
};
	
_radius = _enemySpawnDistance + 500;
_vehiclesCount = round (_vehiclesPerSqkm * (_radius / 1000) * (_radius / 1000) * 3.141592);
[_players_group,_vehiclesCount,_enemySpawnDistance,_radius,_enemyMinSkill, _enemyMaxSkill] spawn {
	params["_players_group","_vehiclesCount","_enemySpawnDistance","_radius","_enemyMinSkill", "_enemyMaxSkill"];
	sleep 10;//300;
//	[A3E_VAR_Side_Opfor, [], _vehiclesCount/2, _enemySpawnDistance, _radius, _enemyMinSkill, _enemyMaxSkill, drn_fnc_Escape_TrafficSearch, A3E_Debug] spawn drn_fnc_MilitaryTraffic;
	[resistance, [], _vehiclesCount/2, _enemySpawnDistance, _radius, _enemyMinSkill, _enemyMaxSkill] spawn drn_fnc_MilitaryTraffic;
};

private ["_areaPerRoadBlock", "_maxEnemySpawnDistanceKm", "_roadBlockCount"];
private ["_fnc_OnSpawnInfantryGroup", "_fnc_OnSpawnMannedVehicle"];
	
_fnc_OnSpawnInfantryGroup = {};//{{_x call drn_fnc_Escape_OnSpawnGeneralSoldierUnit;} foreach units _this;};
_fnc_OnSpawnMannedVehicle = {};//{{_x call drn_fnc_Escape_OnSpawnGeneralSoldierUnit;} foreach (_this select 1);};
	
switch (_enemyFrequency) do {
	case 1: {
		_areaPerRoadBlock = 4.19;
	};
	case 2: {
		_areaPerRoadBlock = 2;
	};
	default {
		_areaPerRoadBlock = 2.5;
	};
};
	
_maxEnemySpawnDistanceKm = (_enemySpawnDistance + 500) / 1000;
_roadBlockCount = round ((_maxEnemySpawnDistanceKm * _maxEnemySpawnDistanceKm * 3.141592) / _areaPerRoadBlock);
	
if (_roadBlockCount < 1) then {
	_roadBlockCount = 1;
};

[_players_group, resistance, arr_InfantryTypes, arr_RoadBlock_MannedVehicleTypes, _roadBlockCount, _enemySpawnDistance, _enemySpawnDistance + 500, 750, 300, _fnc_OnSpawnInfantryGroup, _fnc_OnSpawnMannedVehicle] spawn drn_fnc_RoadBlocks;