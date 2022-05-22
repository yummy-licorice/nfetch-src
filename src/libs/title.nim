import strutils
import os

proc getUsername*(): string = 
   let userName = os.getEnv("USER") 
   return userName
proc getHostname*(): string = 
   let hostName = readFile("/etc/hostname")
   return hostName



