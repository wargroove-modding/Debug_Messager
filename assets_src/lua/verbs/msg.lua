local Wargroove = require "wargroove/wargroove"
local Verb = require "wargroove/verb"
local Events = require "wargroove/events"

local DebugMsg = Verb:new()

function DebugMsg:execute(unit, targetPos, strParam, path)
    local matchState = Events.getMatchState()
    for k, v in pairs(matchState.mapCounters) do
        Wargroove.showDialogueBox("neutral", "generic_outlaw", "Counter " .. tostring(v.id) .. " : value = " .. tostring(v.value))
    end
    for k, v in pairs(matchState.mapFlags) do
        Wargroove.showDialogueBox("neutral", "generic_outlaw", "Flag " .. tostring(v.id) .. " : value = " .. tostring(v.value))
    end
    for k, v in pairs(matchState.campaignFlags) do
        Wargroove.showDialogueBox("neutral", "generic_outlaw", "CampaignFlag " .. tostring(v.id) .. " : value = " .. tostring(v.value))
    end
end

return DebugMsg
