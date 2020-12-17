-- Manage spoons
hs.loadSpoon("SpoonInstall")

-- Fast resize and move a window to half screen or full size
spoon.SpoonInstall:andUse("WindowHalfsAndThirds", 
{
  hotkeys =
  {
    left_half   = { {"shift", "cmd"}, "h" },
    right_half  = { {"shift", "cmd"}, "l" },
    top_half    = { {"shift", "cmd"}, "k" },
    bottom_half = { {"shift", "cmd"}, "j" },
    max         = { {"shift", "cmd"}, "f" },
    center      = { {"shift", "cmd"}, "m" },
  }
})

-- Moving a window to another screen
spoon.SpoonInstall:andUse("WindowScreenLeftAndRight",
{
  hotkeys = {
    screen_left = { {"shift", "ctrl", "cmd"}, "h" },
    screen_right= { {"shift", "ctrl", "cmd"}, "l" },
  }
})

-- Precise contral with grid
spoon.SpoonInstall:andUse("WindowGrid",
{
  config = { gridGeometries = { { '6x4' } } },
  hotkeys = {show_grid = { {"shift", "ctrl" ,"cmd"}, "g"} },
  start = true
})

-- Shortcut for reloading configurations
hs.hotkey.bind({"cmd", "shift", "ctrl"}, "r", hs.reload)
