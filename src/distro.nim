import strutils
import distros

proc getDistro*(): string =
  if detectOs(MacOSX):
    let os = "macOS"
    return os
  elif detectOs(BSD):
    let os = "BSD"
    return os
  elif detectOs(GhostBSD):
    let os = "ghostBSD"
    return os
  elif detectOs(FreeBSD):
    let os = "freeBSD"
    return os
  elif detectOs(OpenBSD):
    let os = "openBSD"
    return os
  elif detectOs(DragonflyBSD):
    let os = "dragonflyBSD"
    return os
  elif detectOs(Linux):
    let os_release = open("/etc/os-release")
    let name = os_release.readLine()
    let split_name = name.split("=")
    let temp = split_name[1] ## this would return the "Arch Linux"
    let qoutes = temp.split('"') ## Splits into [ '"' , 'Arch Linux', '"']
    let n = qoutes[1].toLower ## changes it to just archLinux I kinda like it better 
    return n
  elif detectOs(Windows):
    echo "Windows is not supported" 
    ## echo "Please switch to a competent operating system ## another possible stdout for the windows plebs
  else:
    let os = "otherUnix"
    return os

