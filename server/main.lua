ESX = exports["es_extended"]:getSharedObject()

AddEventHandler('es:invalidCommandHandler', function(source, command_args, user)
	CancelEvent()
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', _U('unknown_command', command_args[1]) } })
end)

--[[AddEventHandler('chatMessage', function(source, name, message)
	if string.sub(message, 1, string.len('/')) ~= '/' then
		CancelEvent()

		if Config.EnableESXIdentity then name = GetCharacterName(source) end
		TriggerClientEvent('chat:addMessage', -1, { args = { _U('ooc_prefix', name), message }, color = { 128, 128, 128 } })
	end
end)]]
---------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('avis', function(source, args, rawCommand)
    if source == 0 then
        return
    end
    args = table.concat(args, ' ')
    local xPlayer = ESX.GetPlayerFromId(source)
    local name = xPlayer.getName()
    if xPlayer.job.name == 'police' or xPlayer.job.name == 'fbi' or xPlayer.job.name == 'gouv' then
        local notification = {
            message = args,
            title = "Force De l'Ordre",
            subject = "Avis de Recherche",
            icon = 'GOUV',
            timeout = 10000,
            position = "top",
            progress = false,
            theme = "avis_fdo",
            exitAnim = "fadeOutRight",
            flash = false
        }
        TriggerClientEvent('bulletin:sendAdvanced', -1, notification)
    else
        local notification = {
            message = "Vous n'êtes pas autorisé à utiliser cette commande.",
            timeout = 5000,
            position = "bottomleft",
            progress = false,
            theme = "error",
            exitAnim = "fadeOutRight",
            flash = false
        }
        TriggerClientEvent('bulletin:send', source, notification)
    end
end, false)

	-- Métier EMS
RegisterCommand('ems', function(source, args, rawCommand)
    if source == 0 then
        return
    end
    args = table.concat(args, ' ')
    local xPlayer = ESX.GetPlayerFromId(source)
    local name = xPlayer.getName()
    if xPlayer.job.name == 'ambulance' then
        local notification = {
            message = args,
            title = "EMS",
            subject = "Annonce : ",
            icon = 'EMS',
            timeout = 10000,
            position = "bottomleft",
            progress = false,
            theme = "inform",
            exitAnim = "fadeOutRight",
            flash = false
        }
        TriggerClientEvent('bulletin:sendAdvanced', -1, notification)
    else
        local notification = {
            message = "Vous n'êtes pas autorisé à utiliser cette commande.",
            timeout = 5000,
            position = "bottomleft",
            progress = false,
            theme = "error",
            exitAnim = "fadeOutRight",
            flash = false
        }
        TriggerClientEvent('bulletin:send', source, notification)
    end
end, false)

RegisterCommand('emsrecrutement', function(source, args, rawCommand)
    if source == 0 then
        return
    end
    args = table.concat(args, ' ')
    local xPlayer = ESX.GetPlayerFromId(source)
    local name = xPlayer.getName()
    if xPlayer.job.name == 'ambulance' then
        local notification = {
            message = args,
            title = "EMS",
            subject = "Recrutement : ",
            icon = 'EMS',
            timeout = 10000,
            position = "bottomleft",
            progress = false,
            theme = "inform",
            exitAnim = "fadeOutRight",
            flash = false
        }
        TriggerClientEvent('bulletin:sendAdvanced', -1, notification)
    else
        local notification = {
            message = "Vous n'êtes pas autorisé à utiliser cette commande.",
            timeout = 5000,
            position = "bottomleft",
            progress = false,
            theme = "error",
            exitAnim = "fadeOutRight",
            flash = false
        }
        TriggerClientEvent('bulletin:send', source, notification)
    end
end, false)

	-- Métier CCPD
RegisterCommand('ccpd', function(source, args, rawCommand)
    if source == 0 then
        return
    end
    args = table.concat(args, ' ')
    local xPlayer = ESX.GetPlayerFromId(source)
    local name = xPlayer.getName()
    if xPlayer.job.name == 'police' then
        local notification = {
            message = args,
            title = "Calico City Police Department",
            subject = "Annonce : ", -- Ajoutez une valeur pour le champ subject
            icon = 'CCPD',
            timeout = 10000,
            position = "bottomleft",
            progress = false,
            theme = "inform",
            exitAnim = "fadeOutRight",
            flash = false
        }
        TriggerClientEvent('bulletin:sendAdvanced', -1, notification)
    else
        local notification = {
            message = "Vous n'êtes pas autorisé à utiliser cette commande.",
            timeout = 5000,
            position = "bottomleft",
            progress = false,
            theme = "error",
            exitAnim = "fadeOutRight",
            flash = false
        }
        TriggerClientEvent('bulletin:send', source, notification)
    end
end, false)

