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
    var split_name = name.split("=")

    if split_name.contains("\""):
      split_name.delete(0)
      split_name.delete(len(split_name))

    let temp = split_name[1].strip() ## this would return the "Arch Linux"
    let n = temp.toLower ## changes it to just archLinux I kinda like it better 
    return n
  elif detectOs(Windows): 
    echo "Please switch to a competent operating system" ## another possible stdout for the windows plebs
  else:
    let os = "otherUnix"
    return os

