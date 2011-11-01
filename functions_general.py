def mpos():
    global region
    pos = Env.getMouseLocation()
    return [pos.x - region.x, pos.y - region.y]