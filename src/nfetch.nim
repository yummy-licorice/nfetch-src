import distro
import arch
import shell
import editor
import init
import std/terminal

stdout.styledWriteLine(fgBlue, "distro: ", fgWhite, getDistro())
stdout.styledWriteLine(fgMagenta, "arch  : ", fgWhite, getArch())
stdout.styledWriteLine(fgGreen, "init  : ", fgWhite, getInit())
stdout.styledWriteLine(fgRed, "shell : ", fgWhite, getShell())
stdout.styledWriteLine(fgYellow, "editor: ", fgWhite, getEditor()) ## this is a personal change because I don't have