
<%@ page import="com.mx.eglobal.Books" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'books.label', default: 'Books')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-books" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-books" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list books">
			
				<g:if test="${booksInstance?.costo}">
				<li class="fieldcontain">
					<span id="costo-label" class="property-label"><g:message code="books.costo.label" default="Costo" /></span>
					
						<span class="property-value" aria-labelledby="costo-label"><g:fieldValue bean="${booksInstance}" field="costo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${booksInstance?.genero}">
				<li class="fieldcontain">
					<span id="genero-label" class="property-label"><g:message code="books.genero.label" default="Genero" /></span>
					
						<span class="property-value" aria-labelledby="genero-label"><g:fieldValue bean="${booksInstance}" field="genero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${booksInstance?.isbn}">
				<li class="fieldcontain">
					<span id="isbn-label" class="property-label"><g:message code="books.isbn.label" default="Isbn" /></span>
					
						<span class="property-value" aria-labelledby="isbn-label"><g:fieldValue bean="${booksInstance}" field="isbn"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${booksInstance?.nopags}">
				<li class="fieldcontain">
					<span id="nopags-label" class="property-label"><g:message code="books.nopags.label" default="Nopags" /></span>
					
						<span class="property-value" aria-labelledby="nopags-label"><g:fieldValue bean="${booksInstance}" field="nopags"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${booksInstance?.titulo}">
				<li class="fieldcontain">
					<span id="titulo-label" class="property-label"><g:message code="books.titulo.label" default="Titulo" /></span>
					
						<span class="property-value" aria-labelledby="titulo-label"><g:fieldValue bean="${booksInstance}" field="titulo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:booksInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${booksInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
