# -*- coding: utf-8 -*-
#
# Hippocampus
#
#
from repository.HippocampusRepository import HippocampusRepository
from service import Logger


class Hippocampus:

    def __init__(self):
        pass

    @staticmethod
    def save(info):
        repository = HippocampusRepository()
        repository.save(info)

        # output logs
        logger = Logger.Logger()
        logger.output(info)

    def find(self):
        pass


    def clear(self):
        pass

    def forget(self):
        pass