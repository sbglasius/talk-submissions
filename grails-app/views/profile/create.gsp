<%@ page import="cacoethes.Profile" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'profile.label', default: 'Profile')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>

<body>
<div id="create-profile" role="main">
    <p>You don't have a profile yet. Please create one before submitting any talks.</p>

    <h1><g:message code="default.create.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:form action="save" class="form-horizontal" role="form">
        <g:render template="form"/>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <g:submitButton name="create" class="save btn btn-default"
                                value="${message(code: 'default.button.create.label', default: 'Create')}"/>
            </div>
        </div>
    </g:form>
</div>
</body>
</html>
