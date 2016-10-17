Post-It is a Rails application.

| User Stories
| -------------
| A user should be able to sign in and out of Post-It.
| All users should be able to view Posts, ordered by Topics.
| If Signed In, a user should be able to Comment on, Favorite and Vote on Posts.
| If Signed In, a user should be able to create a Post.
| Users should only be able to delete and edit their own Posts.
| An Admin user should be able to delete and edit content of another user.

| General Notes
| -------------
| Used Session object to persist user information.
| Used Ajax to delete and create comments, without reloading the page.
| Built RESTful APIs for retrieving, creating and updating data.
| [SendGrid](https://sendgrid.com/) is used for sending email notifications.
| [Gravatar](https://en.gravatar.com/) allows users to personalize their profile.
| [RSpec](http://rspec.info/) is the testing tool used.
