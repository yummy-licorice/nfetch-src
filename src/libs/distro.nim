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
    var os_release = open("/etc/os-release")
    var line = 0
    while line < 1:
      discard os_release.readLine()
      inc line
    let name = os_release.readLine()
    var split_name = name.split("=")
    let temp = split_name[1].strip() 
    let os = temp.toLower 
    return os
  elif detectOs(Windows): 
    echo "Please switch to a competent operating system" ## another possible stdout for the windows plebs
    quit 1
  else:
    let os = "otherUnix"
    return os

