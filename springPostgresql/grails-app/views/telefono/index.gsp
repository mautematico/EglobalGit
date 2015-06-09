
<%@ page import="com.mx.eglobal.Telefono" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'telefono.label', default: 'Telefono')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-telefono" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-telefono" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="telefono" title="${message(code: 'telefono.telefono.label', default: 'Telefono')}" />
					
						<g:sortableColumn property="tipo" title="${message(code: 'telefono.tipo.label', default: 'Tipo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${telefonoInstanceList}" status="i" var="telefonoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${telefonoInstance.id}">${fieldValue(bean: telefonoInstance, field: "telefono")}</g:link></td>
					
						<td>${fieldValue(bean: telefonoInstance, field: "tipo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${telefonoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
