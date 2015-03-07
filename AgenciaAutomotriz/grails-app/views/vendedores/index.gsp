
<%@ page import="agenciaaut.Vendedores" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vendedores.label', default: 'Vendedores')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-vendedores" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-vendedores" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="apeMat" title="${message(code: 'vendedores.apeMat.label', default: 'Ape Mat')}" />
					
						<g:sortableColumn property="apePat" title="${message(code: 'vendedores.apePat.label', default: 'Ape Pat')}" />
					
						<g:sortableColumn property="comision" title="${message(code: 'vendedores.comision.label', default: 'Comision')}" />
					
						<g:sortableColumn property="edad" title="${message(code: 'vendedores.edad.label', default: 'Edad')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'vendedores.nombre.label', default: 'Nombre')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${vendedoresInstanceList}" status="i" var="vendedoresInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${vendedoresInstance.id}">${fieldValue(bean: vendedoresInstance, field: "apeMat")}</g:link></td>
					
						<td>${fieldValue(bean: vendedoresInstance, field: "apePat")}</td>
					
						<td>${fieldValue(bean: vendedoresInstance, field: "comision")}</td>
					
						<td>${fieldValue(bean: vendedoresInstance, field: "edad")}</td>
					
						<td>${fieldValue(bean: vendedoresInstance, field: "nombre")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${vendedoresInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
