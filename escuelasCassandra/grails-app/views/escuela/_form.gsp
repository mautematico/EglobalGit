<%@ page import="com.mx.eglobal.Escuela" %>



<div class="fieldcontain ${hasErrors(bean: escuelaInstance, field: 'clave', 'error')} ">
	<label for="clave">
		<g:message code="escuela.clave.label" default="Clave" />
		
	</label>
	<g:textField name="clave" value="${escuelaInstance?.clave}" />

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

