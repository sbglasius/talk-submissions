<%@ page import="cacoethes.Profile" %>

<f:with bean="${profileInstance}">
    <f:field property="name"/>
    <f:field property="email"/>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
    <div class="fieldinfo">A short bio of yourself, up to 2000 characters. <a href="http://daringfireball.net/projects/markdown/basics" target="_blank">Markdown syntax</a> supported.</div>
    </div>
    </div>
    <f:field property="bio"/>
    <f:field property="needTravel"/>
    <f:field property="needAccommodation"/>
    <f:field property="travelFrom"/>
</f:with>


<sec:ifAllGranted roles="ROLE_ADMIN">
<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'user', 'error')} required">
  <label for="user">
    <g:message code="profile.user.label" default="User" />
    <span class="required-indicator">*</span>
  </label>
  <g:select id="user" name="user.id" from="${cacoethes.auth.User.list()}" optionKey="id" required="" value="${profileInstance?.user?.id}" class="many-to-one"/>
</div>
</sec:ifAllGranted>
