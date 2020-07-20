

//Задачи

/* Задача может иметь следующие состояния
"None" - скрыто
"Created" - создано
"Assigned" - назначено
"Succeeded" - выполнено успешно
"Failed" - провалено
"Canceled" - отменено
*/

//Задача 1. Поиск документов

/*    работает
DOCTask = player createSimpleTask ["Добыть разведданные"];
DOCTask setSimpleTaskDescription ["Вашей приоритетной задачей, наряду с уничтожением прибрежной ПВО, является получение любых данных о позициях противника в регионе.", "Найти документы", "Документы"];
DOCTask setSimpleTaskDestination [4511.94,6797.25,0];
["DOCTask", "Doc"] call BIS_fnc_taskSetType;
DOCTask setTaskState "Assigned";
*/
/*
//Задача 1. Поиск документов
private _title_doc = "Добыть разведданные";
private _description_doc = "Вашей приоритетной задачей, наряду с уничтожением прибрежной ПВО, является получение любых данных о позициях ЧДКЗ в регионе.";
private _waypoint_doc = "Найти документы";

private _docTask = [sof_group, "DOCTask", [_description_doc, _title_doc, _waypoint_doc], [4494.41,6799.81,0], true] call BIS_fnc_taskCreate;
["DOCTask", "doc"] call BIS_fnc_taskSetType;
["DOCTask", "Created"] call BIS_fnc_taskSetState;

//Задача 2. Диверсия ПВО
private _title_de1 = "Устроить диверсию";
private _description_de1 = "На спутниковых снимках видны средства ПВО. Тип установок не определён. Уничтожьте зенитные установки противника, чтобы облегчить наше наступление.";
private _waypoint_de1 = "Уничтожить ПВО";

private _de1Task = [sof_group, "DE1Task", [_description_de1, _title_de1, _waypoint_de1], [4498.25,6814.67,0.233177], true] call BIS_fnc_taskCreate;
["DE1Task", "destroy"] call BIS_fnc_taskSetType;
["DE1Task", "Created"] call BIS_fnc_taskSetState;

//Задача 3. Обрезать связь
private _title_de2 = "Вне зоны доступа";
private _description_de2 = "Было бы неплохо уничтожить также систему связи. ЧДКЗ не сможет ответить на диверсию, если не узнает о ней. Взорвите их спутниковую антенну.";
private _waypoint_de2 = "Обрубить связь";

private _de2Task = [sof_group, "DE2Task", [_description_de2, _title_de2, _waypoint_de2], [4512.99,6803.92,0], true] call BIS_fnc_taskCreate;
["DE2Task", "destroy"] call BIS_fnc_taskSetType;
["DE2Task", "Created"] call BIS_fnc_taskSetState;

private _title_esc = "Эвакуация";
private _description_esc = "Покиньте район боевых действий";
private _waypoint_esc = "Вернуться к лодке";
private _esc_boat_pos = getPos esc_boat;

_escTask = [sof_group, "ESCTask", [_description_esc, _title_esc, _waypoint_esc], _esc_boat_pos, true];
//["ESCTask", "escape"] call BIS_fnc_taskSetType;

//("DOCTask" call BIS_fnc_taskState) == "Succeeded" and ("DE1Task" call BIS_fnc_taskState) == "Succeeded" and ("DE2Task" call BIS_fnc_taskState) == "Succeeded"
*/