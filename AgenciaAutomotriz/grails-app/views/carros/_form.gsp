<%@ page import="agenciaaut.Carros" %>



<div class="fieldcontain ${hasErrors(bean: carrosInstance, field: 'color', 'error')} required">
	<label for="color">
		<g:message code="carros.color.label" default="Color" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="color" required="" value="${carrosInstance?.color}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: carrosInstance, field: 'marca', 'error')} required">
	<label for="marca">
		<g:message code="carros.marca.label" default="Marca" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="marca" name="marca.id" from="${agenciaaut.Marcas.list()}" optionKey="id" required="" value="${carrosInstance?.marca?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: carrosInstance, field: 'modelo', 'error')} required">
	<label for="modelo">
		<g:message code="carros.modelo.label" default="Modelo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="modelo" required="" value="${carrosInstance?.modelo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: carrosInstance, field: 'placas', 'error')} required">
	<label for="placas">
		<g:message code="carros.placas.label" default="Placas" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="placas" required="" value="${carrosInstance?.placas}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: carrosInstance, field: 'precio', 'error')} required">
	<label for="precio">
		<g:message code="carros.precio.label" default="Precio" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="precio" type="number" value="${carrosInstance.precio}" required=""/>

</div>

