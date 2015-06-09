<%@ page import="com.mx.eglobal.Telefono" %>



<div class="fieldcontain ${hasErrors(bean: telefonoInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="telefono.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefono" required="" value="${telefonoInstance?.telefono}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: telefonoInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="telefono.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tipo" required="" value="${telefonoInstance?.tipo}"/>

</div>

