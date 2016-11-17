.global temperatura
revisartemperatura:
push {lr}

	ldr r6, =myloc
 	ldr r0, [r6] @ obtener direccion 
	ldr r5,[r0,#0x34]
	mov r7,#1
	lsl r7,#24
	and r5,r7 

	
	teq r5,#0
	mov r0,#0
	movne r0,#1
	pop {pc}

.global tiempo
revisartiempo:
push {lr}

	ldr r6, =myloc
 	ldr r0, [r6] @ obtener direccion 
	ldr r5,[r0,#0x34]
	mov r7,#1
	lsl r7,#17
	and r5,r7 

	
	teq r5,#0
	mov r0,#0
	movne r0,#1
	pop {pc}



.global encenderCalentador
encenderCalentador:
push {lr}
@encender GPIO 18
	mov r0,#18
	mov r1,#1
	bl SetGpio
pop {pc}

.global apagarCalentador
apagarCalentador:
push {lr}
@apagar GPIO 18
	mov r0,#18
	mov r1,#0
	bl SetGpio
pop {pc}


.global encenderIluminacion
encenderIluminacion:
@encender GPIO 23
	mov r0,#23
	mov r1,#1
	bl SetGpio
pop {pc}

.global apagarIluminacion
apagarIluminacion:
@apagar GPIO 23
	mov r0,#23
	mov r1,#0
	bl SetGpio
pop {pc}

.global encenderAlimentacion
encenderAlimentacion:
@encender GPIO 22
	mov r0,#22
	mov r1,#1
	bl SetGpio
pop {pc}

.globl apagarAlemtacion
apagarAlemtacion:
@apagar GPIO 22
	mov r0,#22
	mov r1,#0
	bl SetGpio
pop {pc}

encenderTemperatrua:
		push {lr}

		ldr r1,=pantalla
		ldr r1,[r1]
		cmp r1,#4

		popeq {pc}
		popgt {pc}
		addlt r1,#4
		ldrlt r0,=pantalla
		strlt r1,[r0]
		pop {pc}

.global apagarTemperatura
apagarTemperatrua:
		push {lr}

		ldr r1,=pantalla
		ldr r1,[r1]
		cmp r1,#4

		poplt {pc}

		addeq r1,#4
		ldreq r0,=pantalla
		streq r1,[r0]

		addgt r1,#4
		ldrgt r0,=pantalla
		strgt r1,[r0]


