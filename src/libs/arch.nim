import system

proc getArch*(): string =
    return system.hostCPU