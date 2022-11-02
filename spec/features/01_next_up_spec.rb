require "rails_helper"

describe "The Next Up section" do
  it "has a div element with the class \"next_up\"", points: 1 do
    visit("/user_sign_in")
    user_jacob = User.new
    user_jacob.email = "jacob_#{rand(100)}@example.com"
    user_jacob.password = "password"
    user_jacob.save

    visit "/user_sign_in"
    
    within(:css, "form") do
      fill_in "Email", with: user_jacob.email
      fill_in "Password", with: user_jacob.password
      find("button", :text => /Sign in/i ).click
    end

    visit("/")

    expect(page).to have_css("div.next_up"),
      "Expected to find a <div> element with the a class attribute containing 'next_up', but didn't find one."
  end
end

describe "The Next Up section" do
  it "has the color of all text styled as darkorange",js: true, points: 1 do
    visit("/user_sign_in")
    user_jacob = User.new
    user_jacob.email = "jacob_#{rand(100)}@example.com"
    user_jacob.password = "password"
    user_jacob.save

    visit "/user_sign_in"
    
    within(:css, "form") do
      fill_in "Email", with: user_jacob.email
      fill_in "Password", with: user_jacob.password
      find("button", :text => /Sign in/i ).click
    end

    visit("/")
    next_up_div = find("div.next_up")

    # next_up_div.assert_matches_style( 'color' => 'darkorange')
    expect(next_up_div).to have_color("orange")

  end
end

describe "The Next Up section" do
  it "has a form that updates a todo item, and moves it to the \"In Progress\" section", points: 1 do
    visit("/user_sign_in")
    user_jacob = User.new
    user_jacob.email = "jacob_#{rand(100)}@example.com"
    user_jacob.password = "password"
    user_jacob.save

    visit "/user_sign_in"

    within(:css, "form") do
      fill_in "Email", with: user_jacob.email
      fill_in "Password", with: user_jacob.password
      find("button", :text => /Sign in/i ).click
    end

    visit("/")

    within(:css, "form") do
      fill_in "Describe the task:", with: "Work on Todo List app"
      find("button", :text => /Add to Next Up/i ).click
    end

    within(:css, "div.next_up") do
      within(:css, "form") do
        find("button", :text => /Move to In Progress/i ).click
      end
    end

    in_progress_section_div = find("div.in_progress")
    expect(in_progress_section_div).to have_text(/Work on Todo List app/i)
  end
end

describe "The Next Up section" do
  it "displays todo items in a <li> element", points: 1 do
    visit("/user_sign_in")
    user_jacob = User.new
    user_jacob.email = "jacob_#{rand(100)}@example.com"
    user_jacob.password = "password"
    user_jacob.save

    visit "/user_sign_in"

    within(:css, "form") do
      fill_in "Email", with: user_jacob.email
      fill_in "Password", with: user_jacob.password
      find("button", :text => /Sign in/i ).click
    end

    visit("/")

    within(:css, "form") do
      fill_in "Describe the task:", with: "Work on Todo List app"
      find("button", :text => /Add to Next Up/i ).click
    end

    expect(page).to have_tag("div.next_up") do     
      with_tag("ul") do
        with_tag("li", text: /Work on Todo List app/i)
      end
    end
  end
end

describe "The Next Up section" do
  it "displays the created at time for each todo items", points: 1 do
    visit("/user_sign_in")
    user_jacob = User.new
    user_jacob.email = "jacob_#{rand(100)}@example.com"
    user_jacob.password = "password"
    user_jacob.save

    visit "/user_sign_in"

    created_at = Time.now

    within(:css, "form") do
      fill_in "Email", with: user_jacob.email
      fill_in "Password", with: user_jacob.password
      find("button", :text => /Sign in/i ).click
    end

    visit("/")

    within(:css, "form") do
      fill_in "Describe the task:", with: "Work on Todo List app"
      find("button", :text => /Add to Next Up/i ).click
    end

    formatted_created_at_time = time_ago_in_words(created_at)
    expect(page).to have_tag("div.next_up") do     
      with_tag("ul") do
        with_tag("li", text: /#{formatted_created_at_time} ago/i)
      end
    end
  end
end

describe "The Next Up section" do
  it "has a link to delete a todo item with the text 'Delete'", points: 1 do
    visit("/user_sign_in")
    user_jacob = User.new
    user_jacob.email = "jacob_#{rand(100)}@example.com"
    user_jacob.password = "password"
    user_jacob.save

    visit "/user_sign_in"

    within(:css, "form") do
      fill_in "Email", with: user_jacob.email
      fill_in "Password", with: user_jacob.password
      find("button", :text => /Sign in/i ).click
    end

    visit("/")

    within(:css, "form") do
      fill_in "Describe the task:", with: "Work on Todo List app"
      find("button", :text => /Add to Next Up/i ).click
    end

    within(:css, "div.next_up li") do      
      find("a", :text => /Delete/i ).click
    end
  
    expect(page).to_not have_content(/Work on Todo List app/i)
  end
end
