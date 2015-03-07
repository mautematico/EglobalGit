<%@ page import="agenciaaut.Vendedores" %>



<div class="fieldcontain ${hasErrors(bean: vendedoresInstance, field: 'apeMat', 'error')} required">
	<label for="apeMat">
		<g:message code="vendedores.apeMat.label" default="Ape Mat" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apeMat" required="" value="${vendedoresInstance?.apeMat}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vendedoresInstance, field: 'apePat', 'error')} required">
	<label for="apePat">
		<g:message code="vendedores.apePat.label" default="Ape Pat" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apePat" required="" value="${vendedoresInstance?.apePat}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vendedoresInstance, field: 'comision', 'error')} required">
	<label for="comision">
		<g:message code="vendedores.comision.label" default="Comision" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="comision" type="number" value="${vendedoresInstance.comision}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: vendedoresInstance, field: 'edad', 'error')} required">
	<label for="edad">
		<g:message code="vendedores.edad.label" default="Edad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="edad" type="number" value="${vendedoresInstance.edad}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: vendedoresInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="vendedores.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${vendedoresInstance?.nombre}"/>

</div>

