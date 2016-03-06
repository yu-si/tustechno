# -*- coding: utf-8 -*-
#
# Brain
#
#
from entity.tissue import TemporalLobe, OccipitalLobe, FrontalLobe
from entity.tissue.Hippocampus import Hippocampus


class Brain:
    def __init__(self):
        self.hippocampus = Hippocampus
        self.temporalLobe = TemporalLobe
        self.occipitalLobe = OccipitalLobe
        self.frontalLobe = FrontalLobe

    @staticmethod
    def recept(trasmitter):
        info = trasmitter.info
        # save
        hippocampus = Hippocampus
        hippocampus.save(info)

        # execute Frontal lobe ,Parietal and Occipital Lobe function


    @classmethod
    def confrim(self):
        true


