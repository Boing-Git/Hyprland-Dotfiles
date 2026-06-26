package.path = package.path .. ";../scheme/?.lua"
local Utils = require("utils")

hl.config({
    general = {
        -- Set to true to enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = true,

        -- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
        allow_tearing = true,
    },
})