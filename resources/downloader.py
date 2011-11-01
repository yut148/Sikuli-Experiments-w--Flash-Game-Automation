import os
import urllib

url_root = 'http://s4.kongregate.callofgods.com/'
dir_root = './'

for line in open('./list'):
    if not line.count(url_root):
        continue
    dir = dir_root
    parts = line[len(url_root):].split('/')
#    print 'url : %s' % line[len(url_root):]
    for num, folder in enumerate(parts):
        dir = os.path.join(dir, folder)
#        print '''
#    dir : %s
#    folder : %s
#''' % (dir, folder)
        if not os.path.exists(dir):
            if num < len(parts) - 1:
                os.makedirs(dir)
            else:
                urllib.urlretrieve(line, dir.strip())
                print 'Downloaded: %s\n\tTo: %s' % (folder, dir)

