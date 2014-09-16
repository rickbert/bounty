
<%@ page import="net.objectzen.bounty.domain.Bounty" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bounty.label', default: 'Bounty')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-bounty" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-bounty" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list bounty">
			
				<g:if test="${bountyInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="bounty.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${bountyInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bountyInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="bounty.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${bountyInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bountyInstance?.value}">
				<li class="fieldcontain">
					<span id="value-label" class="property-label"><g:message code="bounty.value.label" default="Value" /></span>
					
						<span class="property-value" aria-labelledby="value-label"><g:fieldValue bean="${bountyInstance}" field="value"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bountyInstance?.submitter}">
				<li class="fieldcontain">
					<span id="submitter-label" class="property-label"><g:message code="bounty.submitter.label" default="Submitter" /></span>
					
						<span class="property-value" aria-labelledby="submitter-label"><g:link controller="person" action="show" id="${bountyInstance?.submitter?.id}">${bountyInstance?.submitter?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${bountyInstance?.resolver}">
				<li class="fieldcontain">
					<span id="resolver-label" class="property-label"><g:message code="bounty.resolver.label" default="Resolver" /></span>
					
						<span class="property-value" aria-labelledby="resolver-label"><g:link controller="person" action="show" id="${bountyInstance?.resolver?.id}">${bountyInstance?.resolver?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${bountyInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="bounty.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:fieldValue bean="${bountyInstance}" field="dateCreated"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bountyInstance?.dateResolved}">
				<li class="fieldcontain">
					<span id="dateResolved-label" class="property-label"><g:message code="bounty.dateResolved.label" default="Date Resolved" /></span>
					
						<span class="property-value" aria-labelledby="dateResolved-label"><g:fieldValue bean="${bountyInstance}" field="dateResolved"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:bountyInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${bountyInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
