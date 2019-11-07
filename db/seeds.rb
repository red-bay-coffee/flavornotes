# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

coffee_mapping = {
  'Brazilian Cake Lady' => {
    flavor_notes: ['Citrus Zest', 'Golden Raisin', 'Nougat'],
    image_url: 'RBC_CoffeeRetailBag_C_TasteNotes_CakeLady_Web.jpg',
    web_link: 'https://www.redbaycoffee.com/collections/coffee/products/brazilian-cake-lady',
    discount_link: 'https://www.redbaycoffee.com/discount/FLAVORNOTES?redirect=%2Fcollections%2Fcoffee'
  },
  'Carver’s Dream' => {
    flavor_notes: ['Almond Paste', 'Cherry Compote', 'Dark Chocolate'],
    image_url: 'RBC_CoffeeRetailBag_C_TasteNotes_CarversDream_Web.jpg',
    web_link: 'https://www.redbaycoffee.com/collections/coffee/products/carvers-dream',
    discount_link: 'https://www.redbaycoffee.com/discount/FLAVORNOTES?redirect=%2Fcollections%2Fcoffee'
  },
  'Coltrane' => {
    flavor_notes: ['Black Grape', 'Cane Sugar', 'Dark Chocolate'],
    image_url: 'RBC_CoffeeRetailBag_C_TasteNotes_Coltrane_Web.jpg',
    web_link: 'https://www.redbaycoffee.com/collections/coffee/products/coltrane',
    discount_link: 'https://www.redbaycoffee.com/discount/FLAVORNOTES?redirect=%2Fcollections%2Fcoffee'
  },
  'East 14th' => {
    flavor_notes: ['Blackberry', 'Dark Chocolate', 'Date'],
    image_url: 'RBC_CoffeeRetailBag_C_TasteNotes_E14_Web.jpg',
    web_link: 'https://www.redbaycoffee.com/collections/coffee/products/east-fourteenth',
    discount_link: 'https://www.redbaycoffee.com/discount/FLAVORNOTES?redirect=%2Fcollections%2Fcoffee'
  },
  'King’s Prize' => {
    flavor_notes: ['Honeysuckle', 'Melon', 'White Peach'],
    image_url: 'RBC_CoffeeRetailBag_C_TasteNotes_KingsPrize_Web.jpg',
    web_link: 'https://www.redbaycoffee.com/collections/coffee/products/kings-prize',
    discount_link: 'https://www.redbaycoffee.com/discount/FLAVORNOTES?redirect=%2Fcollections%2Fcoffee'
  },
  'Mexico Chiapas Bella Vista' => {
    flavor_notes: ['Asian Pear', 'Cinnamon', 'Milk Chocolate'],
    image_url: 'RBC_CoffeeRetailBag_C_TasteNotes_Chiapas_Web.jpg',
    web_link: 'https://www.redbaycoffee.com/collections/featured/products/limited-release-mexico-chiapas-bella-vista',
    discount_link: 'https://www.redbaycoffee.com/discount/FLAVORNOTES?redirect=%2Fcollections%2Fcoffee'
  },
  'Ocho Libre' => {
    flavor_notes: ['Caramel', 'Cinnamon', 'Tangerine'],
    image_url: 'RBC_CoffeeRetailBag_C_TasteNotes_OchoLibre_Web.jpg',
    web_link: 'https://www.redbaycoffee.com/collections/coffee/products/ocho-libre',
    discount_link: 'https://www.redbaycoffee.com/discount/FLAVORNOTES?redirect=%2Fcollections%2Fcoffee'
  },
  'Pretty Penny' => {
    flavor_notes: ['Caramelized Peach', 'Semi-sweet Chocolate', 'White Grape'],
    image_url: 'RBC_CoffeeRetailBag_C_TasteNotes_PrettyPenny_Web.jpg',
    web_link: 'https://www.redbaycoffee.com/collections/coffee/products/pretty-penny',
    discount_link: 'https://www.redbaycoffee.com/discount/FLAVORNOTES?redirect=%2Fcollections%2Fcoffee'
  },
  'Slow Burn' => {
    flavor_notes: ['Allspice', 'Mission Fig', 'Molasses'],
    image_url: 'RBC_CoffeeRetailBag_C_TasteNotes_SlowBurn_Web.jpg',
    web_link: 'https://www.redbaycoffee.com/collections/coffee/products/slow-burn',
    discount_link: 'https://www.redbaycoffee.com/discount/FLAVORNOTES?redirect=%2Fcollections%2Fcoffee'
  }
}

coffee_mapping.each do |coffee_name, coffee_data|
  flavor_notes = coffee_data[:flavor_notes].map do |note_name|
    FlavorNote.find_or_create_by(name: note_name)
  end
  coffee = Coffee.find_or_create_by(name: coffee_name)
  coffee.update(flavor_notes: flavor_notes, image_url: coffee_data[:image_url])
  coffee.update(web_link: coffee_data[:web_link], discount_link: coffee_data[:discount_link])
end
