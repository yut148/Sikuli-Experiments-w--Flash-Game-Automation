from settings import *
from functions import *

def fightClick(box):
    global region
#    print box
#    region = Region(630,307,1003,618)
    if box == 1:
        loc = [294, 332]
    elif box == 2:
        loc = [407, 331]
    elif box == 3:
        loc = [541, 336]
    elif box == 4:
        ''
    else:
        return False
#    region.wait(Pattern("fight_menu.png"))
#    print loc
    if region:
        region.click(Location(int(loc[0] + region.x), int(loc[1] + region.y)))
#        region.click(Location(*loc))
    else:
        click(Location(*loc))


def fightRun(area, mon_box = 2, loop=1, max_troops=True):
    global region
    i = 0
    while i < loop:
        region.wait(area, 5)
        region.click(area)
        region.wait("fight_menu_single.png", 30)
        fightClick(mon_box)
        fightClose(max_troops)
        i += 1
        print 'Finished fight %s' % i

def fightClose(max_troops=False, dungeon=False):
    global region
    print 'Waiting for Fight Close Button'
    Settings.WaitScanRate = 0.33
    region.wait('fight_close.png', 600)
    Settings.WaitScanRate = 1
    region.click('fight_close.png')
    if max_troops:
        troopsMax(dungeon)

def troopsMax(dungeon=False):
    global region
    if not dungeon:
        region.wait("menu_assign.png", 120)
        region.click("menu_assign.png")
    else:
        region.wait('dungeon_menu_assign.png', 120)
        region.click('dungeon_menu_assign.png')
    region.wait("assign_maxall.png", 30)
    region.click("assign_maxall.png")
    time.sleep(2)
    region.click("close.png")
    time.sleep(2)

def fightMultiJoin():
    global region
    region.wait('fight_multi_join.png', 120)
    region.click('fight_multi_join.png')
    region.wait('fight_multi_ready.png', 30)
    region.click('fight_multi_ready.png')

def fightMultiClose(max_troops=False):
    global region
    print 'Waiting for Fight Close Button'
    Settings.WaitScanRate = 0.33
    region.wait('fight_multi_close.png', 600)
    Settings.WaitScanRate = 1
    region.click('fight_multi_close.png')
    if max_troops:
        troopsMax()

#########################################################################
##    Hot Keys                                                         ##
#########################################################################

def fightDungeon(event):
    global region
    region.click("dungeon_menu_attack.png")
    fightClose(True, True)


def fightCloseDungeon(event):
    fightClose(True, True)

Env.addHotkey('Z', KeyModifier.CTRL+KeyModifier.SHIFT, fightDungeon)
Env.addHotkey('X', KeyModifier.CTRL+KeyModifier.SHIFT, fightCloseDungeon)