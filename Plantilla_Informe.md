# Informe de Laboratorio: Estructura de Computadores

**Nombre del Estudiante:** Bibian Ibet Parra Parra

**Fecha:** Febrero, 2026  
**Asignatura:** Estructura de Computadores
 
**Enlace del repositorio en GitHub:** [agregar enlace Aquí]  
 

---

## 1. Análisis del Código Base

### 1.1. Evidencia de Ejecución
Adjunte aquí las capturas de pantalla de la ejecución del `programa_base.asm` utilizando las siguientes herramientas de MARS:
*   **MIPS X-Ray** (Ventana con el Datapath animado).
  <img width="991" height="563" alt="image" src="https://github.com/user-attachments/assets/f8d001f9-9c2e-4990-9900-c0d1c1b31d14" />

*   **Instruction Counter** (Contador de instrucciones totales).
<img width="413" height="253" alt="image" src="https://github.com/user-attachments/assets/8a1149f7-63cc-4f1d-b8aa-a2534f143bcf" />
*   **Instruction Statistics** (Estadisticas de instrucciones ).
<img width="348" height="281" alt="image" src="https://github.com/user-attachments/assets/07d46c60-f9f7-43f4-82fd-3bb2076d22f8" />



### 1.2. Identificación de Riesgos (Hazards)
Completa la siguiente tabla identificando las instrucciones que causan paradas en el pipeline:

| Instrucción Causante | Instrucción Afectada | Tipo de Riesgo (Load-Use, etc.) | Ciclos de Parada |
|----------------------|----------------------|---------------------------------|------------------|
| `lw $t6, 0($t5)`     | `mul $t7, $t6, $t0`  | Load-Use                        |                  |
|                      |                      |                                 |                  |

### 1.2. Estadísticas y Análisis Teórico
Dado que MARS es un simulador funcional, el número de instrucciones ejecutadas será igual en ambas versiones. Sin embargo, en un procesador real, el tiempo de ejecución (ciclos) varía. Completa la siguiente tabla de análisis teórico:

| Métrica | Código Base | Código Optimizado |
|---------|-------------|-------------------|
| Instrucciones Totales (según MARS) |             |                   |
| Stalls (Paradas) por iteración |             |                   |
| Total de Stalls (8 iteraciones) |             |                   |
| **Ciclos Totales Estimados** (Inst + Stalls) |             |                   |
| **CPI Estimado** (Ciclos / Inst) |             |                   |

---

## 2. Optimización Propuesta

### 2.1. Evidencia de Ejecución (Código Optimizado)
Adjunte aquí las capturas de pantalla de la ejecución del `programa_optimizado.asm` utilizando las mismas herramientas que en el punto 1.1:
*   **MIPS X-Ray**.
*   **Instruction Counter**.
*   **Instruction Statistics**.

> [Inserte aquí las capturas de pantalla]

### 2.2. Código Optimizado
Pega aquí el fragmento de tu bucle `loop` reordenado:

```asm
# Pega tu código aquí
```

### 2.2. Justificación Técnica de la Mejora
Explica qué instrucción moviste y por qué colocarla entre el `lw` y el `mul` elimina el riesgo de datos:
> [Tu explicación aquí]

---

## 3. Comparativa de Resultados

| Métrica | Código Base | Código Optimizado | Mejora (%) |
|---------|-------------|-------------------|------------|
| Ciclos Totales |             |                   |            |
| Stalls (Paradas) |             |                   |            |
| CPI |             |                   |            |

---

## 4. Conclusiones
¿Qué impacto tiene la segmentación en el diseño de software de bajo nivel? ¿Es siempre posible eliminar todas las paradas?
> [Tus conclusiones aquí]

