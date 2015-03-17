
<%@ page import="com.mx.eglobal.consola.Materias" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'materias.label', default: 'Materias')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-materias" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-materias" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list materias">
			
				<g:if test="${materiasInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="materias.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${materiasInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${materiasInstance?.minCreditos}">
				<li class="fieldcontain">
					<span id="minCreditos-label" class="property-label"><g:message code="materias.minCreditos.label" default="Min Creditos" /></span>
					
						<span class="property-value" aria-labelledby="minCreditos-label"><g:fieldValue bean="${materiasInstance}" field="minCreditos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${materiasInstance?.horario}">
				<li class="fieldcontain">
					<span id="horario-label" class="property-label"><g:message code="materias.horario.label" default="Horario" /></span>
					
						<span class="property-value" aria-labelledby="horario-label"><g:formatDate date="${materiasInstance?.horario}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:materiasInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${materiasInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
