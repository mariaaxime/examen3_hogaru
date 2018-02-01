class CaloriesRegistry < ApplicationRecord
  after_create :increase_user_count
  belongs_to :user
  
  validates :quantity, presence: true
  validates :day, presence: true
  validates :registry_type, presence: true
  validates :comment, presence: true, length: { maximum: 150 }
  
  private
  
    def increase_user_count
      self.user.increase_registries_count
    end
  
end
