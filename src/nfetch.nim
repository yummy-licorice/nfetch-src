import libs/[arch, distro, editor, init, shell]
import config/sep
import std/terminal
import std/strformat

stdout.styledWriteLine(fgBlue, fmt"distro{getSeperator()}", fgWhite, getDistro())
stdout.styledWriteLine(fgMagenta, fmt"arch{getSeperator()}", fgWhite, getArch())
stdout.styledWriteLine(fgGreen, fmt"init{getSeperator()}", fgWhite, getInit())
stdout.styledWriteLine(fgRed, fmt"shell{getSeperator()}", fgWhite, getShell())
stdout.styledWriteLine(fgYellow, fmt"editor{getSeperator()}", fgWhite, getEditor()) 