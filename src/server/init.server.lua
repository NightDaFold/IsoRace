local iso = game.Workspace.IsoRace
local sSS = game:GetService("ServerScriptService")
local components = sSS.Components
local isoComp = require(sSS.IsoRace)

local newIso = isoComp.new(iso):Init()

