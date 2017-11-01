class Gif < ApplicationRecord
  belongs_to :category
  has_many :favorites
  has_many :users, through: :favorites

  def favorite(gif)
    gifs << gif
  end

  def unfavorite(gif)
    gifs.delete(gif)
  end
end
