local EZWand = dofile_once("mods/ShotgunMod/lib/EZWand.lua")
local wand = EZWand{
    manaMax = 250,
    rechargeTime = 62,
    spread = 20,
    capacity = 3,
    spellsPerCast = 3,
    manaChargeSpeed = 90,
    castDelay = 24
}
wand:SetSprite("mods/ShotgunMod/files/items_gfx/shotgun.png", 10, 0, 17, 0)
wand:PlaceAt(10010, 2935)
wand:AttachSpells("BLINDEDS_SHOTGUN_MOD_TUBULAR_SPELL")

local item_comp = EntityGetFirstComponentIncludingDisabled(wand.entity_id, "ItemComponent")
if item_comp then
  ComponentSetValue2(item_comp, "item_name", "Experimental Wand")
  ComponentSetValue2(item_comp, "always_use_item_name_in_ui", true)
end

-- thank you _horscht for EZWand, that library is very helpful