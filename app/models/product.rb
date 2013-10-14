class Product < ActiveRecord::Base
  validates :name,  presence: true, length: { maximum: 50 }, uniqueness: true
  validates :content, length: { maximum: 500,too_long: "%{count} characters is the maximum allowed" },presence: true
  validates :cost, presence: true, numericality: { only_decimal: true }
  
end
                    
                   
