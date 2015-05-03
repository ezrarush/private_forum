# Private Website

This is the source code for a members only project manager, event calendar and forum.

## Features

* Bootstrap Front-end
  * Mobile first responsive design
* Authentication
  * Database Authenticatable: encrypts and stores a password in the database to validate the authenticity of a user while signing in.
  * Confirmable: sends emails with confirmation instructions and verifies whether an account is already confirmed during sign in.
  * Recoverable: resets the user password and sends reset instructions.
  * Registerable: handles signing up users through a registration process, also allowing them to edit and destroy their account.
  * Rememberable: manages generating and clearing a token for remembering the user from a saved cookie.
  * Trackable: tracks sign in count, timestamps and IP address.
  * Timeoutable: expires sessions that have not been active in a specified period of time.
  * Validatable: provides validations of email and password.
  * Lockable: locks an account after a specified number of failed sign-in attempts. Can unlock via email or after a specified time period.
* Authorization
  * Fine-grained control of all data based on user roles
  * Restrict access to any part of the website based on user roles
* Project Manager
  * WIP
* Events
  * CRUD operations for event owner in front-end
  * Full-sized, visually customizable, drag & drop calendar
* Forums
  * Topics
    * Viewing all topics for a forum
    * Creating of new topics
    * Editing topics
    * Deleting own topics
    * Locking topics
    * Hiding topics
    * Pinning topics
  * Posts
    * Replying to topics
    * Deleting own posts
    * Blocking replies to locked topics
    * Editing posts
  * Text Formatting
    * Posts are HTML escaped and pre tagged by default.
    * Redcarpet formatter for Markdown
    * :point_right: :tada: [:emoji:](http://www.emoji-cheat-sheet.com/) :tada: :point_left:
  * Moderators 
  * [A flexible permissions system](https://github.com/radar/forem/wiki/Authorization-System)
  * [Translations](https://github.com/radar/forem/wiki/Translations)
  * [Flexible configuration](https://github.com/radar/forem/wiki/Configuration)
* Admin Control Panel
  * CRUD operations on all data
  * Search and filtering
  * Export data to CSV/JSON/XML
  * User action history
  
## Problems? Issues?

If the application doesn't work as expected, please [report an issue](https://github.com/ezrarush/private_forum/issues)
