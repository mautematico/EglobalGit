<%@ page import="com.mx.eglobal.Books" %>



<div class="fieldcontain ${hasErrors(bean: booksInstance, field: 'costo', 'error')} required">
	<label for="costo">
		<g:message code="books.costo.label" default="Costo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="costo" value="${fieldValue(bean: booksInstance, field: 'costo')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: booksInstance, field: 'genero', 'error')} required">
	<label for="genero">
		<g:message code="books.genero.label" default="Genero" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="genero" required="" value="${booksInstance?.genero}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: booksInstance, field: 'isbn', 'error')} required">
	<label for="isbn">
		<g:message code="books.isbn.label" default="Isbn" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="isbn" required="" value="${booksInstance?.isbn}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: booksInstance, field: 'nopags', 'error')} required">
	<label for="nopags">
		<g:message code="books.nopags.label" default="Nopags" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="nopags" type="number" value="${booksInstance.nopags}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: booksInstance, field: 'titulo', 'error')} required">
	<label for="titulo">
		<g:message code="books.titulo.label" default="Titulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="titulo" required="" value="${booksInstance?.titulo}"/>

</div>

