
<%@ page import="com.mx.eglobal.Profesores" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profesores.label', default: 'Profesores')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-profesores" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-profesores" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list profesores">
			
				<g:if test="${profesoresInstance?.apemat}">
				<li class="fieldcontain">
					<span id="apemat-label" class="property-label"><g:message code="profesores.apemat.label" default="Apemat" /></span>
					
						<span class="property-value" aria-labelledby="apemat-label"><g:fieldValue bean="${profesoresInstance}" field="apemat"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profesoresInstance?.apepat}">
				<li class="fieldcontain">
					<span id="apepat-label" class="property-label"><g:message code="profesores.apepat.label" default="Apepat" /></span>
					
						<span class="property-value" aria-labelledby="apepat-label"><g:fieldValue bean="${profesoresInstance}" field="apepat"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profesoresInstance?.empleado}">
				<li class="fieldcontain">
					<span id="empleado-label" class="property-label"><g:message code="profesores.empleado.label" default="Empleado" /></span>
					
						<span class="property-value" aria-labelledby="empleado-label"><g:fieldValue bean="${profesoresInstance}" field="empleado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profesoresInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="profesores.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${profesoresInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:profesoresInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${profesoresInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
