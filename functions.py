import time

from settings import *

imgs_dir = os.path.join(os.path.dirname(__file__), 'images')
addImagePath(imgs_dir)

#imgPath = list(getImagePath())
# to loop through
#for p in imgPath:
#        print p

def trainCityStart():
    global region
    region.click("train_building.png")
    region.wait("train_start.png")
    region.click("train_start.png")

def trainCityWait():
    global region
    region.wait("train_timeremain.png")
    region.waitVanish("train_timeremain.png")


def collectResources():
    global region
    region.click("interface_castle.png")
    region.wait("castle_undead_copper.png")
    region.click("castle_undead_copper.png")
    region.wait("collect_collect_all.png")
    region.click("collect_collect_all.png")
    time.sleep(2)
    region.click("interface_world.png")
    time.sleep(2)


def cityExit(top=True):
    global region
    try:
        #based on Regia
        region.click(Pattern('town_exit.png').targetOffset(35,50))
    except FindFailed:
        try:
            #Based on Sanctaria
            region.click(Pattern("town_exit_2.png").targetOffset(10,27))
        except FindFailed:
            print 'Exit Not Found'


def allianceEnter():
    global region
    region.click('menu_alliance.png')
    region.wait('alliance__enter_alliance.png', 30)
    region.click('alliance__enter_alliance.png')

def allianceInformant():
    global region
    region.wait('alliance__receiver_text.png', 30)
    pos = region.find('alliance__receiver_text.png')
    region.click(Location(pos.x - 5, pos.y + 58))

def allianceQuest():
    global region
    allianceInformant()
    region.wait('alliance__quest_menu.png', 30)
    region.click('alliance__quest_menu.png')

def allianceQuestFinish(full=False):
    global region
    if full:
        allianceEnter()
        allianceQuest()
    region.wait('alliance__quest_finish.png', 30)
    region.click('alliance__quest_finish.png')
    region.wait('alliance__quest_close.png', 30)
    region.click('alliance__quest_close.png')

def allianceQuestAccept():
    global region
    region.wait('alliance__quest_accept.png', 30)
    region.click('alliance__quest_accept.png')

# Quest description box
# region = Region(630,307,1003,618)
# reg1 = Region(320 + region.x, 212 + region.y, 335, 40)

def townQuestCharClick(box=1):
    global region
    #Character Boxes
    if box == 1:
        x = 327
    elif box == 2:
        x = 443
    elif box == 3:
        x = 555
    elif box == 4:
        x = 675
    else:
        return False
    region.click(Location(x + region.x, 285 + region.y))
# reg1.find('task_03.png')
# reg1.click('task_03.png').targetOffset(-20, 30)

#def bountyQuestAccept():
#    global region
#    #click bounty scroll
#    region.click(Location(490, 254))

#def getQuestDetails():
#    global region
#    region.click(Location(444 + region.x, 331 + region.y))
#    #select all + copy