# -*- coding: utf-8 -*-
#
# Eye
#
#
#
from const import Config
from entity.cell import Neuron
from factory.NeurotransmitterFactory import NeurotransmitterFactory
from util.DateUtil import DateUtil


class Eye:
    def __init__(self):
        pass

    @staticmethod
    def listener():
        type = Config.TissueType.EYE
        time = Config.Common.TIME
        util = DateUtil()
        date = util.getCurrentTime()
        stimulus = ({type: "Man is Standing in front of me.", time: date},
                    {type: "He has some guide books.", time: date})

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
