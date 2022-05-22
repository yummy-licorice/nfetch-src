import distros
import os

proc getInit*(): string =
    if detectOs(MacOSX):
        let init = "initd"
        return init
    if detectOs(Linux) and fileExists("/proc/1/comm"):
        let init_file = open("/proc/1/comm")
        let init = init_file.readLine()
        return init
    else:
        let init = "Cant detect init"
        return init


        
    
