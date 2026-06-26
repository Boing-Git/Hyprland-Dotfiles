local M = {}

local vars = require("modules.variables")
local scheme_name = vars.ColorScheme or "material-you"
local colors = require("scheme." .. scheme_name)

-- Robust hex to rgba conversion function
M.hex_to_rgba = function(hex, alpha)
    -- Fallback if hex is missing, not a string, or hasn't been compiled by matugen yet
    if type(hex) ~= "string" or hex:find("{") or #hex < 6 then 
        return string.format("rgba(255, 255, 255, %s)", tostring(alpha or 1.0)) 
    end

    -- Strip leading '#' or '0x' / '0X'
    local clean_hex = hex:gsub("^#", ""):gsub("^0[xX]", "")
    
    local r, g, b
    local embedded_alpha = 1.0

    if #clean_hex == 8 then
        -- Format: AARRGGBB (Matugen default style)
        local a_val = tonumber("0x" .. clean_hex:sub(1, 2)) or 255
        embedded_alpha = a_val / 255
        
        r = tonumber("0x" .. clean_hex:sub(3, 4)) or 255
        g = tonumber("0x" .. clean_hex:sub(5, 6)) or 255
        b = tonumber("0x" .. clean_hex:sub(7, 8)) or 255
    elseif #clean_hex == 6 then
        -- Format: RRGGBB
        r = tonumber("0x" .. clean_hex:sub(1, 2)) or 255
        g = tonumber("0x" .. clean_hex:sub(3, 4)) or 255
        b = tonumber("0x" .. clean_hex:sub(5, 6)) or 255
    else
        -- Fallback for unexpected string lengths
        return string.format("rgba(255, 255, 255, %s)", tostring(alpha or 1.0))
    end
    
    -- Prioritize explicit alpha argument; fallback to embedded alpha or 1.0
    local final_alpha = alpha or embedded_alpha
    
    -- Format beautifully (limits alpha float clutter if any)
    return string.format("rgba(%d, %d, %d, %.2f)", r, g, b, final_alpha):gsub("%.00", "")
end

-- Export colors along with the utility function
M.colors = colors
return M