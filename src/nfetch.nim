import distro
import arch
import shell
import editor
import std/terminal

stdout.styledWriteLine(fgBlue, "distro ", fgWhite, getDistro())
stdout.styledWriteLine(fgMagenta, "arch ", fgWhite, getArch())
stdout.styledWriteLine(fgGreen, "shell ", fgWhite, getShell())
stdout.styledWriteLine(fgYellow, "editor ", fgWhite, getEditor())