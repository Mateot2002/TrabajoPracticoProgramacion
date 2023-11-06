Algoritmo tp
	
	Definir vuelo1, vuelo2, vuelo3, vuelo4 Como Caracter
	Definir i, j, opcion_ruta_aerea, contador_vuelo2, contador_vuelo1, contador_vuelo3, contador_vuelo4, fila1, fila2, columna, opcion_busqueda, opcion_pasaje_vendidos, opcion_a_realizar Como Entero
	
	Definir preciosVuelos Como Real
	
    Dimension preciosVuelos[4] 
    preciosVuelos[0] = 150000
    preciosVuelos[1] = 120000
    preciosVuelos[2] = 70000
    preciosVuelos[3] = 95000 
	
	fila1 = 120
	fila2 = 80
	columna = 7

	Dimension vuelo1[fila1, columna]
	Dimension vuelo2[fila1, columna]
	Dimension vuelo3[fila2, columna]
	Dimension vuelo4[fila2, columna]
	
	Definir rutas Como Cadena
    Dimension rutas[4]
    rutas[0] = " Buenos Aires - Baroliche "
    rutas[1] = " Buenos Aires - Salta "
    rutas[2] = " Rosario - Buenos Aires " 
    rutas[3] = " Mar Del Plata - Mendoza "
	
	Para i = 0 Hasta 120 - 1 Hacer
		Para j = 0 Hasta 5 - 1 Hacer
			vuelo1[i , j] = ""
		FinPara
	FinPara
	
	Para i = 0 Hasta 120 - 1 Hacer
		Para j = 0 Hasta 5 - 1 Hacer
			vuelo2[i , j] = ""
		FinPara
	FinPara
	
	Para i = 0 Hasta 80 - 1 Hacer
		Para j = 0 Hasta 5 - 1 Hacer
			vuelo3[i , j] = ""
		FinPara
	FinPara
	
	Para i = 0 Hasta 80 - 1 Hacer
		Para j = 0 Hasta 5 - 1 Hacer
			vuelo4[i , j] = ""
		FinPara
	FinPara
	
	Repetir
		
		Escribir "Ingresé la opción que le interesa realizar: "
		Escribir "1: Venta pasaje"
		Escribir "2: Buscar pasaje vendido"
		Escribir "3: Buscar pasajero"
		Escribir "4: Ordenar y mostrar lista pasajeros"
		Escribir "        a: Por número de asiento Ascendente"
		Escribir "        b: Por número de asiento Descendente"
		Escribir "5: Listado/s: "
		Escribir "        a: Cantidad de pasajes vendido por ruta aérea"
		Escribir "        b: Porcentaje de ventas por ruta aérea"
		Escribir "6:Ingrese SALIR si quiere salir del programa"
		
		Leer opcion_a_realizar
		Repetir
			si (opcion_a_realizar <> 1 Y opcion_a_realizar <> 2 Y opcion_a_realizar <> 3 Y opcion_a_realizar <> 4 Y opcion_a_realizar <> 5 Y opcion_a_realizar <> 6)
				Escribir "Ingreso Opcion invalida, vuelva a ingresar"
				Leer opcion_a_realizar
			FinSi
		Hasta Que (opcion_a_realizar = 1 o Opcion_a_realizar = 2 o Opcion_a_realizar = 3 o Opcion_a_realizar = 4 o Opcion_a_realizar = 5 o Opcion_a_realizar = 6)
		
		
		Segun (opcion_a_realizar)
			
			Caso 1: 
				Escribir "Ingrese la ruta aérea la cuál quiere comprar un pasaje"
				Escribir "1: Buenos Aires - Bariloche"
				Escribir "2: Bueno Aires - Salta"
				Escribir "3: Rosario - Buenos Aires"
				Escribir "4: Mar Del Plata - Mendoza"
				Leer opcion_ruta_aerea
				
				segun (opcion_ruta_aerea)
					caso 1:
						cargaDatos(vuelo1, fila1, columna, contador_vuelo1)
						contador_vuelo1 = contador_vuelo1 + 1
						Mostrar "Ruta : Buenos Aires - Bariloche"
						Mostrar "Precio : "  CalculoPasaje120(vuelo1, contador_vuelo1,preciosVuelos, n)
					caso 2:
						cargaDatos(vuelo2, fila1,columna, contador_vuelo2)
						contador_vuelo2 = contador_vuelo2 + 1
						mostrar "Ruta : Buenos Aires - Salta"
						Mostrar "Precio : "  CalculoPasaje120(vuelo2, contador_vuelo2,preciosVuelos, n)
					caso 3: 
						cargaDatos(vuelo3, fila2, columna, contador_vuelo3)
						contador_vuelo3 = contador_vuelo3 + 1
						Mostrar "Ruta: Rosario - Buenos Aires"
						Mostrar "Precio: " CalculoPasaje801(vuelo3, contador_vuelo3,preciosVuelos, n)
					caso 4:
						
						cargaDatos(vuelo4, fila2, columna, contador_vuelo4)
						contador_vuelo4 = contador_vuelo4 + 1
						Mostrar "Ruta: Mar Del Plata - Mendoza"
						Mostrar "Precio: " CalculoPasaje802(vuelo4, contador_vuelo4,preciosVuelos, n)
				FinSegun
				
			caso 2:
				
				Escribir "Elija la ruta del pasaje vendido a buscar"
                Escribir "1. Buenos Aires - Bariloche"
                Escribir "2. Bueno Aires - Salta"
                Escribir "3. Rosario - Buenos Aires"
                Escribir "4. Mar Del Plata - Mendoza"
                Escribir "5. Salir"
                Leer opcion_busqueda
				
				Repetir
					si opcion_busqueda <= 0 o opcion_busqueda >= 6 Entonces
						Escribir "Ingreso opcion invalida, vuelva a ingresar"
						Leer opcion_busqueda
				    FinSi
				Mientras Que opcion_busqueda > 0 y opcion_busqueda < 6 
                
				Segun (opcion_busqueda) Hacer
					
                    caso 1: 
						
                        BusquedaVuelo1(vuelo1,fila1,columna)
						Escribir  "Ruta: Buenos Aires - Bariloche"
					caso 2: 
						BusquedaVuelo1(vuelo2,fila1,columna)
						Escribir "Ruta: Buenos Aires - Salta"	
					caso 3:
					    BusquedaVuelo1(vuelo3,fila2,columna)
						Escribir "Ruta: Rosario - Buenos Aires"
					caso 4:
						BusquedaVuelo1(vuelo4,fila2,columna)
						Escribir "Mar Del Plata - Mendoza"
				FinSegun
			caso 3:
				Escribir "Ingrease la ruta en la cual quiere encontrar a un pasajeros"
				Escribir "1. Buenos Aires - Bariloche"
                Escribir "2. Bueno Aires - Salta"
                Escribir "3. Rosario - Buenos Aires"
                Escribir "4. Mar Del Plata - Mendoza"
                Escribir "5. Salir"
				Leer opcion_busqueda_pasajero
				Segun (opcion_busqueda_pasajero) Hacer
					caso 1:
						BusquedaVuelo2(vuelo1,fila1,columna)
						Escribir "Buenos Aires - Bariloche"
					caso 2: 
						BusquedaVuelo2(vuelo2,fila1,columna)
						Escribir "Buenos Aires - Salta"
					caso 3:
						BusquedaVuelo2(vuelo3,fila2,columna)
						Escribir "Rosario - Buenos Aires"
					caso 4:
						BusquedaVuelo2(vuelo4,fila2,columna)
					    Escribir "Mar Del Plata - Mendoza"
				FinSegun
				
			Caso 4: 
				Escribir "Seleccione ruta aerea para ver listado de pasajeros en orden"
				Escribir "1: Buenos Aires - Bariloche"
				Escribir "2: Buenos Aires - Salta"
				Escribir "3: Rosario - Buenos Aires"
				Escribir "4: Mar del Plata - Mendoza"
				Repetir
					Leer opcion_orden
					Segun opcion_orden Hacer
						caso 1:
							Repetir
								Escribir "Si desea ver listado de forma ascendente presione 1"
								Escribir "Si desea ver listado de forma descendente presiona 2"
								Leer opcion_orden
								si opcion_orden == 1 Entonces
									lista1ascendente(vuelo1, fila1, columna, contador_vuelo1)
								FinSi
								si opcion_orden == 2 Entonces
									lista1descendente(vuelo1, fila1, columna, contador_vuelo1)
									
								FinSi
							Mientras Que opcion_orden <> 1 o opcion_orden <> 2
						caso 2:
							Repetir
								Escribir "Si desea ver listado de forma ascendente presione 1"
								Escribir "Si desea ver listado de forma descendente presiona 2"
								Leer opcion_orden
								si opcion_orden == 1 Entonces
									lista1ascendente(vuelo2, fila1, columna, contador_vuelo2)
								SiNo
									
									lista1descendente(vuelo2, fila1, columna, contador_vuelo2)
								FinSi
							Mientras Que opcion_orden <> 1 o opcion_orden <> 2
						caso 3:
							Repetir
								Escribir "Si desea ver listado de forma ascendente presione 1"
								Escribir "Si desea ver listado de forma descendente presiona 2"
								Leer opcion_orden
								si opcion_orden == 1 Entonces
									lista2ascendente(vuelo3, fila2, columna, contador_vuelo3)
								SiNo
									
									lista2descendente(vuelo3, fila2, columna, contador_vuelo3)
								FinSi
							Mientras Que opcion_orden <> 1 o opcion_orden <> 2
						caso 4:
							Repetir
								Escribir "Si desea ver listado de forma ascendente presione 1"
								Escribir "Si desea ver listado de forma descendente presiona 2"
								Leer opcion_orden
								si opcion_orden == 1 Entonces
									lista2ascendente(vuelo4, fila2, columna, contador_vuelo4)
								SiNo
									
									lista2descendente(vuelo4, fila2, columna, contador_vuelo4)
								FinSi
							Mientras Que opcion_orden <> 1 o opcion_orden <> 2
					FinSegun
			caso 5:		
				Definir opcion_pasaje_vendidos como entero
				Mostrar "Seleccione ruta para ver la cantidad de pasajes vendidos"
				
				Mostrar "1. Buenos Aires - Bariloche"
				mostrar "2. Buenos Aires - Salta"
				Mostrar "3. Rosario - Buenos Aires"
				Mostrar "4. Mar del Plata - Mendoza"
				Leer opcion_pasaje_vendidos
				
				Repetir
					
					Segun opcion_pasaje_vendidos Hacer
						caso 1: 
							Mostrar "La cantidad de vuelos vendidos: ", contador_vuelo1
							Mostrar "El porcentaje de ventas es: % ", (contador_vuelo1 * 100) / 120
						caso 2: 
							Mostrar "La cantidad de vuelos vendidos: ", contador_vuelo2
							Mostrar "El porcentaje de ventas es: % ", (contador_vuelo2 * 100) / 120
						caso 3: 
							Mostrar "La cantidad de vuelos vendidos: ", contador_vuelo3
							Mostrar "El porcentaje de ventas es: % ", (contador_vuelo3 * 100) / 80
						caso 4: 
							Mostrar "La cantidad de vuelos vendidos: ", contador_vuelo4
							Mostrar "El porcentaje de ventas es: % ", (contador_vuelo4 * 100) / 80
					FinSegun
					
					Si opcionPVendidos > 4 o opcionPVendidos < 1 Entonces
						
						Mostrar "Ingrese una opcion valida"
						
					FinSi
					
				Mientras Que opcionPVendidos < 1 o opcionPVendidos > 4
		FinSegun
		
	Mientras Que opcion_a_realizar <> 6
