<%@ page import="com.mx.eglobal.Escuelas" %>



<div class="fieldcontain ${hasErrors(bean: escuelasInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="escuelas.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${escuelasInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: escuelasInstance, field: 'region', 'error')} required">
	<label for="region">
		<g:message code="escuelas.region.label" default="Region" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="region" required="" value="${escuelasInstance?.region}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: escuelasInstance, field: 'alumnos', 'error')} ">
	<label for="alumnos">
		<g:message code="escuelas.alumnos.label" default="Alumnos" />
		
	</label>
	<g:select name="alumnos" from="${com.mx.eglobal.Alumnos.list()}" multiple="multiple" optionKey="id" size="5" value="${escuelasInstance?.alumnos*.id}" class="many-to-many"/>

</div>

