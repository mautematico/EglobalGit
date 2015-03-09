<%@ page import="com.mx.eglobal.Autor" %>



<div class="fieldcontain ${hasErrors(bean: autorInstance, field: 'apmat', 'error')} required">
	<label for="apmat">
		<g:message code="autor.apmat.label" default="Apmat" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apmat" required="" value="${autorInstance?.apmat}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: autorInstance, field: 'appat', 'error')} required">
	<label for="appat">
		<g:message code="autor.appat.label" default="Appat" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="appat" required="" value="${autorInstance?.appat}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: autorInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="autor.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${autorInstance?.nombre}"/>

</div>

