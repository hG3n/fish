#!/usr/bin/env python
import sys
from collections import OrderedDict

# get directory history in reverse order
chosen_dir = int(sys.argv[-1])
dir_list = sys.argv[1].split(' ')
dir_list = dir_list[::-1]
dir_list = dir_list[1:]

dir_list = list(OrderedDict.fromkeys(dir_list))

print dir_list[chosen_dir+1]

#chosen_dir = int(sys.argv[-1])

# remove duplicates
#dir_hist_single = list(OrderedDict.fromkeys(dir_hist[2:-1]))
#print dir_hist_single[chosen_dir-1]
