import os

proc getEditor*(): string =
    let edi = os.getEnv("EDITOR") 
    if edi == "": 
        return "null"
    else: 
        return edi
