int StartingConditional()
{
int x = 5;
object oPC = GetPCSpeaker();
string sArea = GetTag(GetArea(oPC));
object oShip;
if (sArea == "pug_isd_1"){oShip = GetObjectByTag("PL_S_ISD");}
else if (sArea == "pug_mcc_1"){oShip = GetObjectByTag("PL_S_MCC");}
string sShip = GetStringRight(GetTag(oShip),3);

    // Inspect local variables
    if(!(GetIsObjectValid(GetLocalObject(oShip, sShip+"_TARGET_"+IntToString(x))) == TRUE))
        return FALSE;

    return TRUE;
}
