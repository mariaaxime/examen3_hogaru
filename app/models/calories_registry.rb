class CaloriesRegistry < ApplicationRecord
  belongs_to :user
  
  validates :quantity, presence: true
  validates :day, presence: true
  validates :registry_type, presence: true
  validates :comment, presence: true, length: { maximum: 150 }
  
end
