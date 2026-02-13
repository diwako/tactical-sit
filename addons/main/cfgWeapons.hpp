class cfgWeapons {
    class CBA_MiscItem;
    class CBA_MiscItem_ItemInfo;

    class GVAR(Land_CampingChair_V1_F): CBA_MiscItem {
        scope = 2;
        displayName = "$STR_a3_cfgvehicles_land_campingchair_v1_f0";
        descriptionShort = "";
        author = "diwako";
        picture = QPATHTOF(ui\Land_CampingChair_V1_F_ca.paa);
        model = "\A3\Structures_F\Civ\Camping\CampingChair_V1_folded_F.p3d";
        ACE_isTool = 1;
        GVAR(vehicleClass) = "Land_CampingChair_V1_F";
        class ItemInfo: CBA_MiscItem_ItemInfo {
            mass = 30;
        };
    };
    class GVAR(Land_CampingChair_V2_F): GVAR(Land_CampingChair_V1_F) {
        displayName = "$STR_a3_cfgvehicles_land_campingchair_v2_f0";
        picture = QPATHTOF(ui\Land_CampingChair_V2_F_ca.paa);
        model = "\A3\Structures_F\Civ\Camping\CampingChair_V2_F.p3d";
        GVAR(vehicleClass) = "Land_CampingChair_V2_F";
        hiddenSelections[] = {"camo"};
        hiddenSelectionsTextures[] = {"a3\structures_f\civ\camping\data\tablechair_co.paa"};
    };
    class GVAR(Land_CampingChair_V2_white_F): GVAR(Land_CampingChair_V2_F) {
        displayName = "$STR_a3_cfgvehicles_land_campingchair_v2_white_f0";
        picture = QPATHTOF(ui\Land_CampingChair_V2_white_F.paa);
        GVAR(vehicleClass) = "Land_CampingChair_V2_white_F";
        hiddenSelectionsTextures[] = {"a3\Props_F_Orange\Humanitarian\Camps\Data\tablechair_white_co.paa"};
    };
    class GVAR(Land_ChairPlastic_F): GVAR(Land_CampingChair_V1_F) {
        displayName = "$STR_a3_cfgvehicles_land_chairplastic_f0";
        picture = QPATHTOF(ui\Land_ChairPlastic_F_ca.paa);
        model = "\A3\Structures_F\Furniture\ChairPlastic_F.p3d";
        GVAR(vehicleClass) = "Land_ChairPlastic_F";
        class ItemInfo: CBA_MiscItem_ItemInfo {
            mass = 120;
        };
    };
    class GVAR(Land_ArmChair_01_F): GVAR(Land_CampingChair_V1_F) {
        displayName = "$STR_a3_cfgvehicles_land_armchair_01_f0";
        picture = QPATHTOF(ui\Land_ArmChair_01_F_ca.paa);
        model = "\a3\Props_F_Orange\Furniture\Armchair_01_F.p3d";
        GVAR(vehicleClass) = "Land_ArmChair_01_F";
        class ItemInfo: CBA_MiscItem_ItemInfo {
            mass = 225;
        };
    };
};
