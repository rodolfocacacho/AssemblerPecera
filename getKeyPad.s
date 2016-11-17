.global getKeyPad
getKeyPad:
/*fila 1*/
push {lr}
loop:

@Apagar GPIO 37
	mov r0,#31
	mov r1,#0
	bl SetGpio

@Apagar GPIO 33
	mov r0,#33
	mov r1,#0
	bl SetGpio

@Apagar GPIO 35
	mov r0,#35
	mov r1,#0
	bl SetGpio

@encender GPIO 31
	mov r0,#31
	mov r1,#1
	bl SetGpio

@1
	ldr r6, =myloc
 	ldr r0, [r6] @ obtener direccion 
	ldr r5,[r0,#0x34]
	mov r7,#1
	lsl r7,#12
	and r5,r7 

	
	teq r5,#0
	mov r0,#0
	movne r0,#1
	popne {pc}

@2
ldr r6, =myloc
 	ldr r0, [r6] @ obtener direccion 
	ldr r5,[r0,#0x34]
	mov r7,#1
	lsl r7,#16
	and r5,r7 

	
	teq r5,#0
	mov r0,#0
	movne r0,#2
	popne {pc}
@3
ldr r6, =myloc
 	ldr r0, [r6] @ obtener direccion 
	ldr r5,[r0,#0x34]
	mov r7,#1
	lsl r7,#20
	and r5,r7 

	
	teq r5,#0
	mov r0,#0
	movne r0,#3
	popne {pc}
@a

ldr r6, =myloc
 	ldr r0, [r6] @ obtener direccion 
	ldr r5,[r0,#0x34]
	mov r7,#1
	lsl r7,#21
	and r5,r7 

	
	teq r5,#0
	mov r0,#0
	movne r0,#10
	popne {pc}


/*fila 2*/


@Apagar GPIO 37
	mov r0,#31
	mov r1,#0
	bl SetGpio

@Apagar GPIO 33
	mov r0,#33
	mov r1,#0
	bl SetGpio

@Apagar GPIO 31
	mov r0,#35
	mov r1,#0
	bl SetGpio

@encender GPIO 35
	mov r0,#31
	mov r1,#1
	bl SetGpio

@4
	ldr r6, =myloc
 	ldr r0, [r6] @ obtener direccion 
	ldr r5,[r0,#0x34]
	mov r7,#1
	lsl r7,#12
	and r5,r7 

	
	teq r5,#0
	mov r0,#0
	movne r0,#4
	popne {pc}

@5
ldr r6, =myloc
 	ldr r0, [r6] @ obtener direccion 
	ldr r5,[r0,#0x34]
	mov r7,#1
	lsl r7,#16
	and r5,r7 

	
	teq r5,#0
	mov r0,#0
	movne r0,#5
	popne {pc}
@6
ldr r6, =myloc
 	ldr r0, [r6] @ obtener direccion 
	ldr r5,[r0,#0x34]
	mov r7,#1
	lsl r7,#20
	and r5,r7 

	
	teq r5,#0
	mov r0,#0
	movne r0,#6
	popne {pc}
@b

ldr r6, =myloc
 	ldr r0, [r6] @ obtener direccion 
	ldr r5,[r0,#0x34]
	mov r7,#1
	lsl r7,#21
	and r5,r7 

	
	teq r5,#0
	mov r0,#0
	movne r0,#11
	popne {pc}

fila/*3*/

@Apagar GPIO 37
	mov r0,#31
	mov r1,#0
	bl SetGpio

@Apagar GPIO 31
	mov r0,#33
	mov r1,#0
	bl SetGpio

@Apagar GPIO 35
	mov r0,#35
	mov r1,#0
	bl SetGpio

@encender GPIO 33
	mov r0,#31
	mov r1,#1
	bl SetGpio

@7
	ldr r6, =myloc
 	ldr r0, [r6] @ obtener direccion 
	ldr r5,[r0,#0x34]
	mov r7,#1
	lsl r7,#12
	and r5,r7 

	
	teq r5,#0
	mov r0,#0
	movne r0,#7
	popne {pc}

@8
ldr r6, =myloc
 	ldr r0, [r6] @ obtener direccion 
	ldr r5,[r0,#0x34]
	mov r7,#1
	lsl r7,#16
	and r5,r7 

	
	teq r5,#0
	mov r0,#0
	movne r0,#8
	popne {pc}
@9
ldr r6, =myloc
 	ldr r0, [r6] @ obtener direccion 
	ldr r5,[r0,#0x34]
	mov r7,#1
	lsl r7,#20
	and r5,r7 

	
	teq r5,#0
	mov r0,#0
	movne r0,#9
	popne {pc}
@c

ldr r6, =myloc
 	ldr r0, [r6] @ obtener direccion 
	ldr r5,[r0,#0x34]
	mov r7,#1
	lsl r7,#21
	and r5,r7 

	
	teq r5,#0
	mov r0,#0
	movne r0,#12
	popne {pc}


	b loop

/*fila 4*/
Apagar GPIO 31
	mov r0,#31
	mov r1,#0
	bl SetGpio

@Apagar GPIO 33
	mov r0,#33
	mov r1,#0
	bl SetGpio

@Apagar GPIO 35
	mov r0,#35
	mov r1,#0
	bl SetGpio

@encender GPIO 37
	mov r0,#31
	mov r1,#1
	bl SetGpio

@13
	ldr r6, =myloc
 	ldr r0, [r6] @ obtener direccion 
	ldr r5,[r0,#0x34]
	mov r7,#1
	lsl r7,#12
	and r5,r7 

	
	teq r5,#0
	mov r0,#0
	movne r0,#13
	popne {pc}

@0
ldr r6, =myloc
 	ldr r0, [r6] @ obtener direccion 
	ldr r5,[r0,#0x34]
	mov r7,#1
	lsl r7,#16
	and r5,r7 

	
	teq r5,#0
	mov r0,#0
	movne r0,#0
	popne {pc}
@14
ldr r6, =myloc
 	ldr r0, [r6] @ obtener direccion 
	ldr r5,[r0,#0x34]
	mov r7,#1
	lsl r7,#20
	and r5,r7 

	
	teq r5,#0
	mov r0,#0
	movne r0,#14
	popne {pc}
@15

ldr r6, =myloc
 	ldr r0, [r6] @ obtener direccion 
	ldr r5,[r0,#0x34]
	mov r7,#1
	lsl r7,#21
	and r5,r7 

	
	teq r5,#0
	mov r0,#0
	movne r0,#15
	popne {pc}

.global keyEncenderIluminacion


keyEncenderIluminacion:
		push {lr}

	Apagar GPIO 31
	mov r0,#31
	mov r1,#0
	bl SetGpio

@Apagar GPIO 33
	mov r0,#33
	mov r1,#0
	bl SetGpio

@Apagar GPIO 35
	mov r0,#35
	mov r1,#0
	bl SetGpio

@encender GPIO 37
	mov r0,#31
	mov r1,#1
	bl SetGpio


	@13
	ldr r6, =myloc
 	ldr r0, [r6] @ obtener direccion 
	ldr r5,[r0,#0x34]
	mov r7,#1
	lsl r7,#12
	and r5,r7 

	
	teq r5,#0
	mov r0,#0
	movne r0,#1

		pop {pc}

.global keyApagarIluminacion
keyApagarIluminacion:
push {lr}

Apagar GPIO 31
	mov r0,#31
	mov r1,#0
	bl SetGpio

@Apagar GPIO 33
	mov r0,#33
	mov r1,#0
	bl SetGpio

@Apagar GPIO 35
	mov r0,#35
	mov r1,#0
	bl SetGpio

@encender GPIO 37
	mov r0,#31
	mov r1,#1
	bl SetGpio


@0
ldr r6, =myloc
 	ldr r0, [r6] @ obtener direccion 
	ldr r5,[r0,#0x34]
	mov r7,#1
	lsl r7,#16
	and r5,r7 

	
	teq r5,#0
	mov r0,#0
	movne r0,#1
	


pop {pc}

.global keyAlimentacion
keyAlimentacion
push {lr}
pagar GPIO 31
	mov r0,#31
	mov r1,#0
	bl SetGpio

@Apagar GPIO 33
	mov r0,#33
	mov r1,#0
	bl SetGpio

@Apagar GPIO 35
	mov r0,#35
	mov r1,#0
	bl SetGpio

@encender GPIO 37
	mov r0,#31
	mov r1,#1
	bl SetGpio
@14
ldr r6, =myloc
 	ldr r0, [r6] @ obtener direccion 
	ldr r5,[r0,#0x34]
	mov r7,#1
	lsl r7,#20
	and r5,r7 

	
	teq r5,#0
	mov r0,#0
	movne r0,#1

	pop {pc}