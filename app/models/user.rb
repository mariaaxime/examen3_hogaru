class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :calories_registries
  
  attr_accessor :registries_count, :progress_token
  
  def increase_registries_count
    registries_count ||= 0
    registries_count = registries_count + 1
  end
  
  def authenticated?(progress_token)
    return false if progress_digest.nil?
    BCrypt::Password.new(progress_digest).is_password?(progress_token)
  end
  
  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  # Returns a random token.
  def User.new_token
    SecureRandom.urlsafe_base64
  end
  
  def create_progress_digest
    self.progress_token = User.new_token
    update_attribute(:progress_digest,  User.digest(progress_token))
  end

  # Sends password reset email.
  def send_progress_tracker_email(email)
    UserMailer.progress_tracker(self, email).deliver_now
  end
end
