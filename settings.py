import os
import sys

from local_settings import *

if not SIKULI_PATH in sys.path: sys.path.append(SIKULI_PATH)
if not os.path.join(SIKULI_PATH,'Lib') in sys.path: sys.path.append(os.path.join(SIKULI_PATH,'Lib'))

#print SIKULI_PATH
#print "\n\n"
#for p in sys.path:
#    print p

from sikuli import *

#myPath = os.path.dirname(getBundlePath())
#if not myPath in sys.path: sys.path.append(myPath)
if not os.path.dirname(__file__) in sys.path: sys.path.append(os.path.dirname(__file__))

region = Region(*reg)