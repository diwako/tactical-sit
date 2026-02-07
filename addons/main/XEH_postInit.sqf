#include "script_component.hpp"

if !(hasInterface) exitWith {};

private _insertChildren = {
    private _actions = [];
    {
        private _action = [
            format [QGVAR(action#%1), _forEachIndex], getText (configFile >> "CfgWeapons" >> _x >> "displayName"), getText (configFile >> "CfgWeapons" >> _x >> "picture"),
            {
                params ["", "", "_params"];
                _params params ["_itemClass"];
                [_itemClass, _player] call FUNC(placeDown);
            }, {true}, nil, [_x]
        ] call ace_interact_menu_fnc_createAction;
        _actions pushBack [_action, [], _target];
    } forEach (GVAR(chairItems) select {[_player, _x] call ace_common_fnc_hasItem});
    _actions
};

private _mainAction = [
    QGVAR(mainAction), LLSTRING(chairs), QPATHTOF(ui\Land_CampingChair_V1_F_ca.paa), {
        true
    }, {
        (GVAR(chairItems) arrayIntersect ([_player] call ace_common_fnc_uniqueItems)) isNotEqualTo []
    }
    ,_insertChildren
] call ace_interact_menu_fnc_createAction;
["CAManBase", 1, ["ACE_SelfActions", "ACE_Equipment"], _mainAction, true] call ace_interact_menu_fnc_addActionToClass;
