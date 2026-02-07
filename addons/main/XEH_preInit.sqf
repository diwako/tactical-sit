#include "script_component.hpp"
ADDON = false;

#include "XEH_PREP.hpp"

GVAR(chairItems) = (format ["getText (_x >> '%1') isNotEqualto ''", QGVAR(vehicleClass)]) configClasses (configFile >> "CfgWeapons") apply {configName _x};

ADDON = true;
