from functions import *

def trainCityLoop():
    while True:
        trainCityStart(region)
        collectResources(region)
        trainCityWait(region)


#from fights import *
#from loops_afk import *
#
#fightDarkRift(1, 10)
#fightStatueGorena(2, 10)
#trainCityLoop()
#
