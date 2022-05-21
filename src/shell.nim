import os

proc getShell*(): string =
    os.getEnv("SHELL")

