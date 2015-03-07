
<%@ page import="agenciaaut.Marcas" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'marcas.label', default: 'Marcas')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-marcas" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-marcas" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="empresa" title="${message(code: 'marcas.empresa.label', default: 'Empresa')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'marcas.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="pais" title="${message(code: 'marcas.pais.label', default: 'Pais')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${marcasInstanceList}" status="i" var="marcasInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${marcasInstance.id}">${fieldValue(bean: marcasInstance, field: "empresa")}</g:link></td>
					
						<td>${fieldValue(bean: marcasInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: marcasInstance, field: "pais")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${marcasInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
