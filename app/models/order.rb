class Order < ActiveRecord::Base
	belongs_to :user
	belongs_to :campaign
	has_one :pledge_level
end
