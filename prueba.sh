listado=$(lsusb | awk '{print $6 }')
name=listado=$(lsusb | awk '{ print $7 }')

listaBlanca=/bin/listaBlanca.txt
listaNegra=/bin/listaNegra.txt




