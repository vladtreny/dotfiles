#!/usr/bin/python

import os
import os.path
import re
import sys

if len(sys.argv) > 2:
    print 'Usage: python setup.py [targetdir]'
    sys.exit(1)
elif len(sys.argv) == 2:
    TARGET = sys.argv[1]
    try:
        os.makedirs(TARGET)
    except OSError:
        pass
else:
    raise Exception('For now, please input a path.')

syncfiles = []
for name in os.listdir('.'):
    parts = re.split('\.sync$', name)
    if len(parts) > 1:
        syncfiles.append(parts[0])

src = [os.path.abspath('./%s.sync' % fname) for fname in syncfiles]
dst = ['%s/%s' % (TARGET, fname) for fname in syncfiles]

synclist = zip(src, dst)

for s, d in synclist:
    os.system('ln -is %s %s' % (s, d))
