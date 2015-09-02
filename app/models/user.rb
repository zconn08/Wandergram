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
  validates :username, :password_digest, presence: true
  validates :username, uniqueness: true
  validates :password, length: {minimum: 6, allow_nil: true}

  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :image
  has_many :notifications, dependent: :destroy
  has_many :sessions, dependent: :destroy


  has_many :liked_posts, through: :likes, source: :post
  # join table for people we are following
  has_many :outgoing_followings, foreign_key: :followee_id, class_name: 'Following'
  # join table for those following us
  has_many :incoming_followings, foreign_key: :follower_id, class_name: 'Following'

  has_many :created_notifications, foreign_key: :creator_id, class_name: 'Notification'

  has_many :followers, through: :outgoing_followings, source: :follower
  has_many :followees, through: :incoming_followings, source: :followee

  attr_reader :password

  def self.find_by_credentials(username, password)
    @user = User.find_by_username(username)
    @user && @user.is_password?(password) ? @user : nil
  end

  def self.find_by_session_token(session_token)
    return nil unless session_token
    session = Session.find_by_session_token(session_token)
    session ? session.user : nil
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

end
