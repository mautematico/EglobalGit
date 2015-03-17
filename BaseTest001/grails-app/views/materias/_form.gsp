<%@ page import="com.mx.eglobal.consola.Materias" %>



<div class="fieldcontain ${hasErrors(bean: materiasInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="materias.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${materiasInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: materiasInstance, field: 'minCreditos', 'error')} required">
	<label for="minCreditos">
		<g:message code="materias.minCreditos.label" default="Min Creditos" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="minCreditos" type="number" value="${materiasInstance.minCreditos}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: materiasInstance, field: 'horario', 'error')} ">
	<label for="horario">
		<g:message code="materias.horario.label" default="Horario" />
		
	</label>
    <calendar:datePicker name="horario" value="${materiasInstance?.horario}"  defaultValue="${new Date()}"/>

</div>

