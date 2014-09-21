<%@ page import="net.objectzen.bounty.domain.Person" %>



<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="person.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${personInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'nickname', 'error')} required">
    <label for="name">
        <g:message code="person.nickname.label" default="Nickname" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="nickname" required="" value="${personInstance?.nickname}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="person.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${personInstance?.email}"/>

</div>

