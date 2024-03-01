local entity = GetUpdatedEntityID()

local proj_component = EntityGetFirstComponent(entity, "ProjectileComponent")

if not proj_component then return end

local damage = ComponentGetValue2(proj_component, "damage")

damage = damage*0.99

ComponentSetValue2(proj_component, "damage", damage)