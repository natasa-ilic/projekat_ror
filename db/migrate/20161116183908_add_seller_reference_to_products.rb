class AddSellerReferenceToProducts < ActiveRecord::Migration
  def change
	#prvo ide tabela u koju stavljamo referencu a to je products, drugi podatak je ime tabele u jednini seller, i indeksiramo
		add_reference :products, :seller, index: true
  end
end
