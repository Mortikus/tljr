//::///////////////////////////////////////////////
//:: FileName pug_skn_canchoos
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 27/07/2008 10:10:50 PM
//:://////////////////////////////////////////////
int StartingConditional()
{

	// Inspect local variables
	if(!(GetLocalInt(GetPCSpeaker(), "SKIN_CHOOSE") == 1))
		return FALSE;

	return TRUE;
}
