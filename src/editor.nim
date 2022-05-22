import os

proc getEditor*(): string =
    let edi = os.getEnv("EDITOR") 
    if edi == "": 
        return "none"
        ## return "nvim" ## i am manually changing this cuz i have no env editor
    else: 
        return edi
