local wezterm = require 'wezterm'
local io = require 'io'
local os = require 'os'
local config = {}
local act = wezterm.action
local home_dir = os.getenv("USERPROFILE")


-- Startupi
config.default_prog = {'wsl'}
config.default_cwd = home_dir


-- WINDOW
config.initial_rows = 30
config.initial_cols = 120


-- BACKGROUND
config.color_scheme = 'Catppuccin Mocha'
local dimmer = { brightness = 0.3 }
config.background = {
  {
    source = {
      File = home_dir .. '//Pictures//background.png',
    },
    hsb = dimmer,
  },
}


-- FONT
config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.font_size = 13


-- Shortcuts
config.keys = {
  {
    key = 't',
    mods = 'SHIFT | ALT',
    action = act.SpawnTab 'CurrentPaneDomain',
  },
  
}

return config
