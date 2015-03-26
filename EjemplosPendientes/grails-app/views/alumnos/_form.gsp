<%@ page import="com.mx.eglobal.Alumnos" %>



<div class="fieldcontain ${hasErrors(bean: alumnosInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="alumnos.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${alumnosInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alumnosInstance, field: 'apepat', 'error')} required">
	<label for="apepat">
		<g:message code="alumnos.apepat.label" default="Apepat" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apepat" required="" value="${alumnosInstance?.apepat}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alumnosInstance, field: 'apemat', 'error')} required">
	<label for="apemat">
		<g:message code="alumnos.apemat.label" default="Apemat" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apemat" required="" value="${alumnosInstance?.apemat}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alumnosInstance, field: 'edad', 'error')} required">
	<label for="edad">
		<g:message code="alumnos.edad.label" default="Edad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="edad" type="number" value="${alumnosInstance.edad}"/>

</div>

