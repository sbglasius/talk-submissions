<div class="navbar navbar-default navbar-static-top" role="navigation">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#"><g:message code="navigation.title"/></a>
    </div>

    <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
            <li class="active"><g:link uri="/"><g:message code="menu.home.label"/></g:link></li>

            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><g:message code="menu.profile.label"/><b
                        class="caret"></b></a>
                <ul class="dropdown-menu">
                    <sec:ifAnyGranted roles="ROLE_ADMIN">
                        <li><g:link controller="profile" action="list"><g:message code="menu.list.label"/></g:link></li>
                    </sec:ifAnyGranted>
                <li>
                    <g:if test="${currentUser?.profile}">
                            <g:link controller="profile" action="show" id="${currentUser?.profile?.id}">
                                <g:message code="menu.show.label"/></g:link>
                    </g:if>
                    <g:else>
                            <g:link controller="profile" action="create">
                                <g:message code="menu.create.label"/></g:link>
                    </g:else>
                </li>
                </ul>
            </li>

            <li><a href="#contact">Contact</a></li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li class="dropdown-header">Nav header</li>
                    <li><a href="#">Separated link</a></li>
                    <li><a href="#">One more separated link</a></li>
                </ul>
            </li>
        </ul>
        <sec:ifLoggedIn>
            <ul class="nav navbar-nav navbar-right">
                <g:include controller="profile" action="loggedIn"/>
            </ul>
        </sec:ifLoggedIn>
    </div><!--/.nav-collapse -->

</div>
