<li><g:if test="${!currentUser?.profile}"><a href="#"><sec:username/></a></g:if><g:else><g:link controller="profile" action="show" id="${currentUser.profile.id}">${currentUser.profile.name}</g:link></g:else></li><li><g:link controller="logout">log out</g:link></li>

