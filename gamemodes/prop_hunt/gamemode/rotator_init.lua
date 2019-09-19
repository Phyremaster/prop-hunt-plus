function propRotator(pl, key)
    if (key == KEY_C) and (pl:Team() == TEAM_PROPS) and (pl.ph_prop:GetModel()) then
        pl.ph_prop:SetAngles(Angle(0, pl:GetAngles().y, 0))
        pl:PrintMessage(HUD_PRINTTALK, "Prop rotated!")
    end
end
hook.Add("PlayerButtonUp", "PropRotator", propRotator)