FinAlgoritmo

Subproceso cargaDatos(vuelos Por Referencia, n, m, contador_vuelo)
	
	Definir equipaje Como Logico
	
	vuelos[contador_vuelo,0] = ConvertirATexto(contador_vuelo+1)
	
	Mostrar "Asiento: " vuelos[contadorVuelo,0]
	
	Mostrar "Ingrese su nombre y apellido"
	Leer vuelos[contador_vuelo,1]
	
	Mostrar "Ingrese su DNI"
	Leer vuelos[contador_vuelo,2]
	
	Mostrar "Ingrese su numero de telefono"
	Leer  vuelos[contador_vuelo,3]
	
	Mostrar "Desea llevar equipaje en bodega? Ingrese Verdadero/Falso"
	Leer vuelos[contador_vuelo,4] = Mayusculas(equipaje)
	
	Mostrar "Ingrese su numero de pasajero frecuente"
	Leer vuelos[contador_vuelo,5]	
	
	
	Mostrar "Nombre y Apellido: " vuelos[contadorVuelo,1]
    Mostrar "DNI: " vuelos[contadorVuelo,2]
    Mostrar "Telefono: " vuelos[contadorVuelo,3]
    Mostrar "Equipaje en bodega: " vuelos[contadorVuelo,4]
    Mostrar "Numero de pasajero frecuente: " vuelos[contadorVuelo,5]
    Mostrar "Costo pasaje: " vuelos[contadorVuelo,6]

	


	
