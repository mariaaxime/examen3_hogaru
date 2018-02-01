class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :calories_registries
  
  attr_accessor :registries_count
  
  def increase_registries_count
    registries_count ||= 0
    registries_count = registries_count + 1
  end
end
