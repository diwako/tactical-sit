#include "script_component.hpp"
class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {
            QGVAR(Land_CampingChair_V1_F),
            QGVAR(Land_CampingChair_V2_F),
            QGVAR(Land_CampingChair_V2_white_F),
            QGVAR(Land_ChairPlastic_F),
            QGVAR(Land_ArmChair_01_F)
        };
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "cba_xeh",
            "ace_sitting",
            "ace_interaction",
            "ace_cargo"
        };
        author = "diwako";
        authorUrl = "https://github.com/diwako/tactical-sit";
        VERSION_CONFIG;
    };
};

#include "cfgEventHandlers.hpp"
#include "cfgVehicles.hpp"
#include "cfgWeapons.hpp"
