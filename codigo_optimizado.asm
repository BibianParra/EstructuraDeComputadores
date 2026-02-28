.data
    vector_x: .word 1, 2, 3, 4, 5, 6, 7, 8
    vector_y: .space 32
    const_a:  .word 3
    const_b:  .word 5
    tamano:   .word 8

.text
.globl main

main:
    la $s0, vector_x      # Puntero actual X
    la $s1, vector_y      # Puntero actual Y
    lw $t0, const_a       
    lw $t1, const_b       
    lw $t2, tamano        
    
    # Pre-calculamos la dirección final para evitar un contador i
    sll $t2, $t2, 2       # tamano * 4
    addu $s2, $s0, $t2    # $s2 = dirección de parada (X + 32)

loop:
    # 1. Carga de dato (Iniciamos lo antes posible)
    lw $t6, 0($s0)        
    
    # 2. Adelantamos trabajo independiente para separar el lw del mul
    # En lugar de usar un índice i, incrementamos los punteros aquí
    # para "rellenar" el hueco del stall del Load-Use.
    addiu $s0, $s0, 4     # Avanzar puntero X
    
    # 3. Operación aritmética (Aprovechamos que el dato ya llegó)
    mul $t7, $t6, $t0     
    
    # 4. Otra instrucción independiente para separar el mul del addu
    addiu $s1, $s1, 4     # Avanzar puntero Y (mientras mul termina)

    addu $t8, $t7, $t1    
    
    # 5. Almacenamiento (Usamos el puntero Y pero restamos 4 porque ya lo incrementamos)
    sw $t8, -4($s1)       

    # 6. Condición de salida (Usamos comparación de direcciones)
    bne $s0, $s2, loop    # Si puntero X != dirección final, repetir

fin:
    li $v0, 10            
    syscall