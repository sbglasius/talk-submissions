<%@ page import="cacoethes.Profile" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'profile.label', default: 'Profile')}"/>
    <title><g:message code="default.edit.label" args="[entityName]"/></title>
</head>

<body>
<div id="edit-profile" role="main">
    <h1><g:message code="default.edit.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:form method="post" class="form-horizontal" role="form">
        <g:hiddenField name="id" value="${profileInstance?.id}"/>
        <g:hiddenField name="version" value="${profileInstance?.version}"/>
        <g:render template="form"/>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <g:actionSubmit class="save btn btn-default" action="update"
                                value="${message(code: 'default.button.update.label', default: 'Update')}"/>
                <g:actionSubmit class="delete btn btn-warning" action="delete"
                                value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                formnovalidate=""
                                onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
            </div>
        </div>
    </g:form>
</div>
</body>
</html>
