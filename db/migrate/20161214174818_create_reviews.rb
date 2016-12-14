class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
    	t.references :user, index: true, foreign_key: true
    	t.references :product, inde: true, foreign_key: true

    	t.integer :rating
    	t.text :body

    	t.timestamps null: false
    end
  end
end
