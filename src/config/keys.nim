import std/os

proc getDistroText*(): string =
  let distroText = os.getEnv("NFETCH_DISTRO")
  if distroText == "":
    let distroText = "distro"
    return distroText
  else:
    return distroText

proc getArchText*(): string =
  let archText = os.getEnv("NFETCH_ARCH")
  if archText == "":
    let archText = "arch"
    return archText
  else:
    return archText

proc getInitText*(): string =
  let initText = os.getEnv("NFETCH_INIT")
  if initText == "":
    let initText = "init"
    return initText
  else:
    return initText 

proc getShellText*(): string =
  let shellText = os.getEnv("NFETCH_SHELL")
  if shellText == "":
    let shellText = "shell"
    return shellText
  else:
    return shellText

proc getEditorText*(): string =
  let editorText = os.getEnv("NFETCH_EDITOR")
  if editorText == "":
    let editorText = "editor"
    return editorText
  else:
    return editorText

  