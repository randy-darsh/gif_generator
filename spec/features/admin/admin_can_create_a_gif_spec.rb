require 'rails_helper'

describe "Admin visits gifs/new" do
  it "they can generate gifs" do

    admin = User.create(username: "admin", password: "admin", role: 1)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)
    visit root_path

    click_on 'Generate a GIF'

    expect(current_path).to eq(new_admin_gif_path)
    expect(page).to have_content("Generate Gifs")

    fill_in "gif[search_term]", with: "lawrence"
    click_on "Generate GIF"

    expect(current_path).to eq(gifs_path)
    expect(page).to have_content("lawrence")
  end
end