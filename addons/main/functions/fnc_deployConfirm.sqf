#include "..\script_component.hpp"
if (ace_cargo_deployPFH == -1) exitWith {};

params ["_unit"];

// Delete placement dummy and unload real item from cargo at dummy position
if (!isNull ace_cargo_itemPreviewObject) then {
    private _position = getPosWorld ace_cargo_itemPreviewObject;
    private _direction = getDir ace_cargo_itemPreviewObject;
    private _vehicle = createVehicle [typeOf ace_cargo_itemPreviewObject, [0, 0, 0], [], 0, "CAN_COLLIDE"];
    _vehicle setPosWorld _position;
    _vehicle setDir _direction;

    private _itemClass = getText (configOf ace_cargo_itemPreviewObject >> QGVAR(itemClass));
    [_unit, _itemClass] call CBA_fnc_removeItem
};

// Cleanup EHs and preview object
_unit call ace_cargo_fnc_deployCancel;
