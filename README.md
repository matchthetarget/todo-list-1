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

More specifics to notice about the target:

- As usual, pay attention to the copy in buttons, links, labels, headings, etc — spelling, capitalization, punction.
- The sign in page is located at `/user_sign_in`.
- The sign up page is located at `/user_sign_up`.

Implementation details that you must stick to:

- The "Next Up" section should be contained within a `<div>` that has the class `"next_up"`.
    - The `color` of the text within the "Next Up" section should be `darkorange`.
- The "In Progress" section should be contained within a `<div>` that has the class `"in_progress"`.
    - The `color` of the text within the "In Progess" section should be `darkgreen`.
- The "Done" section should be contained within a `<div>` that has the class `"done"`.
    - The `color` of the text within the "Done" section should be `grey`.

All other implementation details are up to you.

## Hints

You should try to build the app with the above information, the target, and the automated tests as a guide.

But, if you are well and truly stuck, you can see some hints. (Note that you won't have these hints on the exam.)

<details>
<summary>Click here for hints</summary>

## Data model

One possible data model for this application is as follows:

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
</details>
