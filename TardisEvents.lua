--
-- MP Stuff

-- Teleport

TardisTeleportEvent = {}
TardisTeleportEvent_mt = Class(TardisTeleportEvent, Event)

InitEventClass(TardisTeleportEvent, "TardisTeleportEvent")

function TardisTeleportEvent.emptyNew()
    local self = Event.new(TardisTeleportEvent_mt)
	self.className = "TardisTeleportEvent"
    return self
end

function TardisTeleportEvent.new(x, z, vehicle, isReset, isHotspot)
    local self = TardisTeleportEvent:emptyNew()
    self.x = x
	self.z = z
	self.vehicle = vehicle
	self.isReset = isReset
	self.isHotspot = isHotspot
    return self
end

function TardisTeleportEvent:writeStream(streamId, connection)
	streamWriteFloat32(streamId, self.x)
	streamWriteFloat32(streamId, self.z)
	NetworkUtil.writeNodeObject(streamId, self.vehicle)
	streamWriteBool(streamId, self.isReset)
	streamWriteBool(streamId, self.isHotspot)
end

function TardisTeleportEvent:readStream(streamId, connection)
	self.x = streamReadFloat32(streamId)
	self.z = streamReadFloat32(streamId)
	self.vehicle = NetworkUtil.readNodeObject(streamId)
	self.isReset = streamReadBool(streamId)
	self.isHotspot = streamReadBool(streamId)
	self:run(connection)
end

function TardisTeleportEvent:run(connection)
	Tardis:teleportToLocation(self.x, self.z, self.vehicle, self.isReset, self.isHotspot)
end

function TardisTeleportEvent.sendEvent(x, z, vehicle, isReset, isHotspot, noEventSend)
	if isReset == nil then
		isReset = false
	end

	if isHotspot == nil then
		isHotspot = false
	end

	if noEventSend == nil or noEventSend == false then
		if g_server ~= nil then
			g_server:broadcastEvent(TardisTeleportEvent:new(x, z, vehicle, isReset, isHotspot), nil, nil, self)
		else
			g_client:getServerConnection():sendEvent(TardisTeleportEvent:new(x, z, vehicle, isReset, isHotspot))
		end
	end
end

-- Create Hotspot

TardisCreateHotspotEvent = {}
TardisCreateHotspotEvent_mt = Class(TardisCreateHotspotEvent, Event)

InitEventClass(TardisCreateHotspotEvent, "TardisCreateHotspotEvent")

function TardisCreateHotspotEvent.emptyNew()
    local self = Event.new(TardisCreateHotspotEvent_mt)
	self.className = "TardisCreateHotspotEvent"
    return self
end

function TardisCreateHotspotEvent.new(hotspotId, x, z)
    local self = TardisCreateHotspotEvent:emptyNew()
    self.hotspotId = hotspotId
    self.x = x
	self.z = z
    return self
end

function TardisCreateHotspotEvent:writeStream(streamId, connection)
	streamWriteInt8(streamId, self.hotspotId)
	streamWriteFloat32(streamId, self.x)
	streamWriteFloat32(streamId, self.z)
end

function TardisCreateHotspotEvent:readStream(streamId, connection)
	self.hotspotId = streamReadInt8(streamId)
	self.x = streamReadFloat32(streamId)
	self.z = streamReadFloat32(streamId)
	self:run(connection)
end

function TardisCreateHotspotEvent:run(connection)
	Tardis:createMapHotspot(self.hotspotId , self.x, self.z)
end

function TardisCreateHotspotEvent.sendEvent(hotspotId, x, y, noEventSend)
	if noEventSend == nil or noEventSend == false then
		if g_server ~= nil then
			g_server:broadcastEvent(TardisCreateHotspotEvent:new(hotspotId, x, y), nil, nil, self)
		else
			g_client:getServerConnection():sendEvent(TardisCreateHotspotEvent:new(hotspotId, x, y))
		end
	end
end

-- Remove Hotspot

TardisRemoveHotspotEvent = {}
TardisRemoveHotspotEvent_mt = Class(TardisRemoveHotspotEvent, Event)

InitEventClass(TardisRemoveHotspotEvent, "TardisRemoveHotspotEvent")

function TardisRemoveHotspotEvent.emptyNew()
    local self = Event.new(TardisRemoveHotspotEvent_mt)
	self.className = "TardisRemoveHotspotEvent"
    return self
end

function TardisRemoveHotspotEvent.new(hotspotId)
    local self = TardisRemoveHotspotEvent:emptyNew()
    self.hotspotId = hotspotId
    return self
end

function TardisRemoveHotspotEvent:writeStream(streamId, connection)
	streamWriteInt8(streamId, self.hotspotId)
end

function TardisRemoveHotspotEvent:readStream(streamId, connection)
	self.hotspotId = streamReadInt8(streamId)
	self:run(connection)
end

function TardisRemoveHotspotEvent:run(connection)
	Tardis:removeMapHotspot(self.hotspotId)
end

function TardisRemoveHotspotEvent.sendEvent(hotspotId, noEventSend)
	if noEventSend == nil or noEventSend == false then
		if g_server ~= nil then
			g_server:broadcastEvent(TardisRemoveHotspotEvent:new(hotspotId), nil, nil, self)
		else
			g_client:getServerConnection():sendEvent(TardisRemoveHotspotEvent:new(hotspotId))
		end
	end
end