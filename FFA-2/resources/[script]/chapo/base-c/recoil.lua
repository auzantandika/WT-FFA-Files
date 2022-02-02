--[[ DUMPED USING COMPOSER DEVIL ]]--
--local hasar = {
	--Pistoller
  --  [-619010992] = 50, -- WEAPON_MACHINEPISTOL
    -- [-1076751822] = 16, -- SNS PISTOL
   -- [-771403250] = 30, -- HEAVY PISTOL
    -- [1593441988] = 15, -- COMBAT PISTOL
    -- [453432689] = 18, -- PISTOL 
    -- [-1716589765] = 15, -- PISTOL .50
   -- [137902532] = 15, -- VINTAGEPISTOL
    -- [584646201] = 16, -- AP PISTOL

    --SMG
    -- [171789620] = 38, -- COMBAT PDW
    -- [736523883] = 32, -- SMG
    -- [2024373456] = 32, -- SMG MK2
    -- [-270015777] = 33, -- ASSAULT SMG
    -- [324215364] = 31, -- MICRO SMG
    -- [-1121678507] = 32, -- MINISMG
    -- [3219281620] = 20,

    --Taarruz
    -- [-1357824103] = 44, -- ADVANCED RIFLE
    -- [-1063057011] = 42, -- SPECAIAL RIFLE
    -- [-1074790547] = 40, -- ASSAULT RIFLE
    -- [-2084633992] = 42, -- CARBINE RIFLE
--}

local recoils = {
	[453432689] = 0.3, -- PISTOL
	[3219281620] = 0.5, -- PISTOL MK2
	[1593441988] = 0.2, -- COMBAT PISTOL
	[584646201] = 0.3, -- AP PISTOL
	[-1716589765] = 0.6, -- PISTOL .50
	[324215364] = 0.5, -- MICRO SMG
	[736523883] = 0.4, -- SMG
	[2024373456] = 0.1, -- SMG MK2
	[-270015777] = 0.1, -- ASSAULT SMG
	[-1074790547] = 0.5, -- ASSAULT RIFLE
	[961495388] = 0.2, -- ASSAULT RIFLE MK2
	[-2084633992] = 0.3, -- CARBINE RIFLE
	[4208062921] = 0.1, -- CARBINE RIFLE MK2
	[-1357824103] = 0.1, -- ADVANCED RIFLE
	[-1660422300] = 0.1, -- MG
	[2144741730] = 0.1, -- COMBAT MG
	[3686625920] = 0.1, -- COMBAT MG MK2
	[487013001] = 0.4, -- PUMP SHOTGUN
	[1432025498] = 0.35, -- PUMP SHOTGUN MK2
	[2017895192] = 0.7, -- SAWNOFF SHOTGUN
	[-494615257] = 0.4, -- ASSAULT SHOTGUN
	[-1654528753] = 0.2, -- BULLPUP SHOTGUN
	[911657153] = 0.1, -- STUN GUN
	[100416529] = 0.5, -- SNIPER RIFLE
	[205991906] = 0.7, -- HEAVY SNIPER
	[177293209] = 0.6, -- HEAVY SNIPER MK2
	[856002082] = 1.2, -- REMOTE SNIPER
	[-1568386805] = 1.0, -- GRENADE LAUNCHER
	[1305664598] = 1.0, -- GRENADE LAUNCHER SMOKE
	[-1312131151] = 0.0, -- RPG
	[1752584910] = 0.0, -- STINGER
	[1119849093] = 0.01, -- MINIGUN
	[-1076751822] = 0.2, -- SNS PISTOL
	[1627465347] = 0.1, -- GUSENBERG
	[-1063057011] = 0.2, -- SPECIAL CARBINE
	[-1768145561] = 0.15, -- SPECIAL CARBINE MK2
	[-771403250] = 0.5, -- HEAVY PISTOL
	[2132975508] = 0.2, -- BULLPUP RIFLE
	[-2066285827] = 0.15, -- BULLPUP RIFLE MK2
	[137902532] = 0.4, -- VINTAGE PISTOL
	[-1466123874] = 0.7, -- MUSKET
	[984333226] = 0.2, -- HEAVY SHOTGUN
	[-952879014] = 0.3, -- MARKSMAN RIFLE
	[1785463520] = 0.25, -- MARKSMAN RIFLE MK2
	[1672152130] = 0, -- HOMING LAUNCHER
	[1198879012] = 0.9, -- FLARE GUN
	[171789620] = 0.2, -- COMBAT PDW
	[-598887786] = 0.9, -- MARKSMAN PISTOL
	[1834241177] = 2.4, -- RAILGUN
	[-619010992] = 0.3, -- MACHINE PISTOL
	[-1045183535] = 0.6, -- REVOLVER
	[-879347409] = 0.6, -- REVOLVER MK2
	[-275439685] = 0.7, -- DOUBLE BARREL SHOTGUN
	[1649403952] = 0.3, -- COMPACT RIFLE
	[317205821] = 0.2, -- AUTO SHOTGUN
	[125959754] = 0.5, -- COMPACT LAUNCHER
	[-1121678507] = 0.1, -- MINI SMG		
}

