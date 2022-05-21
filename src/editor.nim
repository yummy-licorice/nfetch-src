import os

proc getEditor*(): string =
    os.getEnv("EDITOR")

