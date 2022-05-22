import strutils
import os

proc getSeperator*(): string =
    let sep = os.getEnv("NFETCH_SEP")

    if sep == "":
        let sep = " "
        return sep
    else:
        return sep