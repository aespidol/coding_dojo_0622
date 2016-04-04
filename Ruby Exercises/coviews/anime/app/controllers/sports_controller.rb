class SportsController < ApplicationController
	def index
		@sports = Sport.all
	end
	def new
	end
	def create
		Sport.create(name: params[:name])
		redirect_to '/sports'
	end
	def show
		@sport = Sport.find(params[:id])
	end
	def edit
		@sport = Sport.find(params[:id])
	end
	def update
		sport = Sport.find(params[:id])
		sport.name = params[:name]
		sport.save
		redirect_to '/sports'
	end
	def destroy
		sport = Sport.find(params[:id])
		sport.destroy
		redirect_to '/sports'
	end
end