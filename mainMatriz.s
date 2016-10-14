/******************************************************************************
*	mainMatriz.s
*	Dibuja una matriz en la esquina superior izquierda
*	Por: Martha Ligia Naranjo
*   Creado: 20/09/2016
*******************************************************************************/
 .text
 .align 2
 .global main
main:
	bl GetGpioAddress @solo se llama una vez CREO QUE HABRIA QUE PONERLO EN EL MAIN
	@SUBIR
	mov r0,#13
	mov r1,#0
	bl SetGpioFunction
	
	@SUBIR
	mov r0,#17
	mov r1,#0
	bl SetGpioFunction
	#-------------------------
	#get screen address
	#-------------------------

	
	
	ldr r0,= Bienvenida
		bl printf
		ldr r8,= ingreso
		ldr r0,= formato
		mov r1,r8
		bl scanf
	ldr r1,=ingreso
	ldr r1,[r1]
	cmp r1,#1
	beq c1
	cmp r1,#2
	beq c2
	
	seguir:
ldr r8,= ingreso
		ldr r0,= formato
		mov r1,r8
		bl scanf	
	ldr r1,=ingreso
	ldr r1,[r1]
	cmp r1,#1
	beq c3
	cmp r1,#2
	beq c4
		
	seguir2:
	bl sprite1s
	mov r0,#0
	loopi:
	cmp r0,#5
	beq n2
	@ciclo para ibujar varios obstaculos
	push {r0}
	bl ciclo
	pop {r0}
	add r0,#1
	b loopi
	
	seguir3:
	bl sprite1s
	mov r0,#0
	loopii:
	cmp r0,#5
	beq fin
	@ciclo para ibujar varios obstaculos
	push {r0}
	bl ciclo2
	pop {r0}
	add r0,#1
	b loopii
	
	n2:
	bl wait
	bl nivel2s
	bl wait
	bl pintarft
	bl wait
	b  seguir3
	
	fin:
	ldr r0,= adios
	bl puts
	mov r7,#1
	swi 0
	
	c1:
	bl pintarf
	b seguir
	c2:
	bl pintarfd
	b seguir 
	c3:
	bl pintarft
	b seguir2
	c4:
	bl pintarfc
	b fin
	mk:
		ldr r0,= Bienvenida
		bl puts
		b fin
	mk2:
		ldr r0,= Bienvenida2
		bl puts
		b fin
.data
.global pixelAddr,adios,or,oran,orr,myloc
myloc: .word 0
pixelAddr: .word 0
ingreso:			.word 0
Bienvenida:			.asciz "Bienvenido ingrese\n" 
Bienvenida2:			.asciz "Bienvenido2 ingrese\n" 
adios:			.asciz "Gracias por usar el programa" 
formato:			.asciz "%d"
conta:				.word 0
or: 				.word 300
orr: 				.word 300
oran: 				.word  0
an:					.word  75
