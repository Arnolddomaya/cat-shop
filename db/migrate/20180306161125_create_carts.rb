class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.string :title
      t.belongs_to :user , index: true
      t.timestamps
    end

    create_table :carts_items, id: false do |t|
      t.belongs_to :cart, index: true
      t.belongs_to :item, index: true

    end


  end
end
