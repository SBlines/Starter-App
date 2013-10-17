class PledgeLevel < ActiveRecord::Base
	validates :description, prescence: true
	validates :amount, presence: true

	belongs_to :campaign
	has_many :orders
end
