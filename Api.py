# https://docs.python.org/3/library/xml.etree.elementtree.html#module-xml.etree.ElementTree

import xml.etree.ElementTree as ET

tree = ET.parse('Dic.xml')

root = tree.getroot()


numerocancion = []

nombrecancion = []

localizacioncancion = []

for child in list(root.iter('id_cancion')):
    numerocancion.append(child.text) 
     
numcancion = numerocancion

for cancion in root.findall('cancion'):
    nombre = cancion.find('nombre').text
    nombrecancion.append(nombre)

nomcancion = nombrecancion

for cancion in root.findall('cancion'):
    localizacion = cancion.find('localizacion').text
    localizacioncancion.append(localizacion)

locacancion = localizacioncancion

