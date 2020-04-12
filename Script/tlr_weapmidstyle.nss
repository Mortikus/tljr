// Increments appearances for an equipped weapon

#include "tlr_items_inc"

void main()
{
    object oNPC = OBJECT_SELF;
    object oItem = GetItemInSlot(INVENTORY_SLOT_RIGHTHAND, oNPC);
    if (oItem != OBJECT_INVALID) {
        RemakeWeapon(oNPC, oItem, ITEM_APPR_WEAPON_MODEL_MIDDLE, PART_NEXT);
    }
}
