# Manage Java-based app
class profile::myapp {
  include profile::java6_openjdk
  include profile::tomcat
  include profile::apache
  include profile::deploy
}