Citizen.CreateThread(function()
	while true do 
    Citizen.Wait(0)
        local ply = PlayerPedId()
        SetPedSuffersCriticalHits(ply, false)

        if IsPedArmed(ply, 6) then
			DisableControlAction(1, 140, true)
            DisableControlAction(1, 141, true)
            DisableControlAction(1, 142, true)
        elseif IsPedArmed(ply, 1) then
            N_0x4757f00bc6323cfe(GetHashKey("WEAPON_FLASHLIGHT"), 0.1)   
        else
            N_0x4757f00bc6323cfe(GetHashKey("WEAPON_UNARMED"), 0.35)
		end
		
        if IsPedShooting(ply) then      
            local _,wep = GetCurrentPedWeapon(ply)
            local _,cAmmo = GetAmmoInClip(ply, wep)
			
		--	if hasar[wep] and hasar[wep] ~= 0 then
              --  yenihasar = ((hasar[wep]/100)*25)/10
               -- print(yenihasar)
			--	N_0x4757f00bc6323cfe(wep, yenihasar)
			--end
			
            local GamePlayCam = GetFollowPedCamViewMode()
            local Vehicled = IsPedInAnyVehicle(ply, false)
            local MovementSpeed = math.ceil(GetEntitySpeed(ply))

            if MovementSpeed > 69 then
                MovementSpeed = 69
            end
            Citizen.Wait(50)
            local _,wep = GetCurrentPedWeapon(ply)
            if wep ~= 126349499 then
                local group = GetWeapontypeGroup(wep)
                local p = GetGameplayCamRelativePitch()
                local cameraDistance = #(GetGameplayCamCoord() - GetEntityCoords(ply))

                local recoil = math.random(100,140+MovementSpeed)/100
                local rifle = false

                if group == 970310034 then
                    rifle = true
                end

                if cameraDistance < 5.3 then
                    cameraDistance = 1.5
                else
                    if cameraDistance < 8.0 then
                        cameraDistance = 4.0
                    else
                        cameraDistance = 7.0
                    end
                end

                if Vehicled then
                    recoil = recoil + (recoil * cameraDistance)
                else
                    recoil = recoil * 0.8
                end

                if GamePlayCam == 4 then
                    recoil = recoil * 0.7
                    if rifle then
                        recoil = recoil * 0.1
                    end
                end

                if rifle then
                    recoil = recoil * 0.1
                end

                local rightleft = math.random(4)
                local h = GetGameplayCamRelativeHeading()
                local hf = math.random(10,40+MovementSpeed)/100

                if Vehicled then
                    hf = hf * 2.0
                end

                if rightleft == 1 then
                    SetGameplayCamRelativeHeading(h+hf)
                elseif rightleft == 2 then
                    SetGameplayCamRelativeHeading(h-hf)
                end 
            
                local set = p+recoil

                SetGameplayCamRelativePitch(set,0.8)   
            end 	       	
        end
        
	end
end)

--[[ DUMPED USING COMPOSER DEVIL ]]--