# -*- coding: utf-8 -*-
#
# Ear
#
#
#
import service
from const import Config
from entity.cell import Neuron
from factory.NeurotransmitterFactory import NeurotransmitterFactory

from util.DateUtil import DateUtil


class Ear:
    def __init__(self):
        pass

    @staticmethod
    def listener():
        type = Config.TissueType.EAR
        time = Config.Common.TIME
        util = DateUtil()
        date = util.getCurrentTime()

        stimulus = ({type: "Excuse me.", time: date},
                    {type: "I'm looking for Tokyo International Forum ?", time: date})
        stimulus = stimulus + ({type: "Where is it ?", time: date},
                               {type: "How can I go there ?", time: date})

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
