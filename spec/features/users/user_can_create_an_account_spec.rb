require 'rails_helper'

describe 'User visits the root page' do
  it 'they can create an account' do
    visit root_path

    click_on "Create Account"

    expect(current_path).to eq(new_user_path)

    fill_in "user[username]", with: "Person"
    fill_in "user[password]", with: "password"

    click_on "Create User"

    expect(current_path).to eq(user_path(User.last.id))
    expect(page).to have_content("Welcome, Person")
  end
end