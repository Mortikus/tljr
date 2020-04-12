//::///////////////////////////////////////////////
//:: Name x2_def_ondamage
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Default OnDamaged script
*/
//:://////////////////////////////////////////////
//:: Created By: Keith Warner
//:: Created On: June 11/03
//:://////////////////////////////////////////////

void main()
{
    //--------------------------------------------------------------------------
    // GZ: 2003-10-16
    // Make Plot Creatures Ignore Attacks
    //--------------------------------------------------------------------------
    if (GetPlotFlag(OBJECT_SELF))
    {
        return;
    }
    object oPC = GetLastDamager(OBJECT_SELF);

    if (GetIsInCombat(OBJECT_SELF) == FALSE)
        {
        AssignCommand(OBJECT_SELF, ActionAttack(oPC, FALSE));
        ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE);
        }
    //--------------------------------------------------------------------------
    // Execute old NWN default AI code
    //--------------------------------------------------------------------------
    ExecuteScript("nw_c2_default6", OBJECT_SELF);
}
