require 'redmine'
require_dependency 'hooks/view_account_login_bottom_hook'

Redmine::Plugin.register :redmine_omniauth_google do
  name 'Redmine Omniauth Google plugin'
  author 'Dmitry Kovalenok'
  description 'This is a plugin for Redmine registration through google'
  version '0.0.1'
  url 'http://gitlab.tsdv.net/redmine_omniauth_google'
  author_url 'https://tsdv.net/redmine/users/105'
end
