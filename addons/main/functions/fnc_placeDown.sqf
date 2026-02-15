#include "..\script_component.hpp"

params ["_itemClass", "_player"];

private _classname = getText (configFile >> "CfgWeapons" >> _itemClass >> QGVAR(vehicleClass));

// Don't allow deploying if already deploying
if (_player getVariable ["ace_cargo_isDeploying", false]) exitWith {};

ace_cargo_selectedItem = _classname;

// Prevent the placing unit from running
[_player, "forceWalk", "ace_cargo", true] call ace_common_fnc_statusEffect_set;
[_player, "blockThrow", "ace_cargo", true] call ace_common_fnc_statusEffect_set;

// Create a local preview object
private _itemPreviewObject = createVehicleLocal [_classname, [0, 0, 0], [], 0, "CAN_COLLIDE"];

ace_cargo_itemPreviewObject = _itemPreviewObject;

// Prevent collisions with object
_itemPreviewObject disableCollisionWith _player;
_itemPreviewObject enableSimulation false;
_itemPreviewObject setMass 1e-12;

// Detect radius of zone where collision can damage the player
private _itemPreviewObjectRadius = 1 max ((boundingBoxReal [_itemPreviewObject, "FireGeometry"]) select 2);

// Add height offset of model
private _offset = ((_itemPreviewObject modelToWorldVisual [0, 0, 0]) select 2) - ((_player modelToWorldVisual [0, 0, 0]) select 2) + 1;

// Attach object
_itemPreviewObject attachTo [_player, [0, 1.5 * _itemPreviewObjectRadius, _offset]];

// PFH that runs while the deployment is in progress
ace_cargo_deployPFH = [{
    (_this select 0) params ["_player", "_item", "_itemPreviewObject"];

    if !(
        alive _itemPreviewObject &&
        {isNull objectParent _player} &&
        {([_player] call ace_common_fnc_isAwake)} &&
        {_item in ([_player] call ace_common_fnc_uniqueItems)}
    ) exitWith {
        _player call ace_cargo_fnc_deployCancel;
    };
}, 0.5, [_player, _itemClass, _itemPreviewObject]] call CBA_fnc_addPerFrameHandler;

// Add mouse button action and hint
[localize "STR_ACE_Cargo_unloadObject", localize "STR_DISP_CANCEL", localize "STR_ACE_Cargo_scrollAction"] call ace_interaction_fnc_showMouseHint;

_player setVariable ["ace_cargo_deploy", [
    _player, "DefaultAction",
    {ace_cargo_deployPFH != -1},
    {[_this select 1] call FUNC(deployConfirm)}
] call ace_common_fnc_addActionEventHandler];

_player setVariable ["ace_cargo_isDeploying", true, true];
