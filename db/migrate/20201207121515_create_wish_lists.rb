class CreateWishLists < ActiveRecord::Migration[6.0]
  def change
    create_table :wish_lists do |t|
      t.string :title
      t.integer :item_count
      t.date :delivery_date

      t.timestamps
    end
  end
end
