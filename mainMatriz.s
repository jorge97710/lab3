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
	beq fin
	@ciclo para ibujar varios obstaculos
	push {r0}
	bl ciclo
	pop {r0}
	add r0,#1
	b loopi
	
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
	
.data
.global pixelAddr,adios,or,oran,orr
pixelAddr: .word 0
ingreso:			.word 0
Bienvenida:			.asciz "Bienvenido ingrese\n" 
adios:			.asciz "Gracias por usar el programa" 
formato:			.asciz "%d"
conta:				.word 0
or: 				.word 300
orr: 				.word 300
oran: 				.word  0
