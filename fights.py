import time

from functions import *
from functions_fight import *

#Necrolis Territory -- Begin
#Land of Bones
def fightWyvernCavern(mon_box=1, loop=1, max_troops=True):
    global region
    fightRun('land_of_bones__wyvern_bones.png', mon_box, loop, max_troops)

def fightFetidFissure(mon_box=1, loop=1, max_troops=True):
    global region
    fightRun('land_of_bones__fetid_fissure.png', mon_box, loop, max_troops)

#The Badlands
def fightCaveDemonEchoes(mon_box= 1, loop=1, max_troops=True):
    global region
    fightRun('the_badlands__cave_of_demons.png', mon_box, loop, max_troops)
#Necrolis Territory -- End

#Sanctaria Territory -- Begin
#Wailing Canyon
def fightIcewindTrail(mon_box= 1, loop=1, max_troops=True):
    global region
    fightRun('wailing_canyon__icewind_trail.png', mon_box, loop, max_troops)

#Anon Plain
def fightStonehenge(mon_box= 1, loop=1, max_troops=True):
    global region
    fightRun("anor_plain__stonehenge.png", mon_box, loop, max_troops)
#Sanctaria Territory -- End

#Common Territory 1 -- Begin
#Chasm of Despair
def fightChasmDespair(mon_box= 1, loop=1, max_troops=True):
    global region
    fightRun('chasm_despair__roiling_river.png', mon_box, loop, max_troops)

#Chthon Wilderness
def fightDauntlessGrove(mon_box= 1, loop=1, max_troops=True):
    global region
    fightRun('chthon_wilderness__dauntless_grove.png', mon_box, loop, max_troops)

def fightInfernalArena(mon_box= 1, loop=1, max_troops=True):
    global region
    fightRun('chthon_wilderness__infernal_arena.png', mon_box, loop, max_troops)

def fightPitImmolation(mon_box= 1, loop=1, max_troops=True):
    global region
    fightRun('chthon_wilderness__pit_of_immolation.png', mon_box, loop, max_troops)

#Burning Barrens
def fightValleyAsh(mon_box= 1, loop=1, max_troops=True):
    global region
    fightRun('burning_barrens__valley_of_ash.png', mon_box, loop, max_troops)

def fightStatueGorena(mon_box=1, loop=1, max_troops=True):
    global region
    fightRun('burning_barrens__statue_of_gorena.png', mon_box, loop, max_troops)

def fightDarkRift(mon_box=1, loop=1, max_troops=True):
    global region
    fightRun('burning_barrens__dark_rift.png', mon_box, loop, max_troops)

#Infernus
def fightChaosAlter(mon_box=1, loop=1, max_troops=True):
    global region
    fightRun('infernus_chaos_alter.png', mon_box, loop, max_troops)

def fightVez(loop=1):
    global region
    for i in range(loop):
        fightChaosAlter(3)
        fightMultiJoin()
        fightMultiClose()
        try:
            region.wait('interface_world.png', 10)
            region.click('interface_world.png')
        except FindFailed:
            pass
        print 'Finished box fight Vex %s' % i+1
#Common Territory 1 -- End