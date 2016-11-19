class AddTagToProducts < ActiveRecord::Migration
  def change
    add_column :products, :tag, :integer
  end
end
