# -*- coding: utf-8 -*-
#
# NeurotransmitterFactory
#
#
#
from entity.material import Neurotransmitter


class NeurotransmitterFactory:
    def __init__(self):
        pass

    @staticmethod
    def create():
        return Neurotransmitter.Neurotransmitter()