FinSubProceso

SubProceso BusquedaVuelo1(vuelos,f,c)
	Definir i, asientoAbuscar Como Entero
	Definir encontrado Como Logico
	
	i=0
	
	Mostrar "Ingrese el asiento que desea buscar"
	Leer asientoAbuscar
	
	
	encontradro = Falso
	
	Mientras (i<f) Hacer
		
		Si vuelos[i,0]==asientoABuscar
			
			
			Mostrar  ("Nombre y apellido: "), vuelos[i,1]
			Mostrar  ("Dni: "), vuelos[i,2]
			encontrado = Verdadero
			
		FinSi
		i = i+1
	FinMientras
	Si encontrado = Falso Entonces
		
		Mostrar "Pasajero no encontrado"
	FinSi
FinSubProceso

SubProceso BusquedaVuelo2(vuelos,f,c)
    Definir i Como Entero
    Definir encontrado Como Logico
    Definir nombreABuscar Como Caracter
	
    i=0
	
    Mostrar "Ingrese el nombre y apellido del pasajero a buscar"
    Leer nombreABuscar
	
	
    encontradro = Falso
	
    Mientras (i<f) Hacer
		
        Si vuelos[i,1]==nombreABuscar
			
			
            Mostrar  ("Nombre y apellido: "), vuelos[i,1]
            Mostrar  ("Dni: "), vuelos[i,2]
            encontrado = Verdadero
			
        FinSi
        i = i+1
    FinMientras
    Si encontrado = Falso Entonces
		
        Mostrar "Pasajero no encontrado"
    FinSi
