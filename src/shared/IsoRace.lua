local collectionService = game:GetService("CollectionService")
local sSS = game:GetService("ServerScriptService")
local components = sSS.Components

local Race = {}
Race.__index = Race

function Race.new (instance)
	local self = setmetatable({},Race)
	self.Instance = instance
	return self
end

function Race:Init ()
	self:SetComps()
end

function Race:SetComps ()
	for _,v in ipairs(self.Instance:GetDescendants()) do
		self:GetComp(v)
	end
end

function Race:GetComp (instance)
	for _,v in ipairs(collectionService:GetTags(instance)) do
		local newComp = components:FindFirstChild(v)
		if newComp then
			local init = newComp.new(self,instance):Init()
		end
	end
end

return Race
