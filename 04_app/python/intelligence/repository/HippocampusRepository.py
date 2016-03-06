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
        print "Neurotransmitter;"
        print info

        ins = Cache()
        storage = ins.storage
        storage.append(info)
        print "Commit to memory;" + str(len(storage))
        print storage

    def find(self):
        return self.localStorage

    def clear(self):
        pass

    def forget(self):
        pass

