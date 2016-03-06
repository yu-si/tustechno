# -*- coding: utf-8 -*-
#
# Logger
#
#
#
import os

from const import Config

class Logger:
    def output(self, info):
        # print os.getcwd()

        f = open(Config.OS.FILE_PATH, Config.OS.FILE_MODE)
        f.write(str(info) + "\r\n")
        f.close()
