class FinishesController < ApplicationController

	def index
	
	end
	
	def new 
		@finish = Finish.new
	end
	
	def create
		@finish = Finish.new(params[:finish])
		if @finish.save
      flash[:notice] = "Finish has been created."
      redirect_to @finish
    else
      flash[:alert] = "Finish has not been created."
      render :action => "new"
    end
	end
	
	def show
		@finish = Finish.find(params[:id])
	end
end
