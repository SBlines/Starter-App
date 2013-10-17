class PledgeLevel < ActiveRecord::Base
  resourcify
	validates :description, prescence: true
	validates :amount, presence: true

	belongs_to :campaign
	has_many :orders
end
