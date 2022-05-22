import libs/[arch, distro, editor, init, shell, title]
import config/sep
import std/[terminal, strformat]


stdout.styledWriteLine(fgCyan, fmt"{getUsername()}", fgWhite, fmt"@{getHostname()}")
stdout.styledWriteLine(fgBlue, fmt"distro{getSeperator()}", fgWhite, getDistro())
stdout.styledWriteLine(fgMagenta, fmt"arch{getSeperator()}", fgWhite, getArch())
stdout.styledWriteLine(fgGreen, fmt"init{getSeperator()}", fgWhite, getInit())
stdout.styledWriteLine(fgRed, fmt"shell{getSeperator()}", fgWhite, getShell())
stdout.styledWriteLine(fgYellow, fmt"editor{getSeperator()}", fgWhite, getEditor()) 