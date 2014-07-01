class Program < ActiveRecord::Base
	belongs_to :category
	has_many :episodes
end
