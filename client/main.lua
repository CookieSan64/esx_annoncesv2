ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('esx_annonces:sendProximityMessage')
AddEventHandler('esx_annonces:sendProximityMessage', function(playerId, title, message, color)
	local source = PlayerId()
	local target = GetPlayerFromServerId(playerId)

	local sourcePed, targetPed = PlayerPedId(), GetPlayerPed(target)
	local sourceCoords, targetCoords = GetEntityCoords(sourcePed), GetEntityCoords(targetPed)

	if target == source then
		TriggerEvent('chat:addMessage', { args = { title, message }, color = color })
	elseif GetDistanceBetweenCoords(sourceCoords, targetCoords, true) < 20 then
		TriggerEvent('chat:addMessage', { args = { title, message }, color = color })
	end
end)

Citizen.CreateThread(function()
	TriggerEvent('chat:addSuggestion', '/avis',    'Avis de recherche', { { name = _U('generic_argument_name'), help = 'Le message de l\'avis de recherche que vous voulez publier' } } )

	-- Métier EMS
	TriggerEvent('chat:addSuggestion', '/ems', 'Annonce EMS', { { name = _U('generic_argument_name'), help = 'Le message que vous voulez publier' } } )
	TriggerEvent('chat:addSuggestion', '/emsrecrutement', 'Recrutement EMS', { { name = _U('generic_argument_name'), help = 'Le message de recrutement que vous voulez publier' } } )
	-- Métier CCPD
	TriggerEvent('chat:addSuggestion', '/ccpd', 'Annonce CCPD', { { name = _U('generic_argument_name'), help = 'Le message que vous voulez publier' } } )
	TriggerEvent('chat:addSuggestion', '/ccpdrecrutement', 'Recrutement CCPD', { { name = _U('generic_argument_name'), help = 'Le message de recrutement que vous voulez publier' } } )
	-- Métier FBI
	TriggerEvent('chat:addSuggestion', '/fbi', 'Annonce FBI', { { name = _U('generic_argument_name'), help = 'Le message que vous voulez publier' } } )
	TriggerEvent('chat:addSuggestion', '/fbirecrutement', 'Recrutement FBI', { { name = _U('generic_argument_name'), help = 'Le message de recrutement que vous voulez publier' } } )
	-- Métier Gouvernement
	TriggerEvent('chat:addSuggestion', '/gouv', 'Annonce Gouvernement', { { name = _U('generic_argument_name'), help = 'Le message que vous voulez publier' } } )
	TriggerEvent('chat:addSuggestion', '/gouvrecrutement', 'Recrutement Gouvernement', { { name = _U('generic_argument_name'), help = 'Le message de recrutement que vous voulez publier' } } )
	-- Métier WeazelNew
	TriggerEvent('chat:addSuggestion', '/wn', 'Annonce WeazelNew', { { name = _U('generic_argument_name'), help = 'Le message que vous voulez publier' } } )
	TriggerEvent('chat:addSuggestion', '/wnrecrutement', 'Recrutement WeazelNew', { { name = _U('generic_argument_name'), help = 'Le message de recrutement que vous voulez publier' } } )
	TriggerEvent('chat:addSuggestion', '/wnpub', 'Publicité WeazelNew', { { name = _U('generic_argument_name'), help = 'Le message que vous voulez publier' } } )
	TriggerEvent('chat:addSuggestion', '/wnmeteo', 'Info Météo', { { name = _U('generic_argument_name'), help = 'Le message que vous voulez publier' } } )
	-- Métier Avocat
	TriggerEvent('chat:addSuggestion', '/avocat', 'Annonce Avocat', { { name = _U('generic_argument_name'), help = 'Le message que vous voulez publier' } } )
	TriggerEvent('chat:addSuggestion', '/avocatrecrutement', 'Recrutement Avocat', { { name = _U('generic_argument_name'), help = 'Le message de recrutement que vous voulez publier' } } )
	-- Métier Burger Shot
	TriggerEvent('chat:addSuggestion', '/burgershot', 'Annonce Burger Shot', { { name = _U('generic_argument_name'), help = 'Le message que vous voulez publier' } } )
	TriggerEvent('chat:addSuggestion', '/burgershotrecrutement', 'Recrutement Burger Shot', { { name = _U('generic_argument_name'), help = 'Le message de recrutement que vous voulez publier' } } )
	-- Métier Mécano
    TriggerEvent('chat:addSuggestion', '/meca', 'Annonce Mécano', { { name = _U('generic_argument_name'), help = 'Le message que vous voulez publier' } } )
    TriggerEvent('chat:addSuggestion', '/mecarecrutement', 'Recrutement Mécano', { { name = _U('generic_argument_name'), help = 'Le message de recrutement que vous voulez publier' } } )
    -- Métier Taxi
	TriggerEvent('chat:addSuggestion', '/taxi', 'Annonce Taxi', { { name = _U('generic_argument_name'), help = 'Le message que vous voulez publier' } } )
	TriggerEvent('chat:addSuggestion', '/taxirecrutement', 'Recrutement Taxi', { { name = _U('generic_argument_name'), help = 'Le message de recrutement que vous voulez publier' } } )
end)


AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		TriggerEvent('chat:removeSuggestion', '/avis')
	-- Métier EMS
		TriggerEvent('chat:removeSuggestion', '/ems')
		TriggerEvent('chat:removeSuggestion', '/emsrecrutement')
	-- Métier CCPD
		TriggerEvent('chat:removeSuggestion', '/ccpd')
		TriggerEvent('chat:removeSuggestion', '/ccpdrecrutement')
	-- Métier FBI
		TriggerEvent('chat:removeSuggestion', '/fbi')
		TriggerEvent('chat:removeSuggestion', '/fbirecrutement')
	-- Métier Gouvernement
		TriggerEvent('chat:removeSuggestion', '/gouv')
		TriggerEvent('chat:removeSuggestion', '/gouvrecrutement')
	-- Métier WeazelNew
		TriggerEvent('chat:removeSuggestion', '/wn')
		TriggerEvent('chat:removeSuggestion', '/wnrecrutement')
		TriggerEvent('chat:removeSuggestion', '/wnpub')
		TriggerEvent('chat:removeSuggestion', '/wnmeteo')
	-- Métier Avocat
		TriggerEvent('chat:removeSuggestion', '/avocat')
		TriggerEvent('chat:removeSuggestion', '/avocatrecrutement')
	-- Métier Burger Shot
		TriggerEvent('chat:removeSuggestion', '/burgershot')
		TriggerEvent('chat:removeSuggestion', '/burgershotrecrutement')
	-- Métier Mécano
		TriggerEvent('chat:removeSuggestion', '/meca')
		TriggerEvent('chat:removeSuggestion', '/mecarecrutement')
	-- Métier Taxi
		TriggerEvent('chat:removeSuggestion', '/taxi')
		TriggerEvent('chat:removeSuggestion', '/taxirecrutement')
	end
end)