//diwsit eventhandlers
class Extended_PreStart_EventHandlers {
    class ADDON {
        init = QUOTE(call COMPILE_SCRIPT(XEH_preStart));
    };
};

class Extended_PreInit_EventHandlers {
    class ADDON {
        init = QUOTE(call COMPILE_SCRIPT(XEH_preInit));
    };
};

class Extended_PostInit_EventHandlers {
    class ADDON {
        init = QUOTE(call COMPILE_SCRIPT(XEH_postInit));
    };
};

class Extended_Init_EventHandlers {
    class Land_CampingChair_V1_F {
        class ADDON {
            init = QUOTE(call FUNC(initObject));
        };
    };
    class Land_CampingChair_V1_folded_F {
        class ADDON {
            init = QUOTE(call FUNC(initObject));
        };
    };
};
