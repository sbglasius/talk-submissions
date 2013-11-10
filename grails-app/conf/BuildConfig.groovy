grails.servlet.version = "2.5" // Change depending on target container compliance (2.5 or 3.0)
grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"

grails.project.dependency.resolution = {
    inherits "global"
    log      "warn"
    checksums true

    repositories {
        inherits = true
        grailsPlugins()
        grailsHome()
        grailsCentral()
        mavenCentral()
        mavenRepo "http://maven.springframework.org/milestone/"
        mavenRepo "http://dl.bintray.com/pledbrook/plugins/"
        mavenLocal()
    }
    dependencies {
        runtime "org.postgresql:postgresql:9.2-1003-jdbc4",
                "com.google.inject:guice:3.0",
                "com.github.groovy-wslite:groovy-wslite:0.8.0"
    }

    plugins {
        compile ":heroku:1.0.1", ":cloud-support:1.0.11", {
            exclude "database-session"
        }

        compile ":hibernate:$grailsVersion",
                ":fields:1.3",
                ":spring-security-core:1.2.7.3",
                ":spring-security-oauth:2.0.2",
                ":spring-security-openid:1.0.4", {
            excludes "guice", "spock", "spock-grails-support"
        }

        runtime ":resources:1.2.1",
                ":jquery:1.10.2",
                ":twitter-bootstrap:3.0.2",
//                ":cloud-foundry:1.2.3",
                ":database-migration:1.3.8",
                ":markdown:1.1.1",
                ":modernizr:2.6.2",
                ":webxml:1.4.1"

        runtime ":sendgrid:1.1", {
            excludes "groovy-wslite"
        }

        build ":tomcat:$grailsVersion"
    }
}
