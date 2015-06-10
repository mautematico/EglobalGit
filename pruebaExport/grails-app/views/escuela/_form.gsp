<%@ page import="com.mx.eglobal.Escuela" %>



<div class="fieldcontain ${hasErrors(bean: escuelaInstance, field: 'alumnos', 'error')} ">
	<label for="alumnos">
		<g:message code="escuela.alumnos.label" default="Alumnos" />
		
	</label>
	<g:select name="alumnos" from="${com.mx.eglobal.Alumno.list()}" multiple="multiple" optionKey="id" size="5" value="${escuelaInstance?.alumnos*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: escuelaInstance, field: 'codigo', 'error')} required">
	<label for="codigo">
		<g:message code="escuela.codigo.label" default="Codigo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="codigo" type="number" value="${escuelaInstance.codigo}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: escuelaInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="escuela.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${escuelaInstance?.nombre}"/>

</div>

