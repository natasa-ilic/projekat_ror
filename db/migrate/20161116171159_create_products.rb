class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
			t.string :name    #kojeg tipa je podatak u bazi
			t.integer :price
		
			t.timestamps null: false    
    end
  end
end
