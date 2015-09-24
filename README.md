## Redmine GitLab Authentication

This plugin is used to authenticate Redmine users through GitLab.

### Installation:

Download the plugin and install required gems:

```console
cd /path/to/redmine/plugins
git clone https://github.com/pdeffendol/redmine_auth_gitlab.git
cd /path/to/redmine
bundle install
```

Restart the app
```console
touch /path/to/redmine/tmp/restart.txt
```

### Registration in GitLab

Register your Redmine instance as an OAuth application in GitLab:

* Go to "Applications" in the GitLab Admin area
* Choose "New Application"
* Enter a name for this application (e.g., "Redmine")
* Enter your Redmine instance's callback URL (https://redmine.example.com/oauth2callback)
* Save the changes and obtain the Application ID and Secret from the subsequent
  screen

### Configuration in Redmine

* Login as a user with administrative privileges.
* In top menu select "Administration".
* Select "Plugins"
* In the plugin list, select "Configure" in the row for "GitLab Authentication"
* Enter the root URL of your GitLab instance
* Enter the Application ID and Secret previously obtained from GitLab
* Check the box to enable this authentication method
* Apply the changes

Users will now see an option to log in with GitLab on the Redmine login screen.

### Other options

By default, all user email domains are allowed to authenticate through GitLab.
If you want to limit the user email domains allowed to use the plugin, list one
per line in the "Allowed domains" text box.

For example:

```text
onedomain.com
otherdomain.com
```

With the above configuration, only users with email addresses on the domains
"onedomain.com" and "otherdomain.com" will be allowed to acccess your Redmine
instance using Google OAuth.

### Authentication Workflow

1. An unauthenticated user requests the URL to your Redmine instance.
2. User clicks the "Login via GitLab" buton.
3. The plugin redirects them to the GitLab sign in page if they are not already
   signed in to their GitLab account.
4. GitLab redirects the user back to Redmine, where the plugin's controller
   takes over.

One of the following cases will occur:

1. If self-registration is enabled (Under Administration > Settings > Authentication),
   the user is redirected to 'my/page'
2. Otherwse, the an account is created for the user (referencing their GitLab
   OAuth2 ID). A Redmine administrator must activate the account for it to work.

