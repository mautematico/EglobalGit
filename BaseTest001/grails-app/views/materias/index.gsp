
<%@ page import="com.mx.eglobal.consola.Materias" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'materias.label', default: 'Materias')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-materias" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-materias" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'materias.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="minCreditos" title="${message(code: 'materias.minCreditos.label', default: 'Min Creditos')}" />
					
						<g:sortableColumn property="horario" title="${message(code: 'materias.horario.label', default: 'Horario')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${materiasInstanceList}" status="i" var="materiasInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${materiasInstance.id}">${fieldValue(bean: materiasInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: materiasInstance, field: "minCreditos")}</td>
					
						<td><g:formatDate date="${materiasInstance.horario}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${materiasInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
