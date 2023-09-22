Proceso SolucionEmpresaSoftware
	Definir duenioNegocio Como Cadena
	Definir respuestaOtraSolicitud Como Cadena
	Definir otraSolicitud Como Lógico
	Definir contadorVueltas Como Entero
	respuestaLogica <- VERDADERO
	otraSolicitud <- VERDADERO
	contadorVueltas <- 1
	Dimensionar solicitudesSoftware(5), solicitudSoftware(3)
	Escribir 'Por favor, escriba los siguientes datos:'
	Escribir 'Ingrese su nombre personal:'
	Leer duenioNegocio
	Mientras otraSolicitud Y contadorVueltas<=5 Hacer
		Si contadorVueltas>=2 Entonces
			Escribir '¿Es para la misma empresa? (S/N)'
			Leer respuestaOtraSolicitud
			Mientras respuestaOtraSolicitud<>'S' Y respuestaOtraSolicitud<>'N' Hacer
				Escribir 'Respuesta no válida'
				Escribir '¿Es para la misma empresa? (S/N)'
				Leer respuestaOtraSolicitud
			FinMientras
			Si respuestaOtraSolicitud='N' Entonces
				Escribir 'Ingrese el nombre de la empresa o negocio que representa:'
				Leer nombreNegocio
			FinSi
		SiNo
			Escribir 'Ingrese el nombre de la empresa o negocio que representa:'
			Leer nombreNegocio
		FinSi
		Escribir 'Escriba para qué es el software que solicita:'
		Leer finalidadSoftware
		solicitudSoftware[1] <- duenioNegocio
		solicitudSoftware[2] <- nombreNegocio
		solicitudSoftware[3] <- finalidadSoftware
		solicitudesSoftware[contadorVueltas] <- Concatenar(Concatenar('*  ',solicitudSoftware[2]),Concatenar(' * ',solicitudSoftware[3]))
		contadorVueltas <- contadorVueltas+1
		GESOFT_AdministrarSolicitud(solicitudSoftware)
		Escribir ''
		Escribir '¿Desea hacer otra solicitud de Software ahora? (S/N)'
		Leer respuestaOtraSolicitud
		Mientras respuestaOtraSolicitud<>'S' Y respuestaOtraSolicitud<>'N' Hacer
			Escribir 'Respuesta no válida'
			Escribir '¿Desea hacer otra solicitud de Software ahora? (S/N)'
			Leer respuestaOtraSolicitud
		FinMientras
		Si respuestaOtraSolicitud='N' O respuestaOtraSolicitud='No' O respuestaOtraSolicitud='NO' O respuestaOtraSolicitud='n' O respuestaOtraSolicitud='no' O respuestaOtraSolicitud='nO' Entonces
			Escribir 'Gracias '+duenioNegocio+', en breve GESOFT se comunicará con usted.'
			otraSolicitud <- FALSO
		FinSi
		
	FinMientras

	GESOFT_ImprimirTabla(solicitudesSoftware,contadorVueltas)

FinProceso

SubAlgoritmo GESOFT_AdministrarSolicitud(solicitud)
	Escribir 'Procesando solicitud en GESOFT:'
	Escribir 'Por favor, '+solicitud[1]+', aguarde...'
	Escribir 'Guardando los datos de '+solicitud[2]+' en nuestra base de datos.'
FinSubAlgoritmo

SubAlgoritmo GESOFT_ImprimirTabla(solicitudesSoftware,contadorVueltas)
	Escribir '_______________________________________________'
	Escribir 'Solicitud | nombreNegocio | Finalidad'
	Para i<-1 Hasta contadorVueltas-1 Hacer
		Escribir i, '  ', solicitudesSoftware[i]
		Escribir '----------------------------------------------'
	FinPara
	Escribir '_______________________________________________'
	Escribir ''
	Escribir 'Adiós, ¡gracias por confiar en nosotros sus proyectos!'
FinSubAlgoritmo
