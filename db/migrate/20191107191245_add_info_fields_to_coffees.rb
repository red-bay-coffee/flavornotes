class AddInfoFieldsToCoffees < ActiveRecord::Migration[6.0]
  def change
    add_column :coffees, :origin, :string
    add_column :coffees, :description, :string
    add_column :coffees, :story, :string
  end
end
