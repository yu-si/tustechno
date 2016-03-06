# -*- coding: utf-8 -*-
#
# Date Util
#
#
#
import datetime
import locale


class DateUtil:
    # default constructor
    def __init__(self):
        pass

    def getCurrentTime(self):
        date = datetime.datetime.today()
        return date.strftime("%Y-%m-%d %H:%M:%S")
