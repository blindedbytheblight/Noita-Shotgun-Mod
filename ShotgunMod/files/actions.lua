table.insert(actions,
    {
      id                 = "BLINDEDS_SHOTGUN_MOD_TUBULAR_SPELL",
      name               = "!!!",
      description        = "!!!",
      sprite             = "mods/ShotgunMod/files/items_gfx/shells_icon.png",
      type               = ACTION_TYPE_PROJECTILE,
      spawn_level        = "6, 10",
      spawn_probability  = "0.1, 0.1",
      price              = 110,
      mana               = 50,
      action 		= function()
        shot_effects.recoil_knockback = shot_effects.recoil_knockback + 100.0
        
        if reflecting then 
          Reflection_RegisterProjectile("mods/ShotgunMod/files/shotgun_blast.xml")
          return
      end
      for i=1, math.random(6,10) do
          add_projectile("mods/ShotgunMod/files/shotgun_blast.xml")
      end
    end
  }
)

-- thank you copis for giving me the code to copy-paste for lines 15 through 23; and thanks noita.wiki.gg for giving me the general format for the spell table insert