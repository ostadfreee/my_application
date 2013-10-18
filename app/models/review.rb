class Review < ActiveRecord::Base
  belongs_to :product
  #before_save :force_rating
  has_attached_file :avatar 

   

end
