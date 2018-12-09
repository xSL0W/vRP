local secunde = 1800
local timppayday = nil
local pluginStatus = true

offset = {x = 0.3, y = 0.94}
scale = 0.5

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000) 
			secunde = secunde - 1
			if secunde == 0 then
				secunde = 1800
			end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		timpPayday("~w~PAYDAY IN:~r~ " .. secunde .."~w~ secunde")
	end
end)



function timpPayday(text)
	SetTextProportional(1)
	SetTextRightJustify(true)
    SetTextFont(4)
    SetTextProportional(0)
    SetTextScale(scale, scale)
	SetTextColour(255, 255, 255, 255)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
	SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(offset.x, offset.y)
end