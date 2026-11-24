# Casos de prueba y trazabilidad

Los identificadores ALU son de la matriz original. TC-02 identifica aquí una fila que no tenía ID. Resultados históricos de enero de 2026; los pasos se han resumido. No se asigna severidad ni estado actual.

| Caso | Regla / escenario | Pasos y datos registrados | Esperado | Observado | Estado | Hallazgo |
|---|---|---|---|---|---|---|
| ALU-001 | Reserva válida | Alumno autenticado; elegir asignatura, zona, periodo, día, horario y tutor; verificar y crear | Sesión creada y confirmación | Sesión creada y confirmación | PASS | — |
| TC-02 (sin ID original) | Evitar horario ocupado | Tutor no disponible; elegir rango y tutor; crear | Bloqueo y validación | Sesión creada en horario asignado | FAIL | [DEF-01](reporte-de-defectos.md#def-01--reserva-en-horario-ya-asignado) |
| ALU-004 | Disponibilidad parcial | Tutor disponible 15:00–16:00; solicitar 15:30–16:30 y crear | Bloqueo e información de no disponibilidad | Nota: se agenda parcialmente; resultado real vacío | FAIL | [DEF-02](reporte-de-defectos.md#def-02--reserva-con-disponibilidad-parcial) |
| ALU-006 | Tutor obligatorio | No seleccionar tutor y completar agendamiento | Solicitar tutor | Agendamiento exitoso sin tutor | FAIL | [DEF-03](reporte-de-defectos.md#def-03--reserva-sin-tutor) |
| ALU-010 | Día dentro del periodo | Seleccionar periodo que no contiene el día elegido; completar reserva | Bloqueo y validación | Agendamiento exitoso con inconsistencia | FAIL | [DEF-04](reporte-de-defectos.md#def-04--día-fuera-del-periodo) |
| ALU-011 | Hora futura | Intentar agendar una hora pasada del mismo día | Bloqueo y validación | Agendamiento exitoso; pasos completos y hora de sesión no consignados | FAIL | [DEF-05](reporte-de-defectos.md#def-05--hora-pasada-del-mismo-día) |
| ALU-002 | Inicio igual a fin | Ingresar 12:30–12:30 e intentar continuar | Bloqueo y aviso | Bloqueo tras elegir tutor; aviso ausente en Safari según nota | PASS | Observación UX |
| ALU-005 | Selección de día obligatoria | Continuar sin seleccionar día | Bloqueo y mensaje | Bloqueo y mensaje | PASS | — |

La matriz registra cinco filas FAIL; las dos de disponibilidad podrían corresponder a una causa común, que no ha sido investigada. ALU-007 requiere aclaración: el título, resultado y PASS no son consistentes con suficiente claridad; el plan admite minutos sin redondear.
