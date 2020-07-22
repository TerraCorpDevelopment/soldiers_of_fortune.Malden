[] call compile preprocessFileLineNumbers "global_compile.sqf";

private _title_main = "Главная цель";
private _description_main = "Для победы в сценарии вашей команде необходимо найти местоположение кринимального босса, штурмбаннфюрера Террафокса, и привести в исполнение смертный приговор. Но это будет непросто. Террафокс постоянно перемещается по острову на личном автомобиле. Тип машины - неизвестен. Вы будете получать периодические доклады разведки, когда Террафокс будет проезжать крупные населенные пункты";
private _waypoint_main = "Устранить штурмбаннфюрера Террафокса";

private _mainTask = [sof_group, "MainTask", [_description_main, _title_main, _waypoint_main], [], true] call BIS_fnc_taskCreate;
["MainTask", "assassination"] call BIS_fnc_taskSetType;
["MainTask", "Created"] call BIS_fnc_taskSetState;

private _title_un = "Добыть снаряжение";
private _description_un = "Как солдат без экипировки может считать себя хорошим солдатом? На метке Подводный мир расположена необычная структура. Найдите в ней терминал, который откроет доступ к юго-восточной башне на базе отряда. Поверьте, это вам пригодится в штурме базы Террафокса.";
private _waypoint_un = "Добыть снаряжение";

private _unTask = [sof_group, "UniformTask", [_description_un, _title_un, _waypoint_un], [], true] call BIS_fnc_taskCreate;
["UniformTask", "Doc"] call BIS_fnc_taskSetType;
["UniformTask", "Created"] call BIS_fnc_taskSetState;


#include "Units\UnitClasses.sqf";
#include "Scripts\Functions.sqf";
[] call aa_spawn;
call create_boss_vehicle;
call compile preprocessFileLineNumbers "Scripts\DRN\CommonLib\CommonLib.sqf";
call post_init;
[] call create_side_missions;