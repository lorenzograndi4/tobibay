class AddCartToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :cart_id, :bigint 
  end
end
