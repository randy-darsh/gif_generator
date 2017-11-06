User.destroy_all
Category.destroy_all
Gif.destroy_all

User.create(username: "user", password: "user")
User.create(username: "person", password: "person", role: 1)
category = Category.create(name: "Randy Savage")
category.gifs.create(image_path: "https://media.giphy.com/media/DtLEOehAWfwiY/giphy.gif")
category.gifs.create(image_path: "https://media.giphy.com/media/lAy11oosV1cw8/giphy.gif")
category.gifs.create(image_path: "https://media.giphy.com/media/fQ4jzmrabZw9a/giphy.gif")
category.gifs.create(image_path: "https://media.giphy.com/media/12k3XRGaPqjdja/giphy.gif")
category.gifs.create(image_path: "https://media.giphy.com/media/a0rBwdOIkwxEc/giphy.gif")
category.gifs.create(image_path: "https://media.giphy.com/media/BaSHs78BU2ZYQ/giphy.gif")

category_2 = Category.create(name: "Matt Foley")
category_2.gifs.create(image_path: "https://media.giphy.com/media/i4Mgat1S2f3Co/giphy.gif")
category_2.gifs.create(image_path: "https://media.giphy.com/media/qXKF6XHuCxFXW/giphy.gif")
category_2.gifs.create(image_path: "https://media.giphy.com/media/EJOcCOdI69f3O/giphy.gif")
category_2.gifs.create(image_path: "https://media.giphy.com/media/JkmxMt7lqJJa8/giphy.gif")
category_2.gifs.create(image_path: "https://media.giphy.com/media/l378h29fpGFXGaeiY/giphy.gif")
category_2.gifs.create(image_path: "https://media.giphy.com/media/3ov9jKkvngA56asAtG/giphy.gif")

category_3 = Category.create(name: "Ric Flair")
category_3.gifs.create(image_path: "https://media.giphy.com/media/V80llXf734WzK/giphy.gif")
category_3.gifs.create(image_path: "https://media.giphy.com/media/125WvQGXcUfEBy/giphy.gif")
category_3.gifs.create(image_path: "https://media.giphy.com/media/Ro6bzW9q9Bttu/giphy.gif")
category_3.gifs.create(image_path: "https://media.giphy.com/media/yUI3a7RwLhOFy/giphy.gif")
category_3.gifs.create(image_path: "https://media.giphy.com/media/JikFl66U6MX2U/giphy.gif")
category_3.gifs.create(image_path: "https://media.giphy.com/media/78HKkFJxrA8jm/giphy.gif")
