#!/usr/bin/env python
import sys
from collections import OrderedDict

# get directory history in reverse order
args = sys.argv[::-1]
dir_list = args[0].split(' ')
dir_list = dir_list[::-1]

# remove duplicates
dir_list_single = list(OrderedDict.fromkeys(dir_list[1:]))
dir_list_single = dir_list_single[1:]

for i in range(len(dir_list_single[-10:])):
    print('%3i:  %s' %(i, dir_list_single[i]))

