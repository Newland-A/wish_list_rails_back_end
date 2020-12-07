class CreateWishItems < ActiveRecord::Migration[6.0]
  def change
    create_table :wish_items do |t|
      t.string :name
      t.string :color
      t.string :height
      t.string :weight
      t.string :link
      t.text :description
      t.integer :price
      t.belongs_to :wish_list, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
