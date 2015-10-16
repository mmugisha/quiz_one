class FeelsController < ApplicationController
	def new
		@feeling = Feel.new
	end

	def create
		#retrieve the contents of params hash

		#save item to database
		@feeling = Feel.create(feeling_params)
		if @feeling.valid?
			redirect_to feels_path
		else
			render :new, :status => :unprocessable_entity
		end
	end

	def index
		@feelings = Feel.all
	end



	private 
	def feeling_params
		params.require(:feel).permit(:name,:feeling)
	end

end
