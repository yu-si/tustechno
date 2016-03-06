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

        # execute Occipital,Parietal and Frontal Lobe function
        # Occipital Lobe View
        occipitalLobe = OccipitalLobe.OccipitalLobe()
        occipitalLobe.execute()

        # Parietal Lobe Sentiment

        # Frontal lobe Control


    @classmethod
    def confrim(self):
        true


