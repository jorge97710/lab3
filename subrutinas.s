
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
	push {r9}
	bl getScreenAddr
	ldr r1,=pixelAddr
	str r0,[r1]
	pop {r9}
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
				ldr addrPixel,=sprite1	//Obtenemos la direccion de la matriz con los colores
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
	
.global sprite2s
	sprite2s:
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
				ldr addrPixel,=sprite2	//Obtenemos la direccion de la matriz con los colores
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
	
		.global sprite3s
	sprite3s:
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
				ldr addrPixel,=sprite3	//Obtenemos la direccion de la matriz con los colores
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
	
	
	@@obs
	.global obstaculo
	obstaculo:
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
				ldr addrPixel,=obs	//Obtenemos la direccion de la matriz con los colores
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
	
	
	