
<%@ page import="agenciaaut.Vendedores" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vendedores.label', default: 'Vendedores')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-vendedores" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-vendedores" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list vendedores">
			
				<g:if test="${vendedoresInstance?.apeMat}">
				<li class="fieldcontain">
					<span id="apeMat-label" class="property-label"><g:message code="vendedores.apeMat.label" default="Ape Mat" /></span>
					
						<span class="property-value" aria-labelledby="apeMat-label"><g:fieldValue bean="${vendedoresInstance}" field="apeMat"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vendedoresInstance?.apePat}">
				<li class="fieldcontain">
					<span id="apePat-label" class="property-label"><g:message code="vendedores.apePat.label" default="Ape Pat" /></span>
					
						<span class="property-value" aria-labelledby="apePat-label"><g:fieldValue bean="${vendedoresInstance}" field="apePat"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vendedoresInstance?.comision}">
				<li class="fieldcontain">
					<span id="comision-label" class="property-label"><g:message code="vendedores.comision.label" default="Comision" /></span>
					
						<span class="property-value" aria-labelledby="comision-label"><g:fieldValue bean="${vendedoresInstance}" field="comision"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vendedoresInstance?.edad}">
				<li class="fieldcontain">
					<span id="edad-label" class="property-label"><g:message code="vendedores.edad.label" default="Edad" /></span>
					
						<span class="property-value" aria-labelledby="edad-label"><g:fieldValue bean="${vendedoresInstance}" field="edad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vendedoresInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="vendedores.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${vendedoresInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:vendedoresInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${vendedoresInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
