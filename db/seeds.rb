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
    image_url: 'RBC_CoffeeRetailBag_C_TasteNotes_CakeLady_Web.jpg'
  },
  'Carver’s Dream' => {
    flavor_notes: ['Almond Paste', 'Cherry Compote', 'Dark Chocolate'],
    image_url: 'RBC_CoffeeRetailBag_C_TasteNotes_CarversDream_Web.jpg'
  },
  'Coltrane' => {
    flavor_notes: ['Black Grape', 'Cane Sugar', 'Dark Chocolate'],
    image_url: 'RBC_CoffeeRetailBag_C_TasteNotes_Coltrane_Web.jpg'
  },
  'East 14th' => {
    flavor_notes: ['Blackberry', 'Dark Chocolate', 'Date'],
    image_url: 'RBC_CoffeeRetailBag_C_TasteNotes_E14_Web.jpg'
  },
  'King’s Prize' => {
    flavor_notes: ['Honeysuckle', 'Melon', 'White Peach'],
    image_url: 'RBC_CoffeeRetailBag_C_TasteNotes_KingsPrize_Web.jpg'
  },
  'Mexico Chiapas Bella Vista' => {
    flavor_notes: ['Asian Pear', 'Cinnamon', 'Milk Chocolate'],
    image_url: 'RBC_CoffeeRetailBag_C_TasteNotes_Chiapas_Web.jpg'
  },
  'Ocho Libre' => {
    flavor_notes: ['Caramel', 'Cinnamon', 'Tangerine'],
    image_url: 'RBC_CoffeeRetailBag_C_TasteNotes_OchoLibre_Web.jpg'
  },
  'Pretty Penny' => {
    flavor_notes: ['Caramelized Peach', 'Semi-sweet Chocolate', 'White Grape'],
    image_url: 'RBC_CoffeeRetailBag_C_TasteNotes_PrettyPenny_Web.jpg'
  },
  'Slow Burn' => {
    flavor_notes: ['Allspice', 'Mission Fig', 'Molasses'],
    image_url: 'RBC_CoffeeRetailBag_C_TasteNotes_SlowBurn_Web.jpg'
  }
}

coffee_mapping.each do |coffee_name, coffee_data|
  flavor_notes = coffee_data[:flavor_notes].map do |note_name|
    FlavorNote.find_or_create_by(name: note_name)
  end
  coffee = Coffee.find_or_create_by(name: coffee_name)
  coffee.update(flavor_notes: flavor_notes, image_url: coffee_data[:image_url])
end
