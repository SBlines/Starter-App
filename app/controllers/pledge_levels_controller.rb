class PledgeLevelsController < ApplicationController
	def new
		@pledge_level = PledgeLevel.new
	end

	def pledge_level_params
		params.require(:pledge_level).permit(:description, :amount)
	end

	def create
		@pledge_level = PledgeLevel.new(pledge_level)

		if @pledge_level.save
			redirect_to @pledge_level
		else
			render action: "new"
		end
	end

	def update
		@pledge_level = PledgeLevel.find(params[:id])

		if @pledge_level.update_attributes(pledge_level)
			redirect_to @pledge_level, :notice => "Pledge Level details were updated."
		else
			render :action => "edit"
		end
	end

	def edit
		@pledge_level = PledgeLevel.find(params[:id])
	end

	def show
		@pledge_level = PledgeLevel.find(params[:id])
	end
end