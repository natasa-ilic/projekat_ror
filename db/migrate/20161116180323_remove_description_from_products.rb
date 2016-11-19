class RemoveDescriptionFromProducts < ActiveRecord::Migration
#brisemo migraciju koju smo na pocetku pravili, pa cemo ponovo to pravtiti, necemo ici na rollback
  def change
		remove_column :products, :description, :text
  end
	
#rails console kucamo da vidimo kako nam izgleda baza
end
