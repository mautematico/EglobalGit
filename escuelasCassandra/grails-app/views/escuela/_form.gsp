<%@ page import="com.mx.eglobal.Escuela" %>



<div class="fieldcontain ${hasErrors(bean: escuelaInstance, field: 'alumnos', 'error')} ">
	<label for="alumnos">
		<g:message code="escuela.alumnos.label" default="Alumnos" />
		
	</label>
	<g:select name="alumnos" from="${com.mx.eglobal.Alumnos.list()}" multiple="multiple" optionKey="id" size="5" required="" value="${escuelaInstance?.alumnos*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: escuelaInstance, field: 'codigopostal', 'error')} ">
	<label for="codigopostal">
		<g:message code="escuela.codigopostal.label" default="Codigopostal" />
		
	</label>
	<g:textField name="codigopostal" value="${escuelaInstance?.codigopostal}" />

</div>

<div class="fieldcontain ${hasErrors(bean: escuelaInstance, field: 'direccion', 'error')} ">
	<label for="direccion">
		<g:message code="escuela.direccion.label" default="Direccion" />
		
	</label>
	<g:textField name="direccion" value="${escuelaInstance?.direccion}" />

</div>

<div class="fieldcontain ${hasErrors(bean: escuelaInstance, field: 'idalumnos', 'error')} ">
	<label for="idalumnos">
		<g:message code="escuela.idalumnos.label" default="Idalumnos" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: escuelaInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="escuela.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${escuelaInstance?.nombre}" />

</div>

<div class="fieldcontain ${hasErrors(bean: escuelaInstance, field: 'tipo', 'error')} ">
	<label for="tipo">
		<g:message code="escuela.tipo.label" default="Tipo" />
		
	</label>
	<g:field type="number" name="tipo" value="${escuelaInstance.tipo}" />

</div>

