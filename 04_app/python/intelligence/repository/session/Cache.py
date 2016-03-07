# -*- coding: utf-8 -*-
#
# Cache
#
#
#


class Cache:

    _singleton = None
    storage = []

    def __init__(self, *args, **kwargs):
        pass

    def __new__(cls, *argc, **argv):
        if cls._singleton == None:
            cls._singleton = object.__new__(cls)
        return cls._singleton
