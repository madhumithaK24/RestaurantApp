class CreateOrderItems < ActiveRecord::Migration[7.0]
  def change
    create_table :order_items do |t|
      t.bigint :order_id
      t.bigint :menu_item_id
      t.string :menu_item_name
      t.decimal :menu_item_price
      t.integer :quantity

      t.timestamps
    end
  end
end
