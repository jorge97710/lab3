/* ********************************************************************************************************************************** 
   matriz.s

   Se encarga de:		Asignar boton
						Manejar niveles
						Llamar subrutinas de impresion

      @authors: 
   			Carlos Calderon ,Carne: 15219
   			Jorge Azmitia ,Carne: 15202

   Taller de Assembler
   Universidad del Valle de Guatemala

   Laboratorio3
   ******************************************************************************************************************************* */
 .text
 .align 2
 .global main
 /*--CODIGO *************************************************************************************************************************/
main:
	/* Asignar boton*/
	bl GetGpioAddress 
	mov r0,#13 @ Gpio 13
	mov r1,#0
	bl SetGpioFunction
	
	#-------------------------
	#get screen address
	#-------------------------
	
	/* Ingeso de datos*/	
	ldr r0,= Bienvenida
	bl printf
	ldr r8,= ingreso
	ldr r0,= formato
	mov r1,r8
	inicio:
	bl scanf
	ldr r1,=ingreso
	ldr r1,[r1]
	/* Opciones del menu */
	cmp r1,#1
	beq c1	@ Se inicia el juego con cursor en jugar
	cmp r1,#2	
	beq c2	@ Se inicia el juego en cursor creditos
	
	/* Primer proceso */
	seguir:
	ldr r8,= ingreso
	ldr r0,= formato
	mov r1,r8
	bl scanf	
	ldr r1,=ingreso
	ldr r1,[r1]
	
	cmp r1,#1
	beq c3	@ Inicia el juego directamente
	cmp r1,#2
	beq c2	@ Regresar al menu
	
	/* Segundo proceso */
	seguirp:
	ldr r8,= ingreso
	ldr r0,= formato
	mov r1,r8
	bl scanf	
	ldr r1,=ingreso
	ldr r1,[r1]
	cmp r1,#1
	beq c4
	cmp r1,#2
	beq c5	@ creditos
	
	/* Iniciar juego, nivel 1 */
	seguir2:
	bl sprite1s
	mov r0,#0
	loopi:
	cmp r0,#5	@se repite 5 veces
	beq n2
	@ciclo para dibujar varios obstaculos
	push {r0}
	bl ciclo
	pop {r0}
	add r0,#1
	b loopi
	
	/* Iniciar juego, nivel 2 */
	seguir3:
	bl sprite1s
	mov r0,#0
	loopii:
	cmp r0,#5
	beq fin
	@ciclo para dibujar varios obstaculos
	push {r0}
	bl ciclo2
	pop {r0}
	add r0,#1
	b loopii
	
	/* Etiqueta para indicar el momento de llegar a otro nivel */
	n2:
	bl wait
	bl nivel2s
	bl wait
	bl pintarft
	bl wait
	b  seguir3
	
	/* Se cierra el juego y en teoria gana */
	fin:
	bl pintargan
	mov r7,#1
	swi 0
	/* Fin para creditos */
	finj:
	mov r7,#1
	swi 0
	
	/* Inicio del juego */
	/* Menu del juego cursor jugar */
	c1:
	bl pintarf
	b seguir
	/* Menu del juego cursor creditos */
	c2:
	bl pintarfd
	b seguirp 
	/* Iniciar juego */
	c3:
	bl pintarft
	b seguir2
	/* Menu del juego cursor  */
	c4:
	bl pintarf
	b inicio
	/* Menu del juego creditos */
	c5:
	bl pintarfc
	b finj
/*--CODIGO *************************************************************************************************************************/
/*--DATOS **************************************************************************************************************************/	
.data
.global pixelAddr,adios,or,oran,orr,myloc,an,al
myloc: .word 0
pixelAddr: .word 0
ingreso:			.word 0
Bienvenida:			.asciz "Bienvenido ingrese 1 para indicar arriba o iniciar\n ingrese 2 para bajar o creditos\n" 
adios:			.asciz "Gracias por usar el programa" 
formato:			.asciz "%d"
conta:				.word 0
or: 				.word 300
orr: 				.word 300
oran: 				.word  0
an:					.word  55
al:					.word  270
/*--DATOS **************************************************************************************************************************/