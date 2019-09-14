local component = require("component")
local shell = require("shell")
local fs = require("filesystem")

if not component.isAvailable("gpu") then
  io.stderr:write("GPU not found\n")
  return
end

if not component.isAvailable("stargate") then
  io.stderr:write("Stargate interface not found\n")
  return
end

local app = require("src/app")
app.run()
