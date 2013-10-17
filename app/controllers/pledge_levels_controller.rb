class PledgeLevelsController < ApplicationController
	def new
		@campaign = Campaign.find(params[:campaign_id])
		@pledge_level = PledgeLevel.new
	end

	def pledge_level_params
		params.require(:pledge_level).permit(:description, :amount)
	end

	def create
		@campaign = Campaign.find(params[:campaign_id])
		@pledge_level = PledgeLevel.new(pledge_level_params)

		if @pledge_level.save
			redirect_to [@campaign,@pledge_level]
		else
			render action: "new"
		end
	end

	def update
		@campaign = Campaign.find(params[:campaign_id])
		@pledge_level = PledgeLevel.find(params[:id])

		if @pledge_level.update_attributes(pledge_level)
			redirect_to @pledge_level, :notice => "Pledge Level details were updated."
		else
			render :action => "edit"
		end
	end

	def edit
		@campaign = Campaign.find(params[:campaign_id])
		@pledge_level = PledgeLevel.find(params[:id])
	end

	def show
		@campaign = Campaign.find(params[:campaign_id])
		@pledge_level = PledgeLevel.find(params[:id])
	end
end