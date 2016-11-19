class AddAboutToProducts < ActiveRecord::Migration
  def change
		add_column :products, :about, :string
		
		Product.all.each do |p|
			p.update(about: 'Some random text ...')
		end
  end
end
