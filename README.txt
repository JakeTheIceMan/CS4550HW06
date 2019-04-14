I was prevented by other work from starting early on this assignment, and was prepared to submit several days late
as a result. However, issues that were not able to be solved on piazza prevented work from the official due date
until the 13th of wednessday when I was able to make it to office hours. Spring break and class conflicts prevented
earlier resolutions of several issues preventing me from setting up the database to begin work. I take
for the lateness of this assignment and am not submitting this assignment expecting a grade above 0. However,
due to the fact that hw7 is a continuation of this assignment, I would like to request a reduction in late penalty
on homework 7. Since I was prevented by spring break to be able to meet during office hours to resolve the issue,
I was effectively given 2 days to complete 2 weeks of assignments (noting other class work as well). This was
mentioned to the TA I met with on Wednessday The purpose of this submission is to provide record of completion
as well as a timestamp marking my effective starting time for homework 7. After completion of homework 7, I will
be sending an email discussing this issue to the professor. (I am waiting until finishing homework 7 to minimize
late penalties in the unfortunate event no penalty reduction is given). Thank you for your time. This assignment
will likely be re-submitted after minor changes for my redo-hw (as parts required for hw6 which were removed in
hw7 were ommited to save time)

For this assignment, I was tasked with making a task tracker website which enabled users to create accounts,
create tasks, and manage and assign themselves to said tasks. As such, two databases were created: users, tasks

the users database contained a name and an email. the email is used for login purposes and the name is displayed
as the current user and is displayed to indicate which user is assigned to a given task.

the tasks database contains a name and description which can be edited, a reference to the user which is
assigned to it, an integer duration which is restricted to 15 minute intervals (not yet implemented) and
a completed field which is a boolean.

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
Deleting a user assigned to a task does not delete the task, but simply unassigns it. This version has no
restrictions on duplicates. This is intended for all fields on both tasks and users except for the user.email
field, which was ommited in this version.
