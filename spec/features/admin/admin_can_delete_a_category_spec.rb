require 'rails_helper'

describe 'Admin visits the category index page' do
  it 'they can delete a category' do
    category = Category.create(name: "Thing")
    admin = User.create(username: "admin", password: "admin", role: 1)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

    visit categories_path

    click_on "Delete Category"

    expect(current_path).to eq(categories_path)
    expect(page).to_not have_content("Thing")
  end
end