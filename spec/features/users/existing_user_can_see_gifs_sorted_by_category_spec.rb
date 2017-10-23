require 'rails_helper'

describe "User logs in and visits the gifs index page" do
  before :each do
    @user = User.create(username: "BigDawg76", password: "password")
    visit root_path
    click_on "Log In"
    fill_in "session[username]", with: @user.username
    fill_in "session[password]", with: @user.password
    category = Category.create(name: "Randy Savage")
    category.gifs.create(image_path: "https://media.giphy.com/media/DtLEOehAWfwiY/giphy.gif")
  end

  it "they will see all gifs sorted by category" do
    visit gifs_path

    expect(page).to have_content("Randy Savage")
  end
end