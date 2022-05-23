import libs/[arch, distro, editor, init, shell, title]
import config/[sep, keys, pallete]
import std/[terminal, strformat]


stdout.styledWrite(fgBlack, fmt"{getUsername()}", fgWhite, fmt"@{getHostname()}")
stdout.styledWriteLine(fgBlue, fmt"{getDistroText()}{getSeperator()}", fgWhite, getDistro())
stdout.styledWriteLine(fgMagenta, fmt"{getArchText()}{getSeperator()}", fgWhite, getArch())
stdout.styledWriteLine(fgGreen, fmt"{getInitText()}{getSeperator()}", fgWhite, getInit())
stdout.styledWriteLine(fgRed, fmt"{getShellText()}{getSeperator()}", fgWhite, getShell())
stdout.styledWriteLine(fgYellow, fmt"{getEditorText()}{getSeperator()}", fgWhite, getEditor()) 
stdout.styledWriteLine(fgBlack, fmt"{getSymbol()}", fgRed, fmt"{getSymbol()}", fgGreen, fmt"{getSymbol()}", fgYellow, fmt"{getSymbol()}", fgBlue, fmt"{getSymbol()}", fgMagenta, fmt"{getSymbol()}", fgCyan, fmt"{getSymbol()}", fgWhite, fmt"{getSymbol()}")