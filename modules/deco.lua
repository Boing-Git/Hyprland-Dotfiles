-----------------------
---- LOOK AND FEEL ----
-----------------------

local Utils = require("utils")
local vars = require("modules.variables")
local colors = Utils.colors

hl.config({
    general = {
        gaps_in  = 5,
        gaps_out = 10,

        border_size = 2,

        col = {
            active_border = { colors = { colors.primary, colors.background }, angle = 45 },
            inactive_border = "rgba(000000aa)",
        },
    },
    decoration = {
        rounding       = 30,
        rounding_power = 4,

        -- Change transparency of focused and unfocused windows
        active_opacity   = 0.9, -- ADDED COMMA
        inactive_opacity = 0.7, -- ADDED COMMA

        shadow = {
            enabled      = true,
            range        = 15,
            render_power = 2,
            color        = "rgba(000000e0)",
        }, -- ADDED COMMA

        blur = {
            enabled   = true,
            size      = 6,
            passes    = 3,
            vibrancy  = 0.16, 
        },
    },
    group = {
        insert_after_current = true,   -- Open new tabs right next to your currently focused tab
        focus_removed_window = true,   -- Switch focus to a window when it is kicked out of a group
        ["col.border_active"] = Utils.hex_to_rgba(Utils.colors.primary,0.5),        -- Active group window border color
        ["col.border_inactive"] = Utils.hex_to_rgba(Utils.colors.secondary, 0.3),      -- Inactive group window border color
        ["col.border_locked_active"] = Utils.hex_to_rgba(Utils.colors.on_primary, 0.5), -- Border color when the active group is locked
        ["col.border_locked_inactive"] = Utils.hex_to_rgba(Utils.colors.on_secondary, 0.3),

        groupbar = {
            enabled = vars.groupBar,
            font_family = "Rubik",      -- Set your favorite UI font
            font_size = 10,
            height = 14,                -- Height of the tab bar container above the window
            stacked = false,            -- True = vertical tab bar stack; False = standard horizontal browser tabs
            gradients = true,           -- Smooth out tab background transitions
            render_titles = true,       -- Show application names on the tabs
            scrolling = true,           -- Cycle tabs using your mouse wheel over the tab bar

            -- Set the curve style for the group bar (2.0 is a circle)
            gradient_rounding_power = 10,
                
            -- Tab Colors (Format: rgba or hex strings)
            ["col.active"] = Utils.hex_to_rgba(Utils.colors.primary, 0.5),          -- Background of the focused tab
            ["col.inactive"] = Utils.hex_to_rgba(Utils.colors.secondary, 0.3),        -- Background of un-focused tabs
            ["col.locked_active"] = Utils.hex_to_rgba(Utils.colors.on_primary, 0.5),   -- Background of focused tab when group is locked
            ["col.locked_inactive"] = Utils.hex_to_rgba(Utils.colors.on_secondary, 0.3)  -- Background of un-focused tabs when group is locked
        }
    }
})
