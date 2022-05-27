import std/[parsecfg, os, strformat]

proc getConfigFile(): string =
  var userConfigFile = fmt"{getConfigDir()}nfetch/config.ini"
  var defConfigFile = "/usr/share/doc/nfetch/config.ini"

  if not fileExists(userConfigFile):
    return defConfigFile
  else:
    return userConfigFile

let config = loadConfig(getConfigFile())
#let config = loadConfig(fmt"{getHomeDir()}Documents/Code/nfetch/config.ini")

 # Get all the variables from the config file and export theme
let distroText* = config.getSectionValue("Keys", "distro")
let archText* = config.getSectionValue("Keys", "arch")
let initText* = config.getSectionValue("Keys", "init")
let shellText* = config.getSectionValue("Keys", "shell")
let editorText* = config.getSectionValue("Keys", "editor")
let seperator* = config.getSectionValue("Symbols", "seperator")
let pallete_symbol* = config.getSectionValue("Symbols", "pallete_symbol")
let pallete_enabled* = config.getSectionValue("Components", "pallete_enabled")
let title_enabled* = config.getSectionValue("Components", "title_enabled")




