 .text
 .align 2
 .global main
main:
	@utilizando la biblioteca GPIO (gpio0.s)
	bl GetGpioAddress @solo se llama una vez
		
	@GPIO para escritura puerto 6
	mov r0,#6
	mov r1,#1
	bl SetGpioFunction

	@GPIO para escritura puerto 13
	mov r0,#13
	mov r1,#1
	bl SetGpioFunction

	@GPIO para escritura puerto 19
	mov r0,#19
	mov r1,#1
	bl SetGpioFunction

	@GPIO para escritura puerto 26
	mov r0,#26
	mov r1,#1
	bl SetGpioFunction

	@GPIO para lectura puerto 12
	mov r0,#12
	mov r1,#0
	bl SetGpioFunction

	@GPIO para lectura puerto 16
	mov r0,#16
	mov r1,#0
	bl SetGpioFunction

	@GPIO para lectura puerto 20
	mov r0,#20
	mov r1,#0
	bl SetGpioFunction

	@GPIO para lectura puerto 21
	mov r0,#21
	mov r1,#0
	bl SetGpioFunction


	@GPIO para lectura puerto 24 (temperatura)
	mov r0,#24
	mov r1,#0
	bl SetGpioFunction


	@GPIO para escritura puerto 23 (Iluminacion)
	mov r0,#23
	mov r1,#1
	bl SetGpioFunction

	@GPIO para escritura puerto 22 (alimentacion)
	mov r0,#22
	mov r1,#1
	bl SetGpioFunction

	@GPIO para escritura puerto 18 (calentador)
	mov r0,#18
	mov r1,#1
	bl SetGpioFunction


	@GPIO para lectura puerto 17 (tiempo)
	mov r0,#17
	mov r1,#0
	bl SetGpioFunction

	/*--------------------------------
	 mprimrir primera pantalla
	 --------------------------------*/
numeroPeces:

	bl getKeyPad
	ldr r1,=numeroPeces
	str r0,[r1]
	cmp r0,#1
	/*imprrimir 1*/
	beq confirmarNumero

	cmp r0,#2
	/*imprrimir 2*/
	beq confirmarNumero

	cmp r0,#3
	/*imprrimir 3*/
	beq confirmarNumero

	cmp r0,#4
	/*imprrimir 4*/
	beq confirmarNumero

	cmp r0,#5
	/*imprrimir 5*/
	beq confirmarNumero

	cmp r0,#6
	/*imprrimir 6*/
	beq confirmarNumero

	cmp r0,#7
	/*imprrimir 7*/
	beq confirmarNumero

	cmp r0,#8
	/*imprrimir 8*/
	beq confirmarNumero

	cmp r0,#9
	/*imprrimir 9*/
	beq confirmarNumero

	b numeroPeces

confirmarNumero:

	bl getKeyPad
	 cmp r0,#11
	 beq numeroPeces

	 cmp r0,#12
	 /*si es igual va a la siguiente pantalla donde se mostrara la informacion de la pecera*/

	b confirmarNumero

automatizacion:
	bl revisarTemperatura
	cmp r0,#1
	bleq encenderTemperatura
	bleq encederCalentador
	cmp r0,#0
	bleq apagarTemperatura
	bleq apagarCalentador

	bl keyEncenderIluminacion
	cmp r0,#1
	bleq encenderIluminacion
	
	bl keyApagarIluminacion
	cmp r0,#1
	bleq apagarIluminacion 

	bl keyAlimentacion
	cmp r0,#1
	bleq encenderAlimentacion


	bl revisarTiempo
	cmp r0,#1
	bleq encenderAlimentacion
	









.data
 .align 2
.global myloc
myloc: .word 0
tecla:
	.word 0
formato:
	.asciz "%d"
cantidadPeces:
	.word 0
.global pantalla
pantalla:
		.word 0

 .end
