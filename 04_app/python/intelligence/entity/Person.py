# -*- coding: utf-8 -*-
#
# Person
#
#
#
from entity.Arm import Arm
from entity.Body import Body
from entity.Ear import Ear
from entity.Eye import Eye
from entity.Foot import Foot
from entity.tissue import Brain


class Person:
    # default constructor
    def __init__(self):
        self.name = "Unknown name"
        self.age = "Unknown age"
        self.gender = 0
        self.brain = Brain
        self.eye = Eye
        self.ear = Ear
        self.body = Body
        self.arm = Arm
        self.foot = Foot

    @classmethod
    def listener(cls):
        print "Call all listener."
        eye = Eye.listener()
        ear = Ear.listener()
        body = Body.listener()
        arm = Arm.listener()
        foot = Foot.listener()


    def behavior(cls):
        pass

    def reflex(self):
        pass