FinSubProceso

SubProceso lista1ascendente(vueloDestino por Referencia, filas, columnas, contador_vuelo)
	
	Para i = 0 hasta filas-1 Hacer
		
		
		Si vueloDestino[i,1] <> ""
			Escribir "Numero de asiento es: " vueloDestino[i,0]
			Escribir "Nombre y apellido de pasajero: " vueloDestino[i,1]
			Escribir "El Dni del pasajero "  vueloDestino[i,2]
			Escribir "El telefono del pasajero " vueloDestino[i,3]
			Escribir "El equipaje es " vueloDestino[i,4]
			Escribir "El numero del pasajero frecuentes es " vueloDestino[i,5]
		FinSi
		
		
	FinPara
	
FinSubProceso
SubProceso lista1descendente(vueloDestino por Referencia, filas, columnas, contador_vuelo)
	
	Para i = filas-1  hasta 0 con Paso -1 Hacer
		
		
		Si vueloDestino[i,1] <> ""
			Escribir "Numero de asiento es: " vueloDestino[i,0]
			Escribir "Nombre y apellido de pasajero: " vueloDestino[i,1]
			Escribir "El Dni del pasajero "  vueloDestino[i,2]
			Escribir "El telefono del pasajero " vueloDestino[i,3]
			Escribir "El equipaje es " vueloDestino[i,4]
			Escribir "El numero del pasajero frecuentes es " vueloDestino[i,5]
		FinSi
		
		
	FinPara
	
FinSubProceso

SubProceso lista2ascendente(vueloDestino por Referencia, filas, columnas, contador_vuelo)
	
	Para i = 0 hasta filas2 -1 Hacer
		
		
		Si vueloDestino[i,1] <> ""
			Escribir "Numero de asiento es: " vueloDestino[i,0]
			Escribir "Nombre y apellido de pasajero: " vueloDestino[i,1]
			Escribir "El Dni del pasajero "  vueloDestino[i,2]
			Escribir "El telefono del pasajero " vueloDestino[i,3]
			Escribir "El equipaje es " vueloDestino[i,4]
			Escribir "El numero del pasajero frecuentes es " vueloDestino[i,5]
		FinSi
		
		
	FinPara
	
