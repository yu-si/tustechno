# -*- coding: utf-8 -*-
#
# Logger
#
#
#
import os

from const import Configure

class Logger:
    def output(self, info):
        # print os.getcwd()

        f = open(Configure.OS.FILE_PATH, Configure.OS.FILE_MODE)
        f.write(str(info) + "\r\n")
        f.close()
