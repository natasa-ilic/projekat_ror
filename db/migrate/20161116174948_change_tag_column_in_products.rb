class ChangeTagColumnInProducts < ActiveRecord::Migration
#rake db:migration  izvrsava metodu up
  def up
		change_column :products, :tag, :string
  end
	
#ovo nam treba da izvrsi rake db:rollback (vracanje na prethodnu migraciju)
	def down
		change_column :products, :tag, :integer
	end
end
