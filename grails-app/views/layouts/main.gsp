<!doctype html>
<html lang="en" class="no-js">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title><g:layoutTitle default="Grails"/></title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <asset:stylesheet src="application.css"/>
        <asset:javascript src="application.js"/>

        <g:layoutHead/>
    </head>
    <body>
        <div id="logo" role="banner">
          <a href="https://skillsmatter.com/"><asset:image src="skills-matter-logo.gif" alt="Skills Matter logo"/></a>
          <a href="https://skillsmatter.com/conferences/6863-groovy-grails-exchange-2015">Groovy & Grails Exchange 2015</a>
        </div>
        <div id="currentUser"><g:render template="/profile/loggedIn"/></div>
        <g:layoutBody/>
        <div class="footer" role="contentinfo"></div>
        <div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
        <asset:deferredScripts/>
    </body>
</html>
