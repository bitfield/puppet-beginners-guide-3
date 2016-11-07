# Be an app server
class role::app_server {
  include memcache
  include rails
  include nginx
  include my_app
}

node 'app1' {
  include role::app_server
}
