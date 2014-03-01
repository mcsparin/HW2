#https://github.com/agjacome/saas1_hw2
class Movie < ActiveRecord::Base
	def self.all_ratings
        self.find(:all, :select => "rating", :group => "rating").map(&:rating)
    end
end
