# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  image_url  :string           not null
#  caption    :string
#  location   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ActiveRecord::Base
  validates :user_id, :image_url, presence: true
  belongs_to :user
  has_many :likes
  has_many :post_likers, through: :likes, source: :user
  has_many :comments
  belongs_to :image
end
