//::///////////////////////////////////////////////
//:: FileName pug_voc_ifemp
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 07/02/2008 1:02:16 AM
//:://////////////////////////////////////////////
int StartingConditional()
{

    // Inspect local variables
    if(!(GetLocalInt(GetPCSpeaker(), "CHOICE") == 2))
        return FALSE;

    return TRUE;
}
