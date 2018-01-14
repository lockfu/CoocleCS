class Department < ActiveRecord::Base
	has_many :notices
	validates :name, presence: true, length: {maximum: 50}
end
