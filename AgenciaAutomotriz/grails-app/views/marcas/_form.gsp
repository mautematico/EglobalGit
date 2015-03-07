<%@ page import="agenciaaut.Marcas" %>



<div class="fieldcontain ${hasErrors(bean: marcasInstance, field: 'empresa', 'error')} required">
	<label for="empresa">
		<g:message code="marcas.empresa.label" default="Empresa" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="empresa" required="" value="${marcasInstance?.empresa}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: marcasInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="marcas.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${marcasInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: marcasInstance, field: 'pais', 'error')} required">
	<label for="pais">
		<g:message code="marcas.pais.label" default="Pais" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="pais" required="" value="${marcasInstance?.pais}"/>

</div>

