#include "pug_inc"
void main()
{
object oPC = GetPCSpeaker();
string sLevel = GetStringRight(GetTag(OBJECT_SELF), 2);
int nDefence = d20(1)+ GetHitDice(OBJECT_SELF);
int nAttack = GetSkillRank(SKILL_BLUFF, GetPCSpeaker(), FALSE) + GetAbilityModifier(ABILITY_INTELLIGENCE,GetPCSpeaker());
string sWin;
int nBounty = GetLocalInt(GetObjectByTag("bnty_master"), "TARGET_BOUNTY_"+sLevel);

if (nDefence - GetHitDice(OBJECT_SELF) == 1)
    {
    sWin = "TRUE";
    }
else if (nDefence - GetHitDice(OBJECT_SELF) == 20)
    {
    sWin = "FALSE";
    }
else if (nDefence <= nAttack)
    {
    sWin = "TRUE";
    }
else if (nDefence > nAttack)
    {
    sWin = "FALSE";
    }
SendMessageToPC(GetPCSpeaker(), "Bluff: "+IntToString(nAttack)+" vs Roll: "+IntToString(nDefence)+" Success: "+sWin);

if (sWin == "TRUE")
    {
    SetCustomToken(97900, "Fine, you got me. I'll go peacefully. I will be waiting on your ship for you to take me to Jabba.");
    GiveXPToCreature(oPC, GetHitDice(OBJECT_SELF)*15);
    SetLocalInt(oPC, "BOUNTY_"+sLevel, nBounty+(nBounty/2));
    SetLocalString(oPC, "BOUNTY_STATUS_"+sLevel, "alive");

    if (GetStandardFactionReputation(STANDARD_FACTION_DEFENDER, oPC) != 50)
        {
        SetStandardFactionReputation(STANDARD_FACTION_DEFENDER, 50, oPC);
        }
    FloatingTextStringOnCreature("Return to Jabba's Palace to receive your reward", oPC, FALSE);
    DelayCommand(6.5,CreateBountyTarget(GetObjectByTag("bnty_master"), StringToInt(sLevel)));

    object oDoor = GetNearestObject(OBJECT_TYPE_DOOR, OBJECT_SELF);
    SetPlotFlag(OBJECT_SELF, TRUE);
    ActionMoveToObject(oDoor, FALSE);
    DelayCommand(4.5, DestroyObject(OBJECT_SELF));
    }
if (sWin == "FALSE")
    {
    SetCustomToken(97900, "Nice try, but it will take more than that to take me down!");

    DelayCommand(3.5, ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE));
    DelayCommand(3.5, AssignCommand(OBJECT_SELF, ActionAttack(GetPCSpeaker(), FALSE)));
    }
}
