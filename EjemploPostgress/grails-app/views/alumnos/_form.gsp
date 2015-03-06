<%@ page import="ejemplopostgress.Alumnos" %>



<div class="fieldcontain ${hasErrors(bean: alumnosInstance, field: 'edad', 'error')} required">
	<label for="edad">
		<g:message code="alumnos.edad.label" default="Edad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="edad" type="number" value="${alumnosInstance.edad}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: alumnosInstance, field: 'fechaNac', 'error')} required">
	<label for="fechaNac">
		<g:message code="alumnos.fechaNac.label" default="Fecha Nac" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaNac" precision="day"  value="${alumnosInstance?.fechaNac}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: alumnosInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="alumnos.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${alumnosInstance?.nombre}"/>

</div>

