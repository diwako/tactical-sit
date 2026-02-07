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
            mass = 15;
        };
    };
};
