require 'redmine'
if Rails.configuration.respond_to?(:autoloader) && Rails.configuration.autoloader == :zeitwerk
  Rails.autoloaders.each { |loader| loader.ignore(File.dirname(__FILE__) + '/lib') }
end
require File.dirname(__FILE__) + '/lib/redmine_auth_gitlab/hooks'

Redmine::Plugin.register :redmine_auth_gitlab do
  name 'GitLab Authentication'
  author 'Dmitry Kovalenok, Pete Deffendol'
  description 'This is a plugin for authentication through GitLab'
  version '0.0.1'
  url 'https://github.com/pdeffendol/redmine_auth_gitlab'
  author_url 'https://github.com/pdeffendol'

  settings :default => {
    :client_id => "",
    :client_secret => "",
    :oauth_autentification => false,
    :allowed_domains => ""
  }, :partial => 'settings/gitlab_settings'
end
