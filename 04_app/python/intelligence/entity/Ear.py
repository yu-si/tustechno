# -*- coding: utf-8 -*-
#
# Ear
#
#
#
from entity.cell import Neuron
from factory.NeurotransmitterFactory import NeurotransmitterFactory


class Ear:
    def __init__(self):
        pass

    @staticmethod
    def listener():
        stimulus = "What's your name ?"

        neurotransmitter = NeurotransmitterFactory.create()
        neurotransmitter.setInfo(stimulus)

        neuron = Neuron.Neuron()
        neuron.trasmitForBrain(neurotransmitter)

    @staticmethod
    def behavior():
        pass

    @staticmethod
    def reflex():
        pass
