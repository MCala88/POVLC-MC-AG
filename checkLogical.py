import random
import ast
from Api import *

longitud = len(numcancion)
listcancion = (random.sample(locacancion, longitud))
print(listcancion)

assert listcancion != locacancion
assert len(listcancion) == longitud
assert len(listcancion) == len(set(listcancion)) 
