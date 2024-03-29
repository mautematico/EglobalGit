
<%@ page import="com.mx.eglobal.Profesores" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profesores.label', default: 'Profesores')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-profesores" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-profesores" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>			
	

			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="apemat" title="${message(code: 'profesores.apemat.label', default: 'Apemat')}" />
					
						<g:sortableColumn property="apepat" title="${message(code: 'profesores.apepat.label', default: 'Apepat')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'profesores.nombre.label', default: 'Nombre')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${profesoresInstanceList}" status="i" var="profesoresInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${profesoresInstance.id}">${fieldValue(bean: profesoresInstance, field: "apemat")}</g:link></td>
					
						<td>${fieldValue(bean: profesoresInstance, field: "apepat")}</td>
					
						<td>${fieldValue(bean: profesoresInstance, field: "nombre")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${profesoresInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
