<%@ page import="net.objectzen.bounty.domain.Bounty" %>



<div class="fieldcontain ${hasErrors(bean: bountyInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="bounty.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${bountyInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bountyInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="bounty.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${bountyInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bountyInstance, field: 'value', 'error')} required">
	<label for="value">
		<g:message code="bounty.value.label" default="Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="value" value="${fieldValue(bean: bountyInstance, field: 'value')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: bountyInstance, field: 'submitter', 'error')} required">
	<label for="submitter">
		<g:message code="bounty.submitter.label" default="Submitter" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="submitter" name="submitter.id" from="${net.objectzen.bounty.domain.Person.list()}" optionKey="id" required="" value="${bountyInstance?.submitter?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bountyInstance, field: 'resolver', 'error')} ">
	<label for="resolver">
		<g:message code="bounty.resolver.label" default="Resolver" />
		
	</label>
	<g:select id="resolver" name="resolver.id" from="${net.objectzen.bounty.domain.Person.list()}" optionKey="id" value="${bountyInstance?.resolver?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>


