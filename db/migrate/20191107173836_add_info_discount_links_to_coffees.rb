class AddInfoDiscountLinksToCoffees < ActiveRecord::Migration[6.0]
  def change
    add_column :coffees, :discount_link, :string
    add_column :coffees, :web_link, :string
  end
end
