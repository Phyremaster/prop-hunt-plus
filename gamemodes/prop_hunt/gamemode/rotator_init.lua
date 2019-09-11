function propRotator(pl, key)
    if (key == KEY_C) and (pl:Team() == TEAM_PROPS) and (pl.ph_prop:GetModel()) then
        pl.ph_prop:SetAngles(Angle(pl.ph_prop:GetAngles().pitch, pl:GetAngles().yaw, pl.ph_prop:GetAngles().roll))
        pl:PrintMessage(HUD_PRINTTALK, "Prop rotated!")
    end
end
hook.Add("PlayerButtonUp", "PropRotator", propRotator)
