# -*- coding: utf-8 -*-
#
# Hippocampus
#
#
from repository.HippocampusRepository import HippocampusRepository


class Hippocampus:

    def __init__(self):
        pass

    @staticmethod
    def save(info):
        repository = HippocampusRepository()
        repository.save(info)


    def find(self):
        pass


    def clear(self):
        pass

    def forget(self):
        pass