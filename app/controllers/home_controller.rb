class HomeController < ApplicationController

	def index
		@developers = [
			'Neldin',
			'Tarik',
			'Selma',
			'Natasa',
			'Dejan',
			'Vesna',
			'Amir',
			'Amer'
		]
	end
	
	def about
	end
	
	def help
		#heš params je globalan, dostupan svugdje kroz aplikaciju
		puts params.inspect
		@page = params[:action].capitalize
		@filter = params[:filter]
		@sort = params[:sort]
	end

end
