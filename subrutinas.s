
.data
.align 2

.global pintarfd
	pintarfd:
	mov r9,lr
	push {r9}
	bl getScreenAddr
	ldr r1,=pixelAddr
	str r0,[r1]
	pop {r9}
	renders$:
		x	  .req r1
		y         .req r2
		colour 	  .req r3
		addrPixel .req r5
		countByte .req r6
		ancho	  .req r7
		alto	  .req r8

		mov countByte,#0 				//Contador que cuenta la cantidad de bytes dibujados
		ldr ancho,=matrizAnch
		ldr ancho,[ancho]
		ldr alto,=matrizAlt
		ldr alto,[alto]
		mov y,#0
		//Ciclo que dibuja filas
		drawRows$:
			mov x,#0
			drawPixels$:
				cmp x,ancho				//comparar x con el ancho de la imagen
				bge ends
				ldr addrPixel,=matrizz	//Obtenemos la direccion de la matriz con los colores
				ldrb colour,[addrPixel,countByte]	//Leer el dato de la matriz.
				
				ldr r0,=pixelAddr
				ldr r0,[r0] 
				push {r0-r12}
				bl pixel				//Dibujamos el pixel. r1=x,r2=y,r3=colour
				pop {r0-r12}
				add countByte,#1 		//Incrementamos los bytes dibujados
				add x,#1 				//Aumenta el contador del ancho de la imagen
			
				b drawPixels$
		ends:	
			// aumentamos y
			add y,#1
						
			//Revisamos si ya dibujamos toda la imagen.
			teq y,alto
			bne drawRows$

	.unreq x		  
	.unreq	y         
	.unreq	colour 	  
	.unreq	addrPixel 
	.unreq	countByte 
	.unreq	ancho	  
	.unreq	alto	
	
	mov pc,r9
	
.global pintarf
	pintarf:
	mov r9,lr
	push {r9}
	bl getScreenAddr
	ldr r1,=pixelAddr
	str r0,[r1]
	pop {r9}
	render$:
		
		x	  .req r1
		y         .req r2
		colour 	  .req r3
		addrPixel .req r5
		countByte .req r6
		ancho	  .req r7
		alto	  .req r8

		mov countByte,#0 				//Contador que cuenta la cantidad de bytes dibujados
		ldr ancho,=matrizAncho
		ldr ancho,[ancho]
		ldr alto,=matrizAlto
		ldr alto,[alto]
		mov y,#0
		//Ciclo que dibuja filas
		drawRow$:
			mov x,#0
			drawPixel$:
				cmp x,ancho				//comparar x con el ancho de la imagen
				bge end
				ldr addrPixel,=matriz	//Obtenemos la direccion de la matriz con los colores
				ldrb colour,[addrPixel,countByte]	//Leer el dato de la matriz.
				
				ldr r0,=pixelAddr
				ldr r0,[r0] 
				push {r0-r12}
				bl pixel				//Dibujamos el pixel. r1=x,r2=y,r3=colour
				pop {r0-r12}
				add countByte,#1 		//Incrementamos los bytes dibujados
				add x,#1 				//Aumenta el contador del ancho de la imagen
			
				b drawPixel$
		end:	
			// aumentamos y
			add y,#1
						
			//Revisamos si ya dibujamos toda la imagen.
			teq y,alto
			bne drawRow$

	.unreq x		  
	.unreq	y         
	.unreq	colour 	  
	.unreq	addrPixel 
	.unreq	countByte 
	.unreq	ancho	  
	.unreq	alto
	
	mov pc,r9
	
	.global pintarft
	pintarft:
	mov r9,lr
	push {r9-r12}
	bl getScreenAddr
	ldr r1,=pixelAddr
	str r0,[r1]
	pop {r9-r12}
	renderss$:
		x	  .req r1
		y         .req r2
		colour 	  .req r3
		addrPixel .req r5
		countByte .req r6
		ancho	  .req r7
		alto	  .req r8

		mov countByte,#0 				//Contador que cuenta la cantidad de bytes dibujados
		ldr ancho,=matrizAnc
		ldr ancho,[ancho]
		ldr alto,=matrizAl
		ldr alto,[alto]
		mov y,#0
		//Ciclo que dibuja filas
		drawRowss$:
			mov x,#0
			drawPixelss$:
				cmp x,ancho				//comparar x con el ancho de la imagen
				bge endss
				ldr addrPixel,=matrizzz	//Obtenemos la direccion de la matriz con los colores
				ldrb colour,[addrPixel,countByte]	//Leer el dato de la matriz.
				
				ldr r0,=pixelAddr
				ldr r0,[r0] 
				push {r0-r12}
				bl pixel				//Dibujamos el pixel. r1=x,r2=y,r3=colour
				pop {r0-r12}
				add countByte,#1 		//Incrementamos los bytes dibujados
				add x,#1 				//Aumenta el contador del ancho de la imagen
			
				b drawPixelss$
		endss:	
			// aumentamos y
			add y,#1
						
			//Revisamos si ya dibujamos toda la imagen.
			teq y,alto
			bne drawRowss$

	.unreq x		  
	.unreq	y         
	.unreq	colour 	  
	.unreq	addrPixel 
	.unreq	countByte 
	.unreq	ancho	  
	.unreq	alto	
	
	mov pc,r9
	
		
	.global pintarfc
	pintarfc:
	mov r9,lr
	push {r9}
	bl getScreenAddr
	ldr r1,=pixelAddr
	str r0,[r1]
	pop {r9}
	rendersss$:
		x	  .req r1
		y         .req r2
		colour 	  .req r3
		addrPixel .req r5
		countByte .req r6
		ancho	  .req r7
		alto	  .req r8

		mov countByte,#0 				//Contador que cuenta la cantidad de bytes dibujados
		ldr ancho,=matrizAn
		ldr ancho,[ancho]
		ldr alto,=matrizA
		ldr alto,[alto]
		mov y,#0
		//Ciclo que dibuja filas
		drawRowsss$:
			mov x,#0
			drawPixelsss$:
				cmp x,ancho				//comparar x con el ancho de la imagen
				bge endsss
				ldr addrPixel,=matrizzzz	//Obtenemos la direccion de la matriz con los colores
				ldrb colour,[addrPixel,countByte]	//Leer el dato de la matriz.
				
				ldr r0,=pixelAddr
				ldr r0,[r0] 
				push {r0-r12}
				bl pixel				//Dibujamos el pixel. r1=x,r2=y,r3=colour
				pop {r0-r12}
				add countByte,#1 		//Incrementamos los bytes dibujados
				add x,#1 				//Aumenta el contador del ancho de la imagen
			
				b drawPixelsss$
		endsss:	
			// aumentamos y
			add y,#1
						
			//Revisamos si ya dibujamos toda la imagen.
			teq y,alto
			bne drawRowsss$

	.unreq x		  
	.unreq	y         
	.unreq	colour 	  
	.unreq	addrPixel 
	.unreq	countByte 
	.unreq	ancho	  
	.unreq	alto	
	
	mov pc,r9
	
	
