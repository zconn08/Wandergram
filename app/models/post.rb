# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  caption    :string
#  location   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image_id   :integer
#

class Post < ActiveRecord::Base
  validates :user_id, presence: true
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :post_likers, through: :likes, source: :user
  has_many :comments, dependent: :destroy
  has_many :notifications
  belongs_to :image
end
