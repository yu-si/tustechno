# -*- coding: utf-8 -*-
#
# Hippocampus Repository
#
#
#
from repository.session.Cache import Cache


class HippocampusRepository:


    def __init__(self):
        self.localStorage = ()
        self.seq = 0

    def save(self, info):
        storage = self.localStorage

        storage = storage + info
        print
        print "Commit to memory;" + str(len(storage))
        print storage
        #print dir(self.localStorage)
        ins = Cache()

        print ins

    def find(self):
        return self.localStorage

    def clear(self):
        pass

    def forget(self):
        pass

