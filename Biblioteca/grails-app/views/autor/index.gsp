
<%@ page import="com.mx.eglobal.Autor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'autor.label', default: 'Autor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-autor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-autor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="apmat" title="${message(code: 'autor.apmat.label', default: 'Apmat')}" />
					
						<g:sortableColumn property="appat" title="${message(code: 'autor.appat.label', default: 'Appat')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'autor.nombre.label', default: 'Nombre')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${autorInstanceList}" status="i" var="autorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${autorInstance.id}">${fieldValue(bean: autorInstance, field: "apmat")}</g:link></td>
					
						<td>${fieldValue(bean: autorInstance, field: "appat")}</td>
					
						<td>${fieldValue(bean: autorInstance, field: "nombre")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${autorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
