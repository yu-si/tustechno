# -*- coding: utf-8 -*-
#
# Neuron Cell
#
#
#

from pprint import pprint

from entity.tissue import Brain


class Neuron:
    def __init__(self):
        pass

    @staticmethod
    def trasmitForBrain(nerontransmitter):
        pprint(nerontransmitter)
        brain = Brain.Brain()
        brain.recept(nerontransmitter)


    def transmitForCell(self):
        pass

    def recept(self):
        pass