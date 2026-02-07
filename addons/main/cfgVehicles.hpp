class cfgVehicles {
    // class Items_base_F;
    // class Land_DeskChair_01_base_F: Items_base_F{
    //     ace_dragging_canCarry = 1;
    //     ace_dragging_carryDirection = 180;
    //     ace_dragging_carryPosition[] = {0, 0.75, 0.5};
    //     // ace_interaction_replaceTerrainObject = 1;
    //     acex_sitting_canSit = 1;
    //     acex_sitting_interactPosition[] = {0, 0, 0.3};
    //     acex_sitting_sitDirection = 180;
    //     acex_sitting_sitPosition[] = {0, 0, -4.0};
    // };

    class ThingX;
    class Land_CampingChair_V1_F: ThingX {
        GVAR(itemClass) = QGVAR(Land_CampingChair_V1_F);
    };

    class Camping_base_F;
    class Land_CampingChair_V1_folded_F: Camping_base_F {
        GVAR(itemClass) = QGVAR(Land_CampingChair_V1_F);
    };
};
