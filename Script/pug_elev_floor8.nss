void main()
{
object oPC = GetPCSpeaker();
location lFloor = GetLocation(GetWaypointByTag(GetTag(OBJECT_SELF)+"_8"));
AssignCommand(oPC,ActionJumpToLocation(lFloor));
}
