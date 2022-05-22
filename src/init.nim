proc getInit*(): string =
    let init_file = open("/proc/1/comm")
    let init = init_file.readLine()
    return init


        
    
