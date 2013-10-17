class Campaign < ActiveRecord::Base
	validates :name, presence: true
	validates :goal, presence: true
	validates :description, presence: true

	has_many :pledge_levels
	has_many :orders, :through => "pledge_level_id"
	has_and_belongs_to_many :users

end
