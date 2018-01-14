class Notice < ActiveRecord::Base
	belongs_to :department

	validates :title, presence: true, length: {maximum: 50}
	
end
