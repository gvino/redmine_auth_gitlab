module RedmineAuthGitlab
  class Hooks < Redmine::Hook::ViewListener
    render_on :view_account_login_bottom, :partial => "hooks/view_account_login_bottom"
  end
end
