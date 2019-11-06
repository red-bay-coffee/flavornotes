# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

coffee_mapping = {
  'Brazilian Cake Lady' => ['Citrus Zest', 'Golden Raisin', 'Nougat'],
  'Carver’s Dream' => ['Almond Paste', 'Cherry Compote', 'Dark Chocolate'],
  'Coltrane' => ['Black Grape', 'Cane Sugar', 'Dark Chocolate'],
  'East 14th' => ['Blackberry', 'Dark Chocolate', 'Date'],
  'King’s Prize' => ['Honeysuckle', 'Melon', 'White Peach'],
  'Mexico Chiapas Bella Vista' => ['Asian Pear', 'Cinnamon', 'Milk Chocolate'],
  'Ocho Libre' => ['Caramel', 'Cinnamon', 'Tangerine'],
  'Pretty Penny' => ['Caramelized Peach', 'Semi-sweet Chocolate', 'White Grape'],
  'Slow Burn' => ['Allspice', 'Mission Fig', 'Molasses']
}

coffee_mapping.each do |coffee_name, flavor_note_names|
  flavor_notes = flavor_note_names.map do |note_name|
    FlavorNote.find_or_create_by(name: note_name)
  end
  coffee = Coffee.find_or_create_by(name: coffee_name)
  coffee.update(flavor_notes: flavor_notes)
end
