require 'rails_helper'

describe 'Authenticated user visits the gifs index page' do
  it 'they can favorite a gif' do
    user = User.create(username: "person", password: "password", role: 0)
    category = Category.create(name: "Randy Savage")
    category.gifs.create(image_path: "https://media.giphy.com/media/DtLEOehAWfwiY/giphy.gif")
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit gifs_path

    click_on "Favorite"

    expect(page).to have_content("IT'S YOUR FAVORITE!")
    expect(page).to have_content("Unfavorite")
  end
end
