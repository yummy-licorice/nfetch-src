import libs/[arch, distro, editor, init, shell, title]
import config/[sep, keys]
import std/[terminal, strformat]


stdout.styledWrite(fgBlack, fmt"{getUsername()}", fgWhite, fmt"@{getHostname()}")
stdout.styledWriteLine(fgBlue, fmt"{getDistroText()}{getSeperator()}", fgWhite, getDistro())
stdout.styledWriteLine(fgMagenta, fmt"{getArchText()}{getSeperator()}", fgWhite, getArch())
stdout.styledWriteLine(fgGreen, fmt"{getInitText()}{getSeperator()}", fgWhite, getInit())
stdout.styledWriteLine(fgRed, fmt"{getShellText()}{getSeperator()}", fgWhite, getShell())
stdout.styledWriteLine(fgYellow, fmt"{getEditorText()}{getSeperator()}", fgWhite, getEditor()) 