import os

proc getSymbol*(): string =
    let sym = os.getEnv("NFETCH_PALLETE_SYMBOL")

    if sym == "":
        let sym = "◈ "
        return sym
    else:
        return sym