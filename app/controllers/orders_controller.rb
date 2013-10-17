class OrdersController < ApplicationController
	def new
		@order = Order.new
	end

	def order_params
		params.require(:order).permit(:pledge_level_id)
	end

	def create
		@porder = Order.new(order)

		if @order.save
			redirect_to @order, :notice => "Order created."
		else
			render action: "new"
		end
	end

	def update
		@order = Order.find(params[:id])

		if @order.update_attributes(order)
			redirect_to @order, :notice => "Order details were updated."
		else
			render :action => "edit"
		end
	end

	def edit
		@order = Order.find(params[:id])
	end

	def show
		@order = Order.find(params[:id])
	end
end