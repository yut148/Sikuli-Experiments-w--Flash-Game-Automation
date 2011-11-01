try:
    region.click('task_03.png')
except FindFailed:
    continue
region_npc_chars = Region(region.x + 251, region.y + 202, 494, 187)
loc = region_npc_chars.wait('task_03.png', 30)
click(Location(loc1.x - 30, loc1.y + 40))

region_npc_chat = Region(245 + region.x, 337 + region.y, 510, 140)
loc1 = region_npc_chat.wait('task_03_small.png', 30)
click(Location(loc1.x + 30, loc1.y))
region.onAppear('menu__bounty_quest__accept.png', questAcceptBounty)
region.onAppear('quest_accept.png', questAccept)
