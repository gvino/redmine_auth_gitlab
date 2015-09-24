require 'redmine'
require_dependency 'redmine_auth_gitlab/hooks'

Redmine::Plugin.register :redmine_auth_gitlab do
  name 'GitLab Authentication'
  author 'Dmitry Kovalenok, Pete Deffendol'
  description 'This is a plugin for authentication through GitLab'
  version '0.0.1'
  url 'https://git.mdsc.com/pete/redmine_auth_gitlab'
  author_url 'http://mdsc.com'

  settings :default => {
    :client_id => "",
    :client_secret => "",
    :oauth_autentification => false,
    :allowed_domains => ""
  }, :partial => 'settings/gitlab_settings'
end
