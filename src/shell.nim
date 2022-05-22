import os
import strutils

proc getShell*(): string =
    let shellsplit = os.getEnv("SHELL").split("/")
    let shell = shellsplit[2]
    return shell




