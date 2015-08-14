# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string           not null
#  session_token   :string           not null
#  password_digest :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  image_id        :integer
#  bio             :string
#

class User < ActiveRecord::Base
  validates :username, :password_digest, :session_token, presence: true
  validates :username, :session_token, uniqueness: true
  validates :password, length: {minimum: 6, allow_nil: true}

  after_initialize :ensure_session_token

  has_many :posts
  has_many :likes
  has_many :comments
  belongs_to :image

  has_many :liked_posts, through: :likes, source: :post
  # join table for people we are following
  has_many :outgoing_followings, foreign_key: :followee_id, class_name: 'Following'
  # join table for those following us
  has_many :incoming_followings, foreign_key: :follower_id, class_name: 'Following'

  has_many :followers, through: :outgoing_followings, source: :follower
  has_many :followees, through: :incoming_followings, source: :followee

  attr_reader :password

  def self.find_by_credentials(username, password)
    @user = User.find_by_username(username)
    @user && @user.is_password?(password) ? @user : nil
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def reset_session_token!
    self.session_token = generate_session_token
    self.save!
    self.session_token
  end

  private
  def generate_session_token
    SecureRandom.urlsafe_base64
  end

  def ensure_session_token
    self.session_token ||= generate_session_token
  end

end
