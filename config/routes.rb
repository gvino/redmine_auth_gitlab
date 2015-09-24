get 'oauth_gitlab', :to => 'gitlab_auth#oauth_gitlab'
get 'oauth2callback', :to => 'gitlab_auth#oauth_gitlab_callback', :as => 'oauth_gitlab_callback'
