//::///////////////////////////////////////////////
//:: FileName qx_craft_c1_cw
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 5/25/2009 2:29:17 AM
//:://////////////////////////////////////////////
#include "qx_craft_inc"
int StartingConditional()
{
    // Inspect local variables
    if(GetLocalInt(OBJECT_SELF, "CRAFT_WEAPON") < 1)
    {
        return FALSE;
    }
    return TRUE;
}
