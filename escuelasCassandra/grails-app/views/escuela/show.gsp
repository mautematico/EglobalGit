
<%@ page import="com.mx.eglobal.Escuela" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'escuela.label', default: 'Escuela')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-escuela" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-escuela" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list escuela">
			
				<g:if test="${escuelaInstance?.codigopostal}">
				<li class="fieldcontain">
					<span id="codigopostal-label" class="property-label"><g:message code="escuela.codigopostal.label" default="Codigopostal" /></span>
					
						<span class="property-value" aria-labelledby="codigopostal-label"><g:fieldValue bean="${escuelaInstance}" field="codigopostal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${escuelaInstance?.direccion}">
				<li class="fieldcontain">
					<span id="direccion-label" class="property-label"><g:message code="escuela.direccion.label" default="Direccion" /></span>
					
						<span class="property-value" aria-labelledby="direccion-label"><g:fieldValue bean="${escuelaInstance}" field="direccion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${escuelaInstance?.idalumnos}">
				<li class="fieldcontain">
					<span id="idalumnos-label" class="property-label"><g:message code="escuela.idalumnos.label" default="Idalumnos" /></span>
								<ul class="lista">
						        <g:each in="${alumnos}" var="alumno">
						            <li>${alumno.nombre}</li>
						        </g:each>
						        </ul>
				</li>
				</g:if>

				<g:if test="${escuelaInstance?.idprofesores}">
				<li class="fieldcontain">
					<span id="idprofesores-label" class="property-label"><g:message code="escuela.idprofesores.label" default="Idprofesores" /></span>
								<ul class="lista">
						        <g:each in="${profesores}" var="profesor">
						            <li>${profesor.nombre}</li>
						        </g:each>
						        </ul>
				</li>
				</g:if>
			
				<g:if test="${escuelaInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="escuela.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${escuelaInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${escuelaInstance?.tipo}">
				<li class="fieldcontain">
					<span id="tipo-label" class="property-label"><g:message code="escuela.tipo.label" default="Tipo" /></span>
					
						<span class="property-value" aria-labelledby="tipo-label"><g:fieldValue bean="${escuelaInstance}" field="tipo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:escuelaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${escuelaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