RegisterCommand('ccpdrecrutement', function(source, args, rawCommand)
    if source == 0 then
        return
    end
    args = table.concat(args, ' ')
    local xPlayer = ESX.GetPlayerFromId(source)
    local name = xPlayer.getName()
    if xPlayer.job.name == 'police' then
        local notification = {
            message = args,
            title = "Calico City Police Department",
            subject = "Recrutement : ",
            icon = 'CCPD',
            timeout = 10000,
            position = "bottomleft",
            progress = false,
            theme = "inform",
            exitAnim = "fadeOutRight",
            flash = false
        }
        TriggerClientEvent('bulletin:sendAdvanced', -1, notification)
    else
        local notification = {
            message = "Vous n'êtes pas autorisé à utiliser cette commande.",
            timeout = 5000,
            position = "bottomleft",
            progress = false,
            theme = "error",
            exitAnim = "fadeOutRight",
            flash = false
        }
        TriggerClientEvent('bulletin:send', source, notification)
    end
end, false)

	-- Métier FBI
    RegisterCommand('fbi', function(source, args, rawCommand)
        if source == 0 then
            return
        end
        args = table.concat(args, ' ')
        local xPlayer = ESX.GetPlayerFromId(source)
        local name = xPlayer.getName()
        if xPlayer.job.name == 'fbi' then
            local notification = {
                message = args,
                title = "FBI",
                subject = "Annonce : ",
                icon = 'FBI',
                timeout = 10000,
                position = "bottomleft",
                progress = false,
                theme = "inform",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:sendAdvanced', -1, notification)
        else
            local notification = {
                message = "Vous n'êtes pas autorisé à utiliser cette commande.",
                timeout = 5000,
                position = "bottomleft",
                progress = false,
                theme = "error",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:send', source, notification)
        end
    end, false)

    RegisterCommand('fbirecrutement', function(source, args, rawCommand)
        if source == 0 then
            return
        end
        args = table.concat(args, ' ')
        local xPlayer = ESX.GetPlayerFromId(source)
        local name = xPlayer.getName()
        if xPlayer.job.name == 'fbi' then
            local notification = {
                message = args,
                title = "FBI",
                subject = "Recrutement : ",
                icon = 'FBI',
                timeout = 10000,
                position = "bottomleft",
                progress = false,
                theme = "inform",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:sendAdvanced', -1, notification)
        else
            local notification = {
                message = "Vous n'êtes pas autorisé à utiliser cette commande.",
                timeout = 5000,
                position = "bottomleft",
                progress = false,
                theme = "error",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:send', source, notification)
        end
    end, false)

	-- Métier Gouvernement
    RegisterCommand('gouv', function(source, args, rawCommand)
        if source == 0 then
            return
        end
        args = table.concat(args, ' ')
        local xPlayer = ESX.GetPlayerFromId(source)
        local name = xPlayer.getName()
        if xPlayer.job.name == 'gouv' then
            local notification = {
                message = args,
                title = "Gouvernement",
                subject = "Annonce : ",
                icon = 'GOUV',
                timeout = 10000,
                position = "bottomleft",
                progress = false,
                theme = "inform",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:sendAdvanced', -1, notification)
        else
            local notification = {
                message = "Vous n'êtes pas autorisé à utiliser cette commande.",
                timeout = 5000,
                position = "bottomleft",
                progress = false,
                theme = "error",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:send', source, notification)
        end
    end, false)

    RegisterCommand('gouvrecrutement', function(source, args, rawCommand)
        if source == 0 then
            return
        end
        args = table.concat(args, ' ')
        local xPlayer = ESX.GetPlayerFromId(source)
        local name = xPlayer.getName()
        if xPlayer.job.name == 'gouv' then
            local notification = {
                message = args,
                title = "Gouvernement",
                subject = "Recrutement : ",
                icon = 'GOUV',
                timeout = 10000,
                position = "bottomleft",
                progress = false,
                theme = "inform",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:sendAdvanced', -1, notification)
        else
            local notification = {
                message = "Vous n'êtes pas autorisé à utiliser cette commande.",
                timeout = 5000,
                position = "bottomleft",
                progress = false,
                theme = "error",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:send', source, notification)
        end
    end, false)

	-- Métier WeazelNew
    RegisterCommand('wn', function(source, args, rawCommand)
        if source == 0 then
            return
        end
        args = table.concat(args, ' ')
        local xPlayer = ESX.GetPlayerFromId(source)
        local name = xPlayer.getName()
        if xPlayer.job.name == 'news' then
            local notification = {
                message = args,
                title = "Weazel News",
                subject = "Annonce : ",
                icon = 'WN',
                timeout = 10000,
                position = "top",
                progress = false,
                theme = "inform",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:sendAdvanced', -1, notification)
        else
            local notification = {
                message = "Vous n'êtes pas autorisé à utiliser cette commande.",
                timeout = 5000,
                position = "bottomleft",
                progress = false,
                theme = "error",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:send', source, notification)
        end
    end, false)

    RegisterCommand('wnrecrutement', function(source, args, rawCommand)
        if source == 0 then
            return
        end
        args = table.concat(args, ' ')
        local xPlayer = ESX.GetPlayerFromId(source)
        local name = xPlayer.getName()
        if xPlayer.job.name == 'news' then
            local notification = {
                message = args,
                title = "Weazel News",
                subject = "Recrutement : ",
                icon = 'WN',
                timeout = 10000,
                position = "bottomleft",
                progress = false,
                theme = "inform",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:sendAdvanced', -1, notification)
        else
            local notification = {
                message = "Vous n'êtes pas autorisé à utiliser cette commande.",
                timeout = 5000,
                position = "bottomleft",
                progress = false,
                theme = "error",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:send', source, notification)
        end
    end, false)

    RegisterCommand('wnpub', function(source, args, rawCommand)
        if source == 0 then
            return
        end
        args = table.concat(args, ' ')
        local xPlayer = ESX.GetPlayerFromId(source)
        local name = xPlayer.getName()
        if xPlayer.job.name == 'news' then
            local notification = {
                message = args,
                title = "Weazel News",
                subject = "Publicité : ",
                icon = 'WN',
                timeout = 10000,
                position = "top",
                progress = false,
                theme = "inform",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:sendAdvanced', -1, notification)
        else
            local notification = {
                message = "Vous n'êtes pas autorisé à utiliser cette commande.",
                timeout = 5000,
                position = "bottomleft",
                progress = false,
                theme = "error",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:send', source, notification)
        end
    end, false)

    RegisterCommand('wnmeteo', function(source, args, rawCommand)
        if source == 0 then
            return
        end
        args = table.concat(args, ' ')
        local xPlayer = ESX.GetPlayerFromId(source)
        local name = xPlayer.getName()
        if xPlayer.job.name == 'news' then
            local notification = {
                message = args,
                title = "Weazel News",
                subject = "Météo : ",
                icon = 'WN',
                timeout = 10000,
                position = "top",
                progress = false,
                theme = "inform",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:sendAdvanced', -1, notification)
        else
            local notification = {
                message = "Vous n'êtes pas autorisé à utiliser cette commande.",
                timeout = 5000,
                position = "bottomleft",
                progress = false,
                theme = "error",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:send', source, notification)
        end
    end, false)

	-- Métier Avocat
    RegisterCommand('avocat', function(source, args, rawCommand)
        if source == 0 then
            return
        end
        args = table.concat(args, ' ')
        local xPlayer = ESX.GetPlayerFromId(source)
        local name = xPlayer.getName()
        if xPlayer.job.name == 'avocat' then
            local notification = {
                message = args,
                title = "Avocat",
                subject = "Annonce : ",
                icon = 'AVOCAT',
                timeout = 10000,
                position = "bottomleft",
                progress = false,
                theme = "inform",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:sendAdvanced', -1, notification)
        else
            local notification = {
                message = "Vous n'êtes pas autorisé à utiliser cette commande.",
                timeout = 5000,
                position = "bottomleft",
                progress = false,
                theme = "error",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:send', source, notification)
        end
    end, false)

    RegisterCommand('avocatrecrutement', function(source, args, rawCommand)
        if source == 0 then
            return
        end
        args = table.concat(args, ' ')
        local xPlayer = ESX.GetPlayerFromId(source)
        local name = xPlayer.getName()
        if xPlayer.job.name == 'avocat' then
            local notification = {
                message = args,
                title = "Avocat",
                subject = "Recrutement : ",
                icon = 'AVOCAT',
                timeout = 10000,
                position = "bottomleft",
                progress = false,
                theme = "inform",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:sendAdvanced', -1, notification)
        else
            local notification = {
                message = "Vous n'êtes pas autorisé à utiliser cette commande.",
                timeout = 5000,
                position = "bottomleft",
                progress = false,
                theme = "error",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:send', source, notification)
        end
    end, false)

	-- Métier Burger Shot
    RegisterCommand('burgershot', function(source, args, rawCommand)
        if source == 0 then
            return
        end
        args = table.concat(args, ' ')
        local xPlayer = ESX.GetPlayerFromId(source)
        local name = xPlayer.getName()
        if xPlayer.job.name == 'burgershot' then
            local notification = {
                message = args,
                title = "Burger Shot",
                subject = "Annonce : ",
                icon = 'BURGER_SHOT',
                timeout = 10000,
                position = "bottomleft",
                progress = false,
                theme = "inform",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:sendAdvanced', -1, notification)
        else
            local notification = {
                message = "Vous n'êtes pas autorisé à utiliser cette commande.",
                timeout = 5000,
                position = "bottomleft",
                progress = false,
                theme = "error",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:send', source, notification)
        end
    end, false)

    RegisterCommand('burgershotrecrutement', function(source, args, rawCommand)
        if source == 0 then
            return
        end
        args = table.concat(args, ' ')
        local xPlayer = ESX.GetPlayerFromId(source)
        local name = xPlayer.getName()
        if xPlayer.job.name == 'burgershot' then
            local notification = {
                message = args,
                title = "Burger Shot",
                subject = "Recrutement : ",
                icon = 'BURGER_SHOT',
                timeout = 10000,
                position = "bottomleft",
                progress = false,
                theme = "inform",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:sendAdvanced', -1, notification)
        else
            local notification = {
                message = "Vous n'êtes pas autorisé à utiliser cette commande.",
                timeout = 5000,
                position = "bottomleft",
                progress = false,
                theme = "error",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:send', source, notification)
        end
    end, false)

	-- Métier Benny's
      RegisterCommand('meca', function(source, args, rawCommand)
        if source == 0 then
            return
        end
        args = table.concat(args, ' ')
        local xPlayer = ESX.GetPlayerFromId(source)
        local name = xPlayer.getName()
        if xPlayer.job.name == 'mechanic' then
            local notification = {
                message = args,
                title = "Benny's",
                subject = "Annonce : ",
                icon = 'BENNY',
                timeout = 10000,
                position = "bottomleft",
                progress = false,
                theme = "inform",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:sendAdvanced', -1, notification)
        else
            local notification = {
                message = "Vous n'êtes pas autorisé à utiliser cette commande.",
                timeout = 5000,
                position = "bottomleft",
                progress = false,
                theme = "error",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:send', source, notification)
        end
    end, false)

    RegisterCommand('mecarecrutement', function(source, args, rawCommand)
        if source == 0 then
            return
        end
        args = table.concat(args, ' ')
        local xPlayer = ESX.GetPlayerFromId(source)
        local name = xPlayer.getName()
        if xPlayer.job.name == 'mechanic' then
            local notification = {
                message = args,
                title = "Benny's",
                subject = "Recrutement : ",
                icon = 'BENNY',
                timeout = 10000,
                position = "bottomleft",
                progress = false,
                theme = "inform",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:sendAdvanced', -1, notification)
        else
            local notification = {
                message = "Vous n'êtes pas autorisé à utiliser cette commande.",
                timeout = 5000,
                position = "bottomleft",
                progress = false,
                theme = "error",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:send', source, notification)
        end
    end, false)

	-- Métier Taxi
    RegisterCommand('taxi', function(source, args, rawCommand)
        if source == 0 then
            return
        end
        args = table.concat(args, ' ')
        local xPlayer = ESX.GetPlayerFromId(source)
        local name = xPlayer.getName()
        if xPlayer.job.name == 'taxi' then
            local notification = {
                message = args,
                title = "Taxi",
                subject = "Annonce : ",
                icon = 'TAXI',
                timeout = 10000,
                position = "bottomleft",
                progress = false,
                theme = "inform",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:sendAdvanced', -1, notification)
        else
            local notification = {
                message = "Vous n'êtes pas autorisé à utiliser cette commande.",
                timeout = 5000,
                position = "bottomleft",
                progress = false,
                theme = "error",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:send', source, notification)
        end
    end, false)

    RegisterCommand('taxirecrutement', function(source, args, rawCommand)
        if source == 0 then
            return
        end
        args = table.concat(args, ' ')
        local xPlayer = ESX.GetPlayerFromId(source)
        local name = xPlayer.getName()
        if xPlayer.job.name == 'taxi' then
            local notification = {
                message = args,
                title = "Taxi",
                subject = "Recrutement : ",
                icon = 'TAXI',
                timeout = 10000,
                position = "bottomleft",
                progress = false,
                theme = "inform",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:sendAdvanced', -1, notification)
        else
            local notification = {
                message = "Vous n'êtes pas autorisé à utiliser cette commande.",
                timeout = 5000,
                position = "bottomleft",
                progress = false,
                theme = "error",
                exitAnim = "fadeOutRight",
                flash = false
            }
            TriggerClientEvent('bulletin:send', source, notification)
        end
    end, false)

------------------------------------------------------------------------------------------------------------------------------------------------------------------
function GetCharacterName(source)
	local result = MySQL.Sync.fetchAll('SELECT firstname, lastname FROM users WHERE identifier = @identifier', {
		['@identifier'] = GetPlayerIdentifiers(source)[1]
	})

	if result[1] and result[1].firstname and result[1].lastname then
		if Config.OnlyFirstname then
			return result[1].firstname
		else
			return ('%s %s'):format(result[1].firstname, result[1].lastname)
		end
	else
		return GetPlayerName(source)
	end
end