class DropTables < ActiveRecord::Migration[7.0]
  def change
    drop_table :todos
    drop_table :users
    drop_table :orders
    drop_table :cart_items
    drop_table :menu_categories
    drop_table :menu_items
    drop_table :order_items
  end
end
