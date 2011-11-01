import time

from functions import closeMenus
from settings import *

class alliance():
    def __init__(self):
        self.region_npc_menu = False
        self.in_alliance = False
        self.inAlliance()

    def inAlliance(self, enter=False):
        global region
        try:
            loc = region.find('alliance__screen_banner.png')
            self.region_npc_menu = Region(loc.x + 173, loc.y + 182, 563, 236)
            self.in_alliance = True
            return self.in_alliance
        except FindFailed:
            self.in_alliance = False
            if enter:
                self.enter()
            else:
                return self.in_alliance

    def enter(self):
        global region
        if not self.in_alliance:
            try:
                region.click('menu__bottom__alliance.png')
                loc = region.wait('alliance__enter_alliance.png', 30)
                region.click(loc)
                self.inAlliance()
                return self.in_alliance
            except FindFailed:
                raise Exception('Main menu not on screen')

    def exit(self):
        global region
        loc = region.wait('alliance__exit.png', 30)
        region.click(loc)
        self.in_alliance = False

    def daily(self):
        self.enter()
        self.chestGet()
        self.donateSilver()
        self.questRun()
        self.exit()

    def receiver(self):
        global region
        self.enter()
        loc = region.wait('alliance__receiver_text.png', 30)
        region.click(Location(loc.x - 5, loc.y + 58))

    def donateSilver(self):
        self.receiver()
        loc = self.region_npc_menu.wait('alliance__receiver__donate_silver.png', 30)
        self.region_npc_menu.click(loc)
        loc = self.region_npc_menu.wait('alliance__menu__all.png', 30)
        self.region_npc_menu.click(loc)
        time.sleep(1)
        self.region_npc_menu.click('alliance__menu__contribute.png')
        loc = self.region_npc_menu.wait('menu__confirm.png', 30)
        self.region_npc_menu.click(loc)
        time.sleep(1)
        closeMenus(self.region_npc_menu.above(50))

    def questMenu(self):
        self.enter()
        self.receiver()
        loc = self.region_npc_menu.wait('alliance__menu__quest.png', 30)
        self.region_npc_menu.click(loc)

    def questRun(self):
        self.enter()
        self.questMenu()
        reg = self.region_npc_menu.below(100)
        reg.onAppear('quest_finish.png', self.questFinishClick)
        reg.onAppear('menu__accept.png', self.questAccept)
        reg.observe(15)

    def questFinish(self, full=False):
        self.enter()
        if full:
            try:
                self.questMenu()
            except FindFailed:
                pass
        self.questFinishClick()
    
    def questFinishClick(self, event=False):
        loc = self.region_npc_menu.below(120).wait('quest_finish.png', 30)
        region.click(loc)
        loc = self.region_npc_menu.below(120).wait('quest_close.png', 30)
        region.click(loc)

    def questAccept(self, event=False):
        self.enter()
        self.questMenu()
        loc = self.region_npc_menu.below(100).wait('menu__accept.png', 30)
        self.region_npc_menu.click(loc)
        closeMenus(self.region_npc_menu.above(120))

    def chestGet(self):
        global region
        self.enter()
        loc = region.wait('alliance__treasure_chest.png', 30)
        region.click(loc)
        #menu box
#        self.region_npc_menu = Region(loc.x - 177, loc.y - 20, 554, 223)
        self.region_npc_menu.wait('alliance__treasure_chest__welfare.png', 30)
        self.region_npc_menu.click(loc)
        reg_under = self.region_npc_menu.below(70)
        loc = reg_under.wait('quest_close.png', 30)
        reg_under.click(loc)
        loc = self.region_npc_menu.wait('alliance__treasure_chest__battle_awards.png')
        self.region_npc_menu.click(loc)
        loc = reg_under.wait('quest_close.png', 30)
        reg_under.click(loc)
        closeMenus(self.region_npc_menu)