.global sprite1s
	sprite1s:
	mov r9,lr
	push {r9-r12}
	bl getScreenAddr
	ldr r1,=pixelAddr
	str r0,[r1]
	pop {r9-r12}
	rendersp$:
		x	  .req r1
		y         .req r2
		colour 	  .req r3
		addrPixel .req r5
		countByte .req r6
		ancho	  .req r7
		alto	  .req r8

		mov countByte,#0 				//Contador que cuenta la cantidad de bytes dibujados
		ldr ancho,=Anchosprite1
		ldr ancho,[ancho]
		ldr alto,=Altosprite1
		ldr alto,[alto]
		ldr r10,=or
		ldr r10,[r10]
		add alto,r10
		mov y,r10
		//Ciclo que dibuja filas
		drawRowsp$:
			mov x,#0
			drawPixelsp$:
				cmp x,ancho				//comparar x con el ancho de la imagen
				bge endsp
				ldr addrPixel,=sprite1	//Obtenemos la direccion de la matriz con los colores
				ldrb colour,[addrPixel,countByte]	//Leer el dato de la matriz.
				
				ldr r0,=pixelAddr
				ldr r0,[r0] 
				push {r0-r12}
				bl pixel				//Dibujamos el pixel. r1=x,r2=y,r3=colour
				pop {r0-r12}
				add countByte,#1 		//Incrementamos los bytes dibujados
				add x,#1 				//Aumenta el contador del ancho de la imagen
			
				b drawPixelsp$
		endsp:	
			// aumentamos y
			add y,#1
						
			//Revisamos si ya dibujamos toda la imagen.
			teq y,alto
			bne drawRowsp$

	.unreq x		  
	.unreq	y         
	.unreq	colour 	  
	.unreq	addrPixel 
	.unreq	countByte 
	.unreq	ancho	  
	.unreq	alto
	
	mov pc,r9
	
	
	@@obs
	.global obstaculos
	obstaculos:
	mov r9,lr
	push {r9-r12}
	bl getScreenAddr
	ldr r1,=pixelAddr
	str r0,[r1]
	pop {r9-r12}
	renderob$:
		
		x	  .req r1
		y         .req r2
		colour 	  .req r3
		addrPixel .req r5
		countByte .req r6
		ancho	  .req r7
		alto	  .req r8

		mov countByte,#0 				//Contador que cuenta la cantidad de bytes dibujados
		ldr ancho,=Anchoobs
		ldr ancho,[ancho]
		ldr alto,=Altoobs
		ldr alto,[alto]
		ldr r10,=orr
		ldr r10,[r10]
		add alto,r10
		mov y,r10
		ldr r10,=oran
		ldr r10,[r10]
		add ancho,r10
		//Ciclo que dibuja filas
		drawRowob$:
			mov x,r10
			drawPixelob$:
				cmp x,ancho				//comparar x con el ancho de la imagen
				bge endob
				ldr addrPixel,=obs	//Obtenemos la direccion de la matriz con los colores
				ldrb colour,[addrPixel,countByte]	//Leer el dato de la matriz.
				
				ldr r0,=pixelAddr
				ldr r0,[r0] 
				push {r0-r12}
				bl pixel				//Dibujamos el pixel. r1=x,r2=y,r3=colour
				pop {r0-r12}
				add countByte,#1 		//Incrementamos los bytes dibujados
				add x,#1 				//Aumenta el contador del ancho de la imagen
			
				b drawPixelob$
		endob:	
			// aumentamos y
			add y,#1
						
			//Revisamos si ya dibujamos toda la imagen.
			teq y,alto
			bne drawRowob$

	.unreq x		  
	.unreq	y         
	.unreq	colour 	  
	.unreq	addrPixel 
	.unreq	countByte 
	.unreq	ancho	  
	.unreq	alto
	
	mov pc,r9
	
	.global ciclo
	ciclo:
	mov r12,lr
	mov r11,#500
	mov r9,#300
	ldr r10,= or
	str r9,[r10]
	loop:
	bl wait
	cmp r11,#0
	beq final
	cmp r11,#75
	beq cumple
	cont:
	bl pintarft
	bl 	sprite1s
	ldr r10,= oran
	str r11,[r10]
	bl obstaculos
	sub r11,#25
	
	b loop
	final:
	bl pintarft
	bl sprite1s
	mov pc,r12
	
	cumple:
	bl wait
	bl pintarft
	bl obstaculos
	mov r9,#250
	ldr r10,= or
	str r9,[r10]
	bl wait
	bl sprite1s
	
	bl wait
	bl pintarft
	bl obstaculos
	mov r9,#200
	ldr r10,= or
	str r9,[r10]	
	bl wait
	bl sprite1s
	
	bl wait
	bl pintarft
	bl obstaculos
	mov r9,#150
	ldr r10,= or
	str r9,[r10]
	bl wait
	bl sprite1s
	
	bl wait
	bl pintarft
	bl obstaculos
	mov r9,#100
	ldr r10,= or
	str r9,[r10]
	bl wait
	bl sprite1s
	
	bl wait
	bl pintarft
	bl obstaculos
	mov r9,#150
	ldr r10,= or
	str r9,[r10]
	bl wait
	bl sprite1s
	
	bl wait
	bl pintarft
	bl obstaculos
	mov r9,#200
	ldr r10,= or
	str r9,[r10]	
	bl wait
	bl sprite1s
	
	bl wait
	bl pintarft
	bl obstaculos
	mov r9,#250
	ldr r10,= or
	str r9,[r10]
	bl wait
	bl sprite1s
	
	bl wait
	bl pintarft
	bl obstaculos
	mov r9,#300
	ldr r10,= or
	str r9,[r10]
	bl wait
	bl sprite1s
	
	mov r9,#300
	ldr r10,= or
	str r9,[r10]
	b cont
	
	delay:
 mov r7,#0
	@tomamos nuestra base de 150000*2*ingresado entonces 300000 seria para que tarde 0.001 segundos. lo hice asi por conveniencia. luego se multiplica por lo ingresado para que tarde esa cantidad de milisegundos
	ldr r1,=delaynum
	ldr r1,[r1]
	mov r3,#2
	mul r0,r3
	mul r0,r1
    b compare
loop1:
    add r7,#1     //r7++
compare:
    cmp r7,r0     //test r7 == r0
    bne loop1

   mov pc,lr
   
   wait:
	ldr r0,=207108864 @ big number
sleepLoop:
	subs r0,#1
	bne sleepLoop @ loop delay
	mov pc,lr
.data
.align 2
delaynum:.word 1500

