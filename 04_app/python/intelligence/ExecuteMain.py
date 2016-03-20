#
# Executor
#
# python -m pip list
# python -m pip install Django==1.9.4
#
from entity import Person
from test import ExecuteSpec


print "Brain model with python."

# Call Person
person = Person.Person()
person.listener()

#Call Mock
#test = Mock.Mock()
#test.test()
