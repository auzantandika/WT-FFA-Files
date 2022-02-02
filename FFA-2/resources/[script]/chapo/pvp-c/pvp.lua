AddEventHandler("playerSpawned", function(spawn)
	SetCanAttackFriendly(PlayerPedId())
	NetworkSetFriendlyFireOption(true)
end)

Citizen.CreateThread(function()
    Citizen.Wait(0)
    SetPlayerHealthRechargeMultiplier(PlayerId(), 0.0)
  end)