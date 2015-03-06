<%@ page import="ejemplopostgress.Profesores" %>



<div class="fieldcontain ${hasErrors(bean: profesoresInstance, field: 'edad', 'error')} required">
	<label for="edad">
		<g:message code="profesores.edad.label" default="Edad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="edad" type="number" value="${profesoresInstance.edad}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: profesoresInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="profesores.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${profesoresInstance?.nombre}"/>

</div>

