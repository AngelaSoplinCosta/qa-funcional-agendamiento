# Plan de pruebas funcionales

**Periodo:** enero de 2026 · **Modalidad:** manual · **Entorno:** pruebas

## Objetivo
Validar el agendamiento de una clase conforme a las reglas de negocio y detectar problemas funcionales y de experiencia de usuario.

## Alcance
Selección de asignatura, zona horaria, fechas, días y horarios; disponibilidad de tutor; verificación y creación de sesión. La integración con calendario externo se contempló para una fase posterior; no se acredita aquí su ejecución. Fuera de alcance: reprogramación, cancelación, pagos y recordatorios.

## Condiciones y reglas
- Alumno autenticado, flujo disponible y disponibilidad del tutor previamente configurada.
- Zona horaria configurada para el proyecto; al menos un día seleccionado.
- Inicio anterior al fin, fechas no pasadas y tutor disponible en el rango solicitado.
- Minutos sin redondeo permitidos cuando hay disponibilidad; verificación previa a la creación.

## Enfoque y criterios
Pruebas funcionales, negativas, reglas de negocio y observaciones de UX. El plan contempla Chrome, Firefox y Safari: consultar los casos para los detalles registrados por navegador. Una reserva válida debe completarse y confirmarse; los datos inválidos deben bloquearse, y la verificación debe reflejar la selección.

## Riesgos identificados
Horarios incorrectos, falta de disponibilidad, confusión en la verificación, duplicidad y falta de registro para las partes. Los riesgos son hipótesis del plan, no evidencia por sí mismos.
