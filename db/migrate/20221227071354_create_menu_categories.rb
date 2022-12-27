class CreateMenuCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :menu_categories do |t|
      t.string :name
      t.boolean :status

      t.timestamps
    end
  end
end
