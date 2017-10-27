require 'rails_helper'

describe 'Admin visits the new catagory page' do
  it 'they can edit a category' do
    admin = User.create(username: "admin", password: "password", role: 1)
    visit root_path
    click_on "Log In"

    fill_in "session[username]", with: admin.username
    fill_in "session[password]", with: admin.password
    click_on "Submit"

    visit new_admin_category_path

    fill_in "category[name]", with: "South Park"

    click_on "Create Category"

    expect(current_path).to eq(categories_path)
  end
end
