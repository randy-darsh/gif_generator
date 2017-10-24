require 'rails_helper'

describe 'Admin visits the new catagory page' do
  it 'they can edit a category' do
    admin = User.create(username: "admin", password: "password", role: 1)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

    visit 
  end
end