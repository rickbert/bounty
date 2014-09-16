
<%@ page import="net.objectzen.bounty.domain.Bounty" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bounty.label', default: 'Bounty')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-bounty" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-bounty" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'bounty.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'bounty.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="value" title="${message(code: 'bounty.value.label', default: 'Value')}" />
					
						<th><g:message code="bounty.submitter.label" default="Submitter" /></th>
					
						<th><g:message code="bounty.resolver.label" default="Resolver" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'bounty.dateCreated.label', default: 'Date Created')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${bountyInstanceList}" status="i" var="bountyInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${bountyInstance.id}">${fieldValue(bean: bountyInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: bountyInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: bountyInstance, field: "value")}</td>
					
						<td>${fieldValue(bean: bountyInstance, field: "submitter")}</td>
					
						<td>${fieldValue(bean: bountyInstance, field: "resolver")}</td>
					
						<td>${fieldValue(bean: bountyInstance, field: "dateCreated")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${bountyInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
