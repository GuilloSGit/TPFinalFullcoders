Algoritmo SolucionEmpresaSoftware
    Definir nombreNegocio, duenioNegocio, finalidadSoftware Como Cadena
    Definir solicitudSoftware Como Cadena
	
    Escribir "Datos del negocio:"
	Escribir "Ingrese su nombre:"
    Leer duenioNegocio
	
	Escribir "Ingrese el nombre de su empresa o negocio:"
    Leer nombreNegocio
	
    Escribir "Ingrese la finalidad del software:"
    Leer finalidadSoftware
	
	solicitudSoftware <- "Nombre del solicitante: " + duenioNegocio + " - " + "Empresa o negocio (nombre)" + nombreNegocio + " - " + "Detalles del software:" + finalidadSoftware
	
    Escribir "Enviando solicitud a GESOFT..."
	Esperar 2 segundos
    GESOFT_AdministrarSolicitud(solicitudSoftware)
	
    Escribir "Solicitud enviada con �xito. GESOFT administrar� el flujo de tareas."
	
FinAlgoritmo

Funcion GESOFT_AdministrarSolicitud(solicitud)
	Escribir "Procesando solicitud en GESOFT: ", solicitud
	Escribir "Gesti�n del flujo de tareas en curso..."
	Escribir ". . ."
	Esperar 2 segundos
	Escribir "Por favor, aguarde..."
	Esperar 2 segundos
	Escribir "Generando flujo administrado de su solicitud."
	Escribir ""
FinFunci�n
