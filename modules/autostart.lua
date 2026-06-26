
-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
 hl.on("hyprland.start", function () 
    hl.exec_cmd("qs")
    hl.exec_cmd("blanket")
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type imagek --watch cliphist store")
    hl.exec_cmd("awww-daemon --format xrgb")
    hl.exec_cmd("sudo mount /dev/sda1 /mnt/storage/")
 end)
