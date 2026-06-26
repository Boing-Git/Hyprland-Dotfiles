----------------------------------------------------------------------------------------
--- These variables will be used in various locations in the hypr config so set them ---
----------------------------------------------------------------------------------------

local vars = {
    MM = "SUPER", -- Set the Main modifier --
    SM = "ALT", -- Set the Second modifier --
    TM = "SHIFT", -- Set the Thirth modifier --
    QM = "CTRL", -- Set the Fourth modifier --

    TermKey = "T", -- Set the key to open Terminal --
    BrowserKey = "W", -- Set the key to open browser --
    EditorKey = "X", -- Set the key to open code editor -
    FilesKey = "E", -- Set the key to open file explorer --

-------------------------------------------------------------------------------------------------------------------------------------
----One thing to note that add the command for the app not the name, Sometimes the name of the app differs from the app command----
-------------------------------------------------------------------------------------------------------------------------------------

    Term = "foot", -- Set the terminal emulator --
    Browser = "zen-beta", -- Set the browser --
    Editor = "codium", -- Set the code editor --
    Files = "nautilus", -- Set the file explorer --

    -- Select between these layouts for window management, These are non-case sensitive --
    -- Scrolling
    -- Dwindle
    -- Master
    Layout = "Dwindle",

---------------------
-- Enable vim keys --
---------------------

    vimkeys = true,

    singleWindowGapsOut = 10, -- Modify this to or set this 0 for no gaps or add more gaps around the windows but this only works when there is only a single window --

-----------------------------
---Select animations style---
-----------------------------

    -- Select Animation style and all the animations styles, These are non-case sensitive--
    -- Expressive  -- Simple but elegant (Material 3 Defaults)
    -- Springy     -- Simple springy motions
    -- Jelly       -- Highly elastic and springy
    -- FlyingCards -- Simple workspace motion but springy in window motion
    -- Snappy      -- Very fast and responsive, quick pop-ins
    -- Cinematic   -- Slow, majestic, and smooth for a dramatic feel
    -- Fluid       -- Continuous, smooth, liquid-like symmetrical curves
    -- Playful     -- Bouncy with subtle overshoots and anticipation
    -- Elegant     -- Soft, long, smooth easing for a highly premium feel
    -- Minimal     -- Extremely subtle utility animations with minimal sliding
    -- Aggressive  -- Sharp, abrupt motions with aggressive curves
    -- Elastic     -- Exaggerated elasticity with high bezier overshoots
    -- Swift       -- Linear but highly accelerated, no wasted time
    -- Relaxed     -- Slow, gradual, and completely unhurried
    -- None        -- Disables all animations
    AnimateStyle = "expressive",

    -- Select color scheme file from the scheme directory (e.g. "material-you", "dracula", "gruvbox-dark")
    ColorScheme = "material-you",

    --Set true if you want group bars on groups--
    groupBar = true,

    --Set Wallpaper switch keys--
    WallSwitch = "W"
}

------------------------------------------------------------
-- Dynamic Directional Key Selection And Dont Modify These--
------------------------------------------------------------

vars.left  = vars.vimkeys and "h" or "left"
vars.right = vars.vimkeys and "l" or "right"
vars.up    = vars.vimkeys and "k" or "up"
vars.down  = vars.vimkeys and "j" or "down"

return vars