FinSubProceso
SubProceso lista2descendente(vueloDestino por Referencia, filas, columnas, contador_vuelo)
	
	Para i = filas2-1 hasta 0 con paso -1 Hacer
		
		
		Si vueloDestino[i,1] <> ""
			Escribir "Numero de asiento es: " vueloDestino[i,0]
			Escribir "Nombre y apellido de pasajero: " vueloDestino[i,1]
			Escribir "El Dni del pasajero "  vueloDestino[i,2]
			Escribir "El telefono del pasajero " vueloDestino[i,3]
			Escribir "El equipaje es " vueloDestino[i,4]
			Escribir "El numero del pasajero frecuentes es " vueloDestino[i,5]
		FinSi
		
		
	FinPara
	
FinSubProceso


Funcion return <- CalculoPasaje120(vuelos, contador_vuelo,preciosVuelos, n)
	
	
	definir return Como Real 
	
	
	
	si (contador_vuelo <= 20 y vuelos[contador_vuelo,4]="V")
		return = preciosVuelos[n] * 0.05
	FinSi
	si (contador_vuelo<=20 y vuelos[contador_vuelo,4]="F")
		return = preciosVuelos[n]
	FinSi
	si ((contador_vuelo>20 y contador_vuelo<=60) y vuelos[contador_vuelo,4]=="V")
		return = preciosVuelos[n] * 0.15 
	FinSi
	si ((contador_vuelo>20 y contador_vuelo<=60) y vuelos[contador_vuelo,4]="F")
		return = preciosVuelos[n] * 0.10 
	FinSi
	si ((contador_vuelo>60) y vuelos[contador_vuelo,4]="V")
		return = (preciosVuelos[n] + 30000) * 0.05
	FinSi
	si ((contador_vuelo>60) y vuelos[contador_vuelo,4]="F")
		return = (preciosVuelos[n] + 30000)
	FinSi
	
	
FinFuncion
Funcion return <- CalculoPasaje801(vuelos, contador_vuelo,preciosVuelos, n)
	
	
    Definir return Como Real 
	
	
	
    Si (contador_vuelo <= 10 y vuelos[contador_vuelo,4]="V")
        return = preciosVuelos[n] * 0.05
    FinSi
    Si (contador_vuelo<=10 y vuelos[contador_vuelo,4]="F")
        return = preciosVuelos[n]
    FinSi
    Si ((contador_vuelo>10 y contador_vuelo<= 40) y vuelos[contador_vuelo,4]=="V")
        return = preciosVuelos[n] * 0.15 
    FinSi
    Si ((contador_vuelo>10 y contador_vuelo<= 40) y vuelos[contador_vuelo,4]="F")
        return = preciosVuelos[n] * 0.10 
    FinSi
    Si ((contador_vuelo>40) y vuelos[contador_vuelo,4]="V")
        return = (preciosVuelos[n] + 25000) * 0.05
    FinSi
    Si ((contador_vuelo>40) y vuelos[contador_vuelo,4]="F")
        return = (preciosVuelos[n] + 25000)
    FinSi
	
	
FinFuncion



Funcion return <- CalculoPasaje802(vuelos, contador_vuelo,preciosVuelos, n)
	
	
    Definir return Como Real 
	
	
	
    Si (contador_vuelo <= 10 y vuelos[contador_vuelo,4]="V")
        return = preciosVuelos[n] * 0.05
    FinSi
    Si (contador_vuelo<=10 y vuelos[contador_vuelo,4]="F")
        return = preciosVuelos[n]
    FinSi
    Si ((contador_vuelo>10 y contador_vuelo<= 40) y vuelos[contador_vuelo,4]=="V")
        return = preciosVuelos[n] * 0.15 
    FinSi
    Si ((contador_vuelo>10 y contador_vuelo<= 40) y vuelos[contador_vuelo,4]="F")
        return = preciosVuelos[n] * 0.10 
    FinSi
    Si ((contador_vuelo>40) y vuelos[contador_vuelo,4]="V")
        return = (preciosVuelos[n] + 30000) * 0.05
    FinSi
    Si ((contador_vuelo>40) y vuelos[contador_vuelo,4]="F")
        return = (preciosVuelos[n] + 30000)
    FinSi
FinFuncion
