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

## Implementation details that you must stick to:

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


## Specs
<details>
  <summary>Click here to see names of each test</summary>

<li>The home page has an h1 element with the text "Your todo list"

<li>The home page has an h2 element with the text "Add a new todo"

<li>The home page has an h2 element with the text "Next Up"

<li>The home page has an h2 element with the text "In Progress"

<li>The home page has an h2 element with the text "Done"

<li>The home page has a form that adds a new item to the todo list

<li>The home page has a form that creates a todo item, and moves it to the "Next Up" section

<li>The Next Up section has a div element with the class "next_up"

<li>The Next Up section has the color of all text styled as darkorange

<li>The Next Up section has a form that updates a todo item, and moves it to the "In Progress" section

<li>The Next Up section displays todo items in a <li> element

<li>The Next Up section displays the created at time for each todo items

<li>The Next Up section has a link to delete a todo item with the text 'Delete'

<li>The In Progress section has a div element with the class "in_progress"

<li>The In Progress section has the color of all text styled as darkgreen

<li>The In Progress section has a form that updates a todo item, and moves it to the "Done" section

<li>The In Progress section displays todo items in a <li> element

<li>The In Progress section displays the updated at time for each todo items

<li>The In Progress section has a link to delete a todo item with the text 'Delete'

<li>The Done section has a div element with the class "done"

<li>The Done section has the color of all text styled as grey

<li>The Done section displays todo items in a <li> element

<li>The Done section displays the formatted updated at time for each todo items

<li>The Done section has a link to delete a todo item with the text 'Delete'

<li>Finished in 4.24 seconds (files took 0.83411 seconds to load)
<li>24 examples, 0 failures

</details>
