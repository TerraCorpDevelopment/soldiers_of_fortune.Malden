//[] call compile preprocessFileLineNumbers "global_compile.sqf";

//Задачи (туториал)

/* Задача может иметь следующие состояния
"None" - скрыто
"Created" - создано
"Assigned" - назначено
"Succeeded" - выполнено успешно
"Failed" - провалено
"Canceled" - отменено
*/

//MainTask - убить Террафокса

//способы нахождения Террафокса

//Простая задача 1. Поиск документов

/*    работает
DOCTask = player createSimpleTask ["Добыть разведданные"];
DOCTask setSimpleTaskDescription ["Вашей приоритетной задачей, наряду с уничтожением прибрежной ПВО, является получение любых данных о позициях противника в регионе.", "Найти документы", "Документы"];
DOCTask setSimpleTaskDestination [4511.94,6797.25,0];
["DOCTask", "Doc"] call BIS_fnc_taskSetType;
DOCTask setTaskState "Assigned";

private _title_main = "Главная цель";
private _description_main = "Для победы в сценарии вашей команде необходимо найти местоположение кринимального босса, штурмбаннфюрера Террафокса, и привести в исполнение смертный приговор";
private _waypoint_main = "Устранить штурмбаннфюрера Террафокса";

private _mainTask = [sof_group, "MainTask", [_description_main, _title_main, _waypoint_main], [], true] call BIS_fnc_taskCreate;
["MainTask", "kill"] call BIS_fnc_taskSetType;
["MainTask", "Created"] call BIS_fnc_taskSetState;

private _title_un = "Добыть снаряжение";
private _description_un = "Как солдат без экипировки может считать себя хорошим солдатом? На метке Подводный мир расположена необычная структура. Найдите в ней терминал, который откроет доступ к юго-восточной башне на базе отряда. Поверьте, это вам пригодится в штурме базы Террафокса.";
private _waypoint_un = "Добыть снаряжение";

private _unTask = [sof_group, "UniformTask", [_description_un, _title_un, _waypoint_un], [], true] call BIS_fnc_taskCreate;
["UniformTask", "Doc"] call BIS_fnc_taskSetType;
["UniformTask", "Created"] call BIS_fnc_taskSetState;
*/

//("DOCTask" call BIS_fnc_taskState) == "Succeeded" and ("DE1Task" call BIS_fnc_taskState) == "Succeeded" and ("DE2Task" call BIS_fnc_taskState) == "Succeeded"

#include "spawn_inventory_init.sqf";

0 spawn {
	waitUntil {player == player};
	player enableStamina false;
	player addEventHandler ["Respawn", {(_this select 0) enableStamina false}];
};