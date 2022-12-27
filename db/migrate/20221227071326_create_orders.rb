class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.bigint :user_id
      t.datetime :ordered_at
      t.datetime :delivered_at
      t.decimal :total_amount
      t.string :deliver_address
      t.boolean :online_order

      t.timestamps
    end
  end
end
