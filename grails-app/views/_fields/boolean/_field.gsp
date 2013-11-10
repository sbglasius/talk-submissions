<div class="form-group ${invalid ? 'has-error' : ''}">

    <div class="col-sm-offset-${cols ?: '2'} col-sm-10">
        <label for="${field}">
            ${widget} ${label}
        </label>
        <g:if test="${errors}">
            <g:each in="${errors}" var="error">
                <span class="help-block"><g:message error="${error}"/></span>
            </g:each>
        </g:if>
    </div>
</div>

