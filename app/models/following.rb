# == Schema Information
#
# Table name: followings
#
#  id          :integer          not null, primary key
#  follower_id :integer          not null
#  followee_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Following < ActiveRecord::Base
  belongs_to :follower, foreign_key: :follower_id, class_name: "User"
  belongs_to :followee, foreign_key: :followee_id, class_name: "User"
  validates :follower, :followee, presence: true

  def self.follow_for_users(follower, followee)
    self.find_by(
      follower_id: follower.id,
      followee_id: followee.id
    )
  end
end
