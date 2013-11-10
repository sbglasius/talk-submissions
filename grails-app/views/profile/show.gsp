<%@ page import="cacoethes.Profile" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'profile.label', default: 'Profile')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <tmpl:/common/flash/>

    <div class="form-horizontal">
        <f:with bean="${profileInstance}">
            <f:display property="name"/>
            <f:display property="email"/>
            <f:display property="bio">
                <markdown:renderHtml><g:fieldValue bean="${profileInstance}" field="bio"/></markdown:renderHtml>
            </f:display>
            <f:display property="needTravel"/>
            <f:display property="needAccommodation"/>
            <f:display property="travelFrom"/>
        </f:with>
        <sec:ifAllGranted roles="ROLE_ADMIN">
            <g:if test="${profileInstance?.user}">
                <f:display bean="${profileInstance}" property="user">
                    <g:link controller="user" action="show"
                            id="${profileInstance?.user?.id}">${profileInstance?.user?.encodeAsHTML()}</g:link>
                </f:display>
            </g:if>
        </sec:ifAllGranted>
        <g:form>
            <g:hiddenField name="id" value="${profileInstance?.id}"/>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <g:link class="edit btn btn-default" action="edit" id="${profileInstance?.id}">
                        <g:message code="default.button.edit.label" default="Edit"/>
                    </g:link>
                    <g:actionSubmit class="delete btn btn-warning" action="delete"
                                    value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                    onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                </div>
            </div>
        </g:form>
    </div>
</body>
</html>
