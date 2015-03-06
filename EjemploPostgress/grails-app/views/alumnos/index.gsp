
<%@ page import="ejemplopostgress.Alumnos" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'alumnos.label', default: 'Alumnos')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-alumnos" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-alumnos" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="edad" title="${message(code: 'alumnos.edad.label', default: 'Edad')}" />
					
						<g:sortableColumn property="fechaNac" title="${message(code: 'alumnos.fechaNac.label', default: 'Fecha Nac')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'alumnos.nombre.label', default: 'Nombre')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${alumnosInstanceList}" status="i" var="alumnosInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${alumnosInstance.id}">${fieldValue(bean: alumnosInstance, field: "edad")}</g:link></td>
					
						<td><g:formatDate date="${alumnosInstance.fechaNac}" /></td>
					
						<td>${fieldValue(bean: alumnosInstance, field: "nombre")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${alumnosInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
