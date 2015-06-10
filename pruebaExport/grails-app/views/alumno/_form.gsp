<%@ page import="com.mx.eglobal.Alumno" %>



<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'edad', 'error')} required">
	<label for="edad">
		<g:message code="alumno.edad.label" default="Edad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="edad" type="number" value="${alumnoInstance.edad}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="alumno.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${alumnoInstance?.nombre}"/>

</div>

