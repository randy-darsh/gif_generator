require 'rails_helper'

describe 'Registered user visits the root page' do
  it "they can log in" do
    user = User.create(username: "SquattyPotty25", password: "password")

    visit root_path

    click_link "Log In"

    expect(current_path).to eq(login_path)

    fill_in 'session[username]', with: user.username
    fill_in 'session[password]', with: user.password

    click_on "Log In"

    expect(current_path).to eq(user_path(user))
    expect(page).to have_content("Welcome, SquattyPotty25")
  end
end
