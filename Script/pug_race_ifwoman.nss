//::///////////////////////////////////////////////
//:: FileName pug_race_ifwoman
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 24/04/2008 9:39:52 PM
//:://////////////////////////////////////////////
int StartingConditional()
{

	// Add the gender restrictions
	if(GetGender(GetPCSpeaker()) != GENDER_FEMALE)
		return FALSE;

	return TRUE;
}
