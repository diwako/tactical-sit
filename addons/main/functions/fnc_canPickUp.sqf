#include "..\script_component.hpp"

params ["_object", "_player"];

if !(
    alive _object
    && {isNull objectParent _object || {!isNull getCorpse _object}}
) exitWith {false};

if !([_player, _object, []] call ace_common_fnc_canInteractWith) exitWith {false};

true
