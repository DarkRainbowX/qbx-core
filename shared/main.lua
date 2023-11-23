local qbShared = {}
qbShared.Gangs = require 'shared.gangs'
qbShared.Items = require 'shared.items'
qbShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
qbShared.Jobs = require 'shared.jobs'
qbShared.Locations = require 'shared.locations'
qbShared.Vehicles = require 'shared.vehicles'
qbShared.Weapons = require 'shared.weapons'

---@type table<number, Vehicle>
qbShared.VehicleHashes = {}

for _, v in pairs(qbShared.Vehicles) do
	qbShared.VehicleHashes[v.hash] = v
end

return qbShared
