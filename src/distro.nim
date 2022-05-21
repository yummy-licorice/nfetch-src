import strutils
import distros

proc getDistro*(): string =
  if detectOs(MacOSX):
    let os = "MacOS"
    return os
  elif detectOs(BSD):
    let os = "BSD"
    return os
  elif detectOs(GhostBSD):
    let os = "GhostBSD"
    return os
  elif detectOs(FreeBSD):
    let os = "FreeBSD"
    return os
  elif detectOs(OpenBSD):
    let os = "OpenBSD"
    return os
  elif detectOs(DragonflyBSD):
    let os = "DragonflyBSD"
    return os
  elif detectOs(Linux):
    let os_release = open("/etc/os-release")
    let name = os_release.readLine()
    let split_name = name.split("=")
    let os = split_name[1]
    return os
  elif detectOs(Windows):
    echo "Windows is not supported"
  else:
    let os = "OtherUnix"
    return os

