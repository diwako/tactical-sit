#include "..\script_component.hpp"

params ["_object", "_player"];

if !(alive _object) exitWith {};
private _itemClass = getText (configOf _object >> QGVAR(itemClass));
if (_itemClass isEqualTo "") exitWith {};

deleteVehicle _object;

[_player, _itemClass, true, true] call CBA_fnc_addItem;

if (isNull objectParent _player && {
    (stance _player) isEqualTo "STAND"
}) then {
    [_player, "ainvpknlmstpslaywrfldnon_1"] call ace_common_fnc_doAnimation;
};
