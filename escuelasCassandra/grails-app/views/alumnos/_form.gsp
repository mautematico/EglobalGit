<%@ page import="com.mx.eglobal.Alumnos" %>



<div class="fieldcontain ${hasErrors(bean: alumnosInstance, field: 'apellido', 'error')} ">
	<label for="apellido">
		<g:message code="alumnos.apellido.label" default="Apellido" />
		
	</label>
	<g:textField name="apellido" value="${alumnosInstance?.apellido}" />

</div>

<div class="fieldcontain ${hasErrors(bean: alumnosInstance, field: 'escuela', 'error')} ">
	<label for="escuela">
		<g:message code="alumnos.escuela.label" default="Escuela" />
		
	</label>
	<g:textField name="escuela" value="${alumnosInstance?.escuela}" />

</div>

<div class="fieldcontain ${hasErrors(bean: alumnosInstance, field: 'grupo', 'error')} ">
	<label for="grupo">
		<g:message code="alumnos.grupo.label" default="Grupo" />
		
	</label>
	<g:textField name="grupo" value="${alumnosInstance?.grupo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: alumnosInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="alumnos.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${alumnosInstance?.nombre}" />

</div>

