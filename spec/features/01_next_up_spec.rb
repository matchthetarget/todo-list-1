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
    # within(:css, "div.next_up") do

    # end
    next_up_div = find("div.next_up")
    # p next_up_div[:style]
    next_up_div.assert_matches_style( 'color' => 'darkorange')
    # expect(next_up_div).to have_color("darkorange")
    # expect(page).to have_css("div.next_up"),
    #   "Expected to find a <div> element with the a class attribute containing 'next_up', but didn't find one."

  end
end
