//::///////////////////////////////////////////////
//:: FileName pug_lvl16
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 11/04/2008 1:00:41 AM
//:://////////////////////////////////////////////
int StartingConditional()
{

	// Restrict based on the player's class
	int iPassed = 0;
	if(GetHitDice(GetPCSpeaker()) >= 16)
		iPassed = 1;
	if(iPassed == 0)
		return FALSE;

	return TRUE;
}
