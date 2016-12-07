class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    	t.references :user, index: true, foreign_key: true
    	t.references :product, index: true, foreign_key: true
    	t.integer :quantity
    	t.decimal :total

    	t.timestamps null: false
    end
  end
end
