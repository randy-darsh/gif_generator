class CreateGifs < ActiveRecord::Migration[5.1]
  def change
    create_table :gifs do |t|
      t.text :image_path
      t.text :search_term
      t.references :category

      t.timestamps
    end
  end
end
