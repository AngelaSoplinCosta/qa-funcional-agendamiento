# language: es
# Escenarios documentales adaptados del registro manual de enero de 2026.
# No se incluye automatización ni pasos ejecutables.
Característica: Agendamiento de una clase

  Escenario: Reserva válida (ALU-001, PASS)
    Dado que el alumno está autenticado y hay un tutor disponible
    Cuando ingresa un periodo, día y horario válidos y crea la sesión
    Entonces se crea la sesión y se muestra una confirmación

  Escenario: Horario ya ocupado (sin ID original, FAIL)
    Dado que el tutor no está disponible en el horario solicitado
    Cuando el alumno intenta crear una sesión en ese rango
    Entonces se bloquea la reserva y se muestra una validación

  Escenario: Tutor obligatorio (ALU-006, FAIL)
    Dado que el alumno está en el flujo de agendamiento
    Cuando intenta completar la reserva sin seleccionar tutor
    Entonces se solicita la selección de un tutor

  Escenario: Día fuera del periodo (ALU-010, FAIL)
    Dado que el alumno selecciona un periodo válido
    Cuando elige un día de la semana que no ocurre en ese periodo
    Entonces se bloquea la reserva y se muestra una validación
