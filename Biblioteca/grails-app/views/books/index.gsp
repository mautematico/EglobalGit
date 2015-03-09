
<%@ page import="com.mx.eglobal.Books" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'books.label', default: 'Books')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-books" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-books" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="costo" title="${message(code: 'books.costo.label', default: 'Costo')}" />
					
						<g:sortableColumn property="genero" title="${message(code: 'books.genero.label', default: 'Genero')}" />
					
						<g:sortableColumn property="isbn" title="${message(code: 'books.isbn.label', default: 'Isbn')}" />
					
						<g:sortableColumn property="nopags" title="${message(code: 'books.nopags.label', default: 'Nopags')}" />
					
						<g:sortableColumn property="titulo" title="${message(code: 'books.titulo.label', default: 'Titulo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${booksInstanceList}" status="i" var="booksInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${booksInstance.id}">${fieldValue(bean: booksInstance, field: "costo")}</g:link></td>
					
						<td>${fieldValue(bean: booksInstance, field: "genero")}</td>
					
						<td>${fieldValue(bean: booksInstance, field: "isbn")}</td>
					
						<td>${fieldValue(bean: booksInstance, field: "nopags")}</td>
					
						<td>${fieldValue(bean: booksInstance, field: "titulo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${booksInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
