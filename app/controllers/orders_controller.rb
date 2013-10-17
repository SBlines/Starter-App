class OrdersController < ApplicationController
	def new
		@campaign = Campaign.find(params[:campaign_id])
		@pledge_level = PledgeLevel.find(params[:id])
		@order = Order.new
	end

	def order_params
		params.require(:order).permit(:pledge_level_id)
	end

	def create
		@campaign = Campaign.find(params[:campaign_id])
		@pledge_level = PledgeLevel.find(params[:id])
		@porder = Order.new(order)

		if @order.save
			redirect_to @order, :notice => "Order created."
		else
			render action: "new"
		end
	end

	def update
		@campaign = Campaign.find(params[:campaign_id])
		@pledge_level = PledgeLevel.find(params[:id])
		@order = Order.find(params[:id])

		if @order.update_attributes(order)
			redirect_to @order, :notice => "Order details were updated."
		else
			render :action => "edit"
		end
	end

	def edit
		@campaign = Campaign.find(params[:campaign_id])
		@pledge_level = PledgeLevel.find(params[:id])
		@order = Order.find(params[:id])
	end

	def show
		@campaign = Campaign.find(params[:campaign_id])
		@pledge_level = PledgeLevel.find(params[:id])
		@order = Order.find(params[:id])
	end
end