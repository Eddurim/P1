listado=$(lsusb | awk '{print $6 }')
name=listado=$(lsusb | awk '{ print $7 }')

listaBlanca=/bin/listaBlanca.txt
listaNegra=/bin/listaNegra.txt

for dispositivos in $listado; do
	cad="$(grep -x $dispositivos $listaBlanca)"
	cad2="$(grep -x $dispositivos $listaNegra)"
	if [ "$dispositivos" == "$cad" ];
	then 
		echo "match"
elif [ "$dispositivos" == "$cad2" ]
	then
		echo -e "USB ($nombre) detectada en lista negra, no se va a montar"
	else
		





