import libs/[arch, distro, editor, init, shell, title]
import config/parsefile
import std/[terminal, strformat]


stdout.styledWrite(fgCyan, fmt"                  {getUsername()}", fgWhite, fmt"@{getHostname()}")
stdout.styledWriteLine(fgYellow, r"      <>          " ,fgBlue, fmt"{distroText}{seperator}", fgWhite, getDistro())
stdout.styledWriteLine(fgYellow, r"    .::::.        ", fgMagenta, fmt"{archText}{seperator}", fgWhite, getArch())
stdout.styledWriteLine(fgYellow, r"@\\/W\/\/W\//@    ", fgGreen, fmt"{initText}{seperator}", fgWhite, getInit())
stdout.styledWriteLine(fgYellow, r" \\/^\/\/^\//     ", fgRed, fmt"{shellText}{seperator}", fgWhite, getShell())
stdout.styledWriteLine(fgYellow, r"  \_O_<>_O_/      ", fgBlack, fmt"{editorText}{seperator}", fgWhite, getEditor()) 
if pallete_enabled == "true":
  stdout.styledWriteLine("\n", fgBlack, fmt"        {pallete_symbol}", fgRed, fmt"{pallete_symbol}", fgGreen, fmt"{pallete_symbol}", fgYellow, fmt"{pallete_symbol}", fgBlue, fmt"{pallete_symbol}", fgMagenta, fmt"{pallete_symbol}", fgCyan, fmt"{pallete_symbol}", fgWhite, fmt"{pallete_symbol}")

