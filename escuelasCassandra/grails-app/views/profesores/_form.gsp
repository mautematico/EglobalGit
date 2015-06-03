<%@ page import="com.mx.eglobal.Profesores" %>



<div class="fieldcontain ${hasErrors(bean: profesoresInstance, field: 'apemat', 'error')} ">
	<label for="apemat">
		<g:message code="profesores.apemat.label" default="Apemat" />
		
	</label>
	<g:textField name="apemat" value="${profesoresInstance?.apemat}" />

</div>

<div class="fieldcontain ${hasErrors(bean: profesoresInstance, field: 'apepat', 'error')} ">
	<label for="apepat">
		<g:message code="profesores.apepat.label" default="Apepat" />
		
	</label>
	<g:textField name="apepat" value="${profesoresInstance?.apepat}" />

</div>

<div class="fieldcontain ${hasErrors(bean: profesoresInstance, field: 'empleado', 'error')} ">
	<label for="empleado">
		<g:message code="profesores.empleado.label" default="Empleado" />
		
	</label>
	<g:field type="number" name="empleado" value="${profesoresInstance.empleado}" />

</div>

<div class="fieldcontain ${hasErrors(bean: profesoresInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="profesores.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${profesoresInstance?.nombre}" />

</div>

