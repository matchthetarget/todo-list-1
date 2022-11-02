# Todo List 1

## Target

You should build a simple todo list manager. [Here is a target to match.](https://todo-list-1.matchthetarget.com)

To explore, sign in with email: `alice@example.com`, `bob@example.com`, or `carol@example.com`; and password: `password`.

Behaviors to note:

- You can't do anything in the app until you sign up or sign in.
- The home page is a list of your todos.
- There are three sections on the home page: "Next Up", "In Progress", and "Done".
- You can add a new todo using the form at the top of the page. Once added, it appears in the "Next Up" section.
- For todos in the "Next Up" section, there is a button that, when clicked, moves the todo to the "In Progress" section.
- For todos in the "In Progress" section, there is a button that, when clicked, moves the todo to the "Done" section.
- For all todos, there is a link to delete the todo.

## Tasks

### Add your resources

The data model for this application is as follows:

```
                                          ┌───────────────────────┐
┌──────────────────────────┐              │                       │
│                          │              │ Todo                  │
│ User                     │              │ ----                  │
│ ----                     │              │ id (integer)          │
│ id (integer)             │             ╱│ content (string)      │
│ email (string)           │┼┼──────────○─│ status (string)       │
│ password_digest (string) │             ╲│ user_id (integer)     │
│ created_at (datetime)    │              │ created_at (datetime) │
│ updated_at (datetime)    │              │ updated_at (datetime) │
│                          │              │                       │
└──────────────────────────┘              └───────────────────────┘
```


Some implementation details:

- The "Next Up" section should be contained within a `<div>` that has the class `"next_up"`.
    - The `color` of the text within the "Next Up" section should be `darkorange`.
- The "In Progress" section should be contained within a `<div>` that has the class `"in_progress"`.
    - The `color` of the text within the "In Progess" section should be `darkgreen`.
- The "Done" section should be contained within a `<div>` that has the class `"done"`.
    - The `color` of the text within the "Done" section should be `grey`.



- Each row in the users table is an account


- Generate resources with following commands
- sample data
- add new todo — defaults to "in_progress"
- hide user_id
- homepage should show only signed in user's todos
- should have div.next_up, div.next_up, div.done
- div.next_up should contain h2 with "Next Up", etc
- colors: darkorange, darkgreen, grey respectively
- https://www.rubydoc.info/github/jnicklas/capybara/Capybara%2FNode%2FMatchers:assert_matches_style
- 
