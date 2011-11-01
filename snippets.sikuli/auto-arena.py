region.click('menu__bottom__arena.png')
#click on enter challenge
loc = region.wait('menu__arena__challenge.png', 30)
region.click(Location(loc.x + 495, loc.y - 4))
loc = region.wait('menu__arena__challenge-1.png')
#Click on last challenger
region.click(Location(579 + region.x, 496 + region.y))
loc = region.wait('fight_multi_close.png', 30)
region.click(loc)

