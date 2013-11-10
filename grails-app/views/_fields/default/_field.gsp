<div class="form-group ${invalid ? 'has-error' : ''}">
    <label for="${field}" class="col-sm-${cols ?: '2'} control-label">${label}</label>

    <div class="col-sm-10">
        ${widget}
        <g:if test="${errors}">
            <g:each in="${errors}" var="error">
                <span class="help-block">${error}</span>
            </g:each>
        </g:if>
    </div>
</div>
