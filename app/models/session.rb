class Session < ActiveRecord::Base
  belongs_to :user
  validates :user, presence: true
  validates :session_token, presence: true

  def self.generate_session_token
    SecureRandom.urlsafe_base64
  end
end
