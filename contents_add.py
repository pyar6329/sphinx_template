#!/usr/bin/env python
# -*- coding: utf-8 -*-
import re
import os

cwd = os.getcwd()

importFile = open(cwd + '/source/index.rst', 'r')
lineList = importFile.readlines()
importFile.close()

if not os.path.isdir(cwd + '/source/contents'):
    os.system('mkdir ' + cwd + '/source/contents')

exportFile = open(cwd + '/source/index_output.rst', 'w')

maxdepth_pattern = re.compile(r'maxdepth')
project_pattern = re.compile(r'^Welcome')

title_length = 0

for x in lineList:
    if project_pattern.search(x):
        project_name = os.path.basename(cwd)
        title_length = len(project_name)
        exportFile.write(project_name + '\n')

    elif maxdepth_pattern.search(x):
        exportFile.write('  :maxdepth: 1' + '\n')
        exportFile.write('\n')
        for contents_num in xrange(1, 17):
            contents_num_str = str(contents_num)
            tmp_w = ''
            if contents_num < 10:
                tmp_w = '  contents/0' + contents_num_str
                os.system('cp ' + cwd + '/../template.rst ' + cwd +
                          '/source/contents/0' + contents_num_str + '.rst')

                # os.system('touch ' + cwd + '/source/contents/0' +
                #           contents_num_str + '.rst')
            else:
                tmp_w = '  contents/' + contents_num_str
                os.system('cp ' + cwd + '/../template.rst ' + cwd +
                          '/source/contents/' + contents_num_str + '.rst')
                # os.system('touch ' + cwd + '/source/contents/' +
                #           contents_num_str + '.rst')

            exportFile.write(tmp_w)
            if not contents_num == 17:
                exportFile.write('\n')

    elif not title_length == 0:
        equal_str = ''
        for x in xrange(title_length):
            equal_str += '='
        exportFile.write(equal_str + '\n')
        title_length = 0

    else:
        exportFile.write(x)

exportFile.close()

os.system('rm -rf ' + cwd + '/source/index.rst')
os.system('mv ' + cwd + '/source/index_output.rst '
          + cwd + '/source/index.rst')
