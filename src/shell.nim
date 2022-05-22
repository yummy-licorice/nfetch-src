import os
import strutils

proc getShell*(): string =
  let shellenv = os.getEnv("SHELL")
  if shellenv.contains("/"):  
    let shellsplit = shellenv.split("/")
    let shell = shellsplit[2]
    return shell
  else:
    return shellenv




