class AddAmountToCarts < ActiveRecord::Migration[5.1]
  def change
    add_column :carts, :amount, :integer
  end
end
