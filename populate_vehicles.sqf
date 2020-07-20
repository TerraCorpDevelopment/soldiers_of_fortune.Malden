private ["_vehicle", "_side", "_unitTypes", "_enemyFrequency"];
private ["_group", "_maxSoldiersCount", "_soldierCount", "_continue", "_unitType", "_insurgentSoldier"];
    
_vehicle = _this select 0;
_side = _this select 1;
_unitTypes = _this select 2;
//if (count _this > 3) then { _enemyFrequency = _this select 3; } else { _enemyFrequency = 3; };

_enemyFrequency = 2;

_maxSoldiersCount = _enemyFrequency + 3 + floor random (4 * _enemyFrequency);
_group = createGroup _side;

_soldierCount = 0;
    
// Driver
_continue = true;
while {_continue && (_soldierCount <= _maxSoldiersCount)} do {
    _unitType = selectRandom _unitTypes;
    _insurgentSoldier = _group createUnit [_unitType, [0,0,0], [], 0, "FORM"];
        
    _insurgentSoldier setRank "LIEUTENANT";
    _insurgentSoldier moveInDriver _vehicle;
        
    if (vehicle _insurgentSoldier != _insurgentSoldier) then {
        _insurgentSoldier assignAsDriver _vehicle;
        _soldierCount = _soldierCount + 1;
    }
    else {
        deleteVehicle _insurgentSoldier;
        _continue = false;
    };
};
    
// Gunner
_continue = true;
while {_continue && _soldierCount <= _maxSoldiersCount} do {
    _unitType = selectRandom _unitTypes;
    _insurgentSoldier = _group createUnit [_unitType, [0,0,0], [], 0, "FORM"];
        
    _insurgentSoldier setRank "LIEUTENANT";
    _insurgentSoldier moveInGunner _vehicle;
        
    if (vehicle _insurgentSoldier != _insurgentSoldier) then {
        _insurgentSoldier assignAsGunner _vehicle;
        _soldierCount = _soldierCount + 1;
    }
    else {
        deleteVehicle _insurgentSoldier;
        _continue = false;
    };
};
    
// Commander
_continue = true;
while {_continue && _soldierCount <= _maxSoldiersCount} do {
    _unitType = selectRandom _unitTypes;
    _insurgentSoldier = _group createUnit [_unitType, [0,0,0], [], 0, "FORM"];
        
    _insurgentSoldier setRank "LIEUTENANT";
    _insurgentSoldier moveInCommander _vehicle;
        
    if (vehicle _insurgentSoldier != _insurgentSoldier) then {
        _insurgentSoldier assignAsCommander _vehicle;
        _soldierCount = _soldierCount + 1;
    }
    else {
        deleteVehicle _insurgentSoldier;
        _continue = false;
    };
};
    
// Cargo
_continue = true;
while {_continue && _soldierCount <= _maxSoldiersCount} do {
    _unitType = selectRandom _unitTypes;
    _insurgentSoldier = _group createUnit [_unitType, [0,0,0], [], 0, "FORM"];
        
    _insurgentSoldier setRank "LIEUTENANT";
    _insurgentSoldier moveInCargo _vehicle;
        
    if (vehicle _insurgentSoldier != _insurgentSoldier) then {
        _insurgentSoldier assignAsCargo _vehicle;
        _soldierCount = _soldierCount + 1;
    }
    else {
        deleteVehicle _insurgentSoldier;
        _continue = false;
    };
};
    
_group;