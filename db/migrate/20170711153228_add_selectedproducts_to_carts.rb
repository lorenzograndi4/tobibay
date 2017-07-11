class AddSelectedproductsToCarts < ActiveRecord::Migration[5.1]
  def change
    add_column :carts, :selected_products, :string, array: true, default: []
  end
end
