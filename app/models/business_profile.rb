class BusinessProfile < ActiveRecord::Base
	 has_many :business_users #when have a model or a many to many you need to use plural
	  has_many :users, through: :business_users

	  extend FriendlyId
	  friendly_id :name, use: :slugged
end
