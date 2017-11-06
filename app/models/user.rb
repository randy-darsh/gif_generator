class User < ApplicationRecord
  has_secure_password
  has_many :favorites
  has_many :gifs, through: :favorites

  enum role: ["default", "admin"]

  def favorite(gif)
    gifs << gif
  end

  def unfavorite(gif)
    gifs.delete(gif)
  end
end