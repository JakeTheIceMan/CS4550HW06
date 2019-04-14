For this assignment, I was tasked with making a task tracker website which enabled users to create accounts,
create tasks, and manage and assign themselves to said tasks. As such, two databases were created: users, tasks

the users database contained a name and an email. the email is used for login purposes and the name is displayed
as the current user and is displayed to indicate which user is assigned to a given task.

the tasks database contains a name and description which can be edited, a reference to the user which is
assigned to it, an integer duration which is restricted to 15 minute intervals and a completed field which
is a boolean.

The website contains a top menu with a Register/Profile, Manage Users, and Manage Tasks field as well as a
login/logout area. When logged in, the first button is a Profile button that takes you to your user profile.
When logged out, the first button is a Register button that takes you to a registration page.

The Manage Tasks page lists all tasks as well as their titles, time spent, and status.
When viewing individually, description and worker are also visible. The list screen offers functionality to
edit, delete, view, and create new tasks. The individual view screen offers only edit functionality from that window
When editing or creating a new user, all fields except assigned user are required for updates/creations, however]
the worker field is inforced by the page as it comes in a select menu with no "unassigned" option. This effectively
requires a worker, as intended, while allowing the task to remain stable within data as deleting a user assigned
to a task does not delete the task.  The worker assign field lists the names of all workers and sends the worker's
id when submitting, which is paired to the name internally.

The Manage Users page allows the creation and removal of user accounts. User Names and Emails are listed on the
list page and functionalty is avaiable from this page to create, delete, edit, and individually view all users.
Deleting a user assigned to a task does not delete the task, but simply unassigns it.
