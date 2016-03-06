# -*- coding: utf-8 -*-
#
# ExecuteSpec
#
#
#



class ExecuteSpec:
    # default constructor
    def __init__(self):
        pass


    def test(cls):

        L = ["1" ,"2"]
        L = L + ["3"]

        print L[2]
        print L[0:3]

        T = (9,8,7)
        print T[2]
        print T[0:3]

        G = [1,[2,3,4],5]
        print G[1]

        D = {'key':"1", 'test':"test"}
        print D["key"]

        import sys
        print dir(sys)
