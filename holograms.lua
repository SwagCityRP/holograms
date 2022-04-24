--[[

	Holograms / Floating text Script by Meh
	
	Just put in the coordinates you get when standing on the ground, it's above the ground then
	By default, you only see the hologram when you are within 10m of it, to change that, edit the 10.0 infront of the "then"
	The Default holograms are at the Observatory.
	
	If you want to add a line to the hologram, just make a new Draw3DText line with the same coordinates, and edit the vertical offset.
	
	Formatting:
			Draw3DText( x, y, z  vertical offset, "text", font, text size, text size)
			
			
	To add a new hologram, copy paste this example under the existing ones, and put coordinates and text into it.
	
		if GetDistanceBetweenCoords( X, Y, Z, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( X, Y, Z,  -1.400, "TEXT", 4, 0.1, 0.1)
			Draw3DText( X, Y, Z,  -1.600, "TEXT", 4, 0.1, 0.1)
			Draw3DText( X, Y, Z,  -1.800, "TEXT", 4, 0.1, 0.1)		
		end


]]--

--n vector4(-49.63, -1111.87, 26.67, 149.52)


Citizen.CreateThread(function()
    Holograms()
end)

function Holograms()
		while true do
			Citizen.Wait(1)
				-- Hologram No. 1

        if GetDistanceBetweenCoords( 321.28, -699.67, 29.32, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
            Draw3DText( 321.28, -699.67, 29.32  -.5, "Bob's Shitbox Cars", 4, 0.4, 0.4)
            Draw3DText( 321.28, -699.67, 29.32  -1.200, "Walk up to my shitbox and hit alt", 4, 0.1, 0.1)
            Draw3DText( 321.28, -699.67, 29.32  -1.400, "when you see the menu. Then click it!", 4, 0.1, 0.1)
        end

        if GetDistanceBetweenCoords( -593.67, 2094.06, 131.54, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
            Draw3DText( -593.67, 2094.06, 131.54  -1.4, "For interacting with the mines, hold alt", 4, 0.1, 0.1)
            Draw3DText( -593.67, 2094.06, 131.54  -1.6, "and right click when the eye goes blue to", 4, 0.1, 0.1)
            Draw3DText( -593.67, 2094.06, 131.54  -1.8, "open the interaction menu. Then left click", 4, 0.1, 0.1)
            Draw3DText( -593.67, 2094.06, 131.54  -2, "the menu item! Including this dude here.", 4, 0.1, 0.1)
        end

        if GetDistanceBetweenCoords( -160.69, -1160.26, 23.68, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
            Draw3DText( -160.69, -1160.26, 23.68  -1.4, "Retrieve car from inside office at desk", 4, 0.1, 0.1)
        end

        if GetDistanceBetweenCoords( -221.22, -1158.72, 23.04, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
            Draw3DText( -221.22, -1158.72, 23.04  -1.4, "Retrieve car from inside office at desk.", 4, 0.1, 0.1)
        end

        if GetDistanceBetweenCoords( 320.26, -583.67, 28.57, GetEntityCoords(GetPlayerPed(-1))) < 5.0 then
            Draw3DText( 320.26, -583.67, 28.57  -1.4, "Ambulance", 4, 0.1, 0.1)
        end

        if GetDistanceBetweenCoords( 308.19, -595.35, 43.29, GetEntityCoords(GetPlayerPed(-1))) < 5.0 then
            Draw3DText( 308.19, -595.35, 43.29  -1.4, "Check In", 4, 0.1, 0.1)
        end

        if GetDistanceBetweenCoords( 310.37, -598.07, 43.28, GetEntityCoords(GetPlayerPed(-1))) < 3.0 then
            Draw3DText( 310.37, -598.07, 43.28  -1.4, "Duty", 4, 0.07, 0.07)
        end

        if GetDistanceBetweenCoords( 307.28, -602.0, 43.28, GetEntityCoords(GetPlayerPed(-1))) < 3.0 then
            Draw3DText( 307.28, -602.0, 43.28  -1.4, "Stash", 4, 0.07, 0.07)
        end

        if GetDistanceBetweenCoords( 306.28, -601.64, 43.28, GetEntityCoords(GetPlayerPed(-1))) < 4.0 then
            Draw3DText( 306.28, -601.64, 43.28  -1.4, "Supplies", 4, 0.07, 0.07)
        end

        if GetDistanceBetweenCoords( 472, -1026, 28, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
            Draw3DText( 472, -1026, 28  -1.4, "Police Impound", 4, 0.1, 0.1)
        end
	end
end

-------------------------------------------------------------------------------------------------------------------------
function Draw3DText(x,y,z,textInput,fontId,scaleX,scaleY)
         local px,py,pz=table.unpack(GetGameplayCamCoords())
         local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)    
         local scale = (1/dist)*20
         local fov = (1/GetGameplayCamFov())*100
         local scale = scale*fov   
         SetTextScale(scaleX*scale, scaleY*scale)
         SetTextFont(fontId)
         SetTextProportional(1)
         SetTextColour(250, 250, 250, 255)		-- You can change the text color here
         SetTextDropshadow(1, 1, 1, 1, 255)
         SetTextEdge(2, 0, 0, 0, 150)
         SetTextDropShadow()
         SetTextOutline()
         SetTextEntry("STRING")
         SetTextCentre(1)
         AddTextComponentString(textInput)
         SetDrawOrigin(x,y,z+2, 0)
         DrawText(0.0, 0.0)
         ClearDrawOrigin()
        end
