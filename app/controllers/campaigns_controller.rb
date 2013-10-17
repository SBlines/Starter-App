class CampaignsController < ApplicationController
	def new
		@campaign = Campaign.new
	end

	def create
		@campaign = Campaign.new(campaign_params)

		if @campaign.save
			redirect_to @campaign #come back
		else
			render action: "new"
		end
	end

	def edit
		@campaign = Campaign.find(params[:id])
	end

	def update
		@campaign = Campaign.find(params[:id])

		if @campaign.update_attributes(campaign_params)
			redirect_to @campaign, :notice => "The campaign details were updated."
		else
			render :action => "edit"
		end
	end

	def campaign_params
		params.require(:campaign).permit(:name, :description, :goal, :pledge_levels)
	end

	def show
    begin
      @campaign = Campaign.find(params[:id])
    rescue
      @campaign = Campaign.first
    end
  end
end
