class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :title
      t.belongs_to :user , index: true
      
      t.timestamps
    end

    create_table :items_orders, id: false do |t|
      t.belongs_to :item, index: true
      t.belongs_to :order, index: true

    end

  end

end
