#include "..\script_component.hpp"

params ["_object"];

if (is3DEN || isNull _object || !hasInterface) exitWith {};

if (getText (configOf _object >> QGVAR(itemClass)) isEqualTo "") exitWith {};

private _pickUpAction = [
    QGVAR(pickUp),
    localize "str_cfg_markers_pickup",
    "",
    {
        [_target, _player] call FUNC(pickUp)
    }, {
        [_target, _player] call FUNC(canPickUp)
    }
] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions"], _pickUpAction] call ace_interact_menu_fnc_addActionToObject;
