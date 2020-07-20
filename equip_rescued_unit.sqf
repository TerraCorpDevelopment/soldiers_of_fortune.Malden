
private ["_unit"];

_unit = _this select 0;

_uniforms = [
	["U_B_HeliPilotCoveralls", "H_PilotHelmetHeli_B"],
	["U_B_PilotCoveralls", "H_PilotHelmetFighter_B"],
	["U_B_CTRG_Soldier_F", "H_HelmetB_TI_tna_F"],
	["U_B_CombatUniform_mcam_vest", "H_Beret_02"]
];

// "Remove existing items";
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

_uni = selectRandom _uniforms;
_unit forceAddUniform (_uni select 0);
_unit addHeadgear (_uni select 1);