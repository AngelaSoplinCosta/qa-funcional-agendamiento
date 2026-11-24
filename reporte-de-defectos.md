# Reporte de hallazgos funcionales

Fichas derivadas de la matriz de enero de 2026. DEF-01 a DEF-05 son identificadores creados para esta presentación, no IDs originales. Las condiciones y pasos incompletos se indican; se describen impactos potenciales, no consecuencias comprobadas. La matriz no contiene severidad, prioridad, seguimiento de corrección ni retest.

## DEF-01 — Reserva en horario ya asignado
**Caso:** fila sin ID original (TC-02 en este repositorio).  
**Condición:** tutor no disponible en el horario solicitado.  
**Pasos:** elegir el rango ocupado, seleccionar tutor e intentar crear la sesión.  
**Esperado:** bloquear e informar.  
**Observado:** se muestra éxito y se crea una sesión en un horario ya asignado.  
**Impacto potencial:** solapamiento de sesiones del tutor.

## DEF-02 — Reserva con disponibilidad parcial
**Caso:** ALU-004.  
**Condición y datos:** tutor disponible 15:00–16:00; solicitud 15:30–16:30.  
**Pasos:** seleccionar el rango, seleccionar tutor e intentar crear la sesión.  
**Esperado:** bloquear e informar que no hay disponibilidad para todo el rango.  
**Observado:** el caso figura FAIL y la nota indica que se agenda; la celda de resultado real está vacía.  
**Impacto potencial:** reservar tiempo durante el que el tutor no está disponible. Relacionado con DEF-01; causa común no confirmada.

## DEF-03 — Reserva sin tutor
**Caso:** ALU-006.  
**Condición:** alumno autenticado en el flujo.  
**Pasos:** dejar sin seleccionar el tutor e intentar completar el agendamiento.  
**Esperado:** solicitar la selección de tutor.  
**Observado:** agendamiento exitoso; la nota señala que ocurrió en Chrome, Safari y Firefox.  
**Impacto potencial:** sesión creada sin tutor asignado.

## DEF-04 — Día fuera del periodo
**Caso:** ALU-010.  
**Condición:** periodo seleccionado que no incluye el día de la semana elegido.  
**Pasos:** seleccionar asignatura, zona y periodo; elegir ese día y completar el flujo.  
**Esperado:** bloquear e informar que se elija un día dentro del periodo.  
**Observado:** agendamiento exitoso con inconsistencia entre día y periodo.  
**Impacto potencial:** sesión con fechas incoherentes o confusión para el usuario.

## DEF-05 — Hora pasada del mismo día
**Caso:** ALU-011.  
**Condición:** intentar reservar una hora que ya pasó ese día.  
**Pasos:** seleccionar fecha y hora e intentar agendar; la matriz no consigna los pasos completos ni la hora de sesión.  
**Esperado:** bloquear e indicar que la hora debe ser posterior a la actual.  
**Observado:** agendamiento exitoso.  
**Impacto potencial:** creación de una sesión que no podría ocurrir en la hora indicada.

## Observaciones de UX
- Al omitir AM/PM se visualizó una hora diferente en verificación y el bloqueo ocurrió más adelante; se observó una presentación más clara en Firefox.
- Para inicio igual a fin, la nota reporta aviso ausente en Safari; el flujo bloqueó antes de finalizar.
- Para inicio posterior al fin, la nota señala ausencia de aviso en Chrome, Firefox y Safari; la reserva fue bloqueada posteriormente.
