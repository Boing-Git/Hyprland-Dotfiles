local vars = require("modules.variables")
local QuickLauncherKey = vars.QuickLauncherKey
local MM = vars.MM
local SM = vars.SM
local TM = vars.TM

-- Bind the key to the specific global identifier
hl.bind(MM .. " + SUPER_L", hl.dsp.exec_cmd(" qs ipc call launcher toggle"), { description = "Launcher" })
hl.bind(MM .. " + " .. TM .. "+ S", hl.dsp.exec_cmd(" qs ipc call screenshot toggle"), { description = "Screenshot" })
hl.bind(MM .. " + " .. SM .. "+ W", hl.dsp.exec_cmd(" qs ipc call wallpaper toggle"), { description = "Wallpaper" })