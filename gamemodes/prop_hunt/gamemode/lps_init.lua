GM.NoPlayerPlayerDamage = false

resource.AddFile("sound/high_noon.wav")

function lastPropStandingTest(pl)
	
	local propCount = 0
	for k, v in pairs(team.GetPlayers(TEAM_PROPS)) do
		if v:Alive() then
			propCount = propCount + 1
		end
	end
	
	if (pl.ph_prop && pl.ph_prop:IsValid()) and (propCount == 1) then
        
		for k, v in pairs(team.GetPlayers(TEAM_PROPS)) do
			if v:Alive() then
				v:Give("weapon_357")
				v:GiveAmmo(30, "357", true)
				
				PrintMessage(HUD_PRINTCENTER, "The last prop has been given a magnum!")
                BroadcastLua("surface.PlaySound(\"high_noon.wav\")")

                return
			end
		end
	end
end
hook.Add("PostPlayerDeath", "DeathLastPropStandingTest", lastPropStandingTest)
hook.Add("PlayerDisconnected", "DisconnectLastPropStandingTest", lastPropStandingTest)
