import libs/[arch, distro, editor, init, shell, title]
import config/parsefile
import std/[terminal, strformat]

if title_enabled == "true":
  stdout.styledWrite(fgCyan, fmt"{getUsername()}", fgWhite, fmt"@{getHostname()}")
stdout.styledWriteLine(fgBlue, fmt"{distroText}{seperator}", fgWhite, getDistro())
stdout.styledWriteLine(fgMagenta, fmt"{archText}{seperator}", fgWhite, getArch())
stdout.styledWriteLine(fgGreen, fmt"{initText}{seperator}", fgWhite, getInit())
stdout.styledWriteLine(fgRed, fmt"{shellText}{seperator}", fgWhite, getShell())
stdout.styledWriteLine(fgYellow, fmt"{editorText}{seperator}", fgWhite, getEditor()) 
if pallete_enabled == "true":
  stdout.styledWriteLine(fgBlack, fmt"{pallete_symbol}", fgRed, fmt"{pallete_symbol}", fgGreen, fmt"{pallete_symbol}", fgYellow, fmt"{pallete_symbol}", fgBlue, fmt"{pallete_symbol}", fgMagenta, fmt"{pallete_symbol}", fgCyan, fmt"{pallete_symbol}", fgWhite, fmt"{pallete_symbol}")
