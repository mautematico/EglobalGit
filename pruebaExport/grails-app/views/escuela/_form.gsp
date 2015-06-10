<%@ page import="com.mx.eglobal.Escuela" %>



<div class="fieldcontain ${hasErrors(bean: escuelaInstance, field: 'alumnos', 'error')} ">
	<label for="alumnos">
		<g:message code="escuela.alumnos.label" default="Alumnos" />
		
	</label>
	<g:select name="alumnos" from="${com.mx.eglobal.Alumno.list()}" multiple="multiple" optionKey="id" size="5" value="${escuelaInstance?.alumnos*.id}" class="many-to-many"/>

</div>

