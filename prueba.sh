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
		
	#statements
		echo "no match"
		echo -e "Ha ingresado la USB $nombre, es de confianza? ingrese s en caso de afirmativo"
		read usb

		if [[ "$usb" == "s" ]]; then
			echo "$dispositivo" >> /bin/listaBlanca.txt
		else 
			echo "$dispositivo" >> /bin/listaNegra.txt
		fi

	fi
	#touch $listaBlanca >> $dispositivo
done


#volumen log volumen fisico


