class Notification < ActiveRecord::Base
  validates :body, presence: true
  validates :body, uniqueness: { scope: [:post_id, :creator_id, :user_id] }
  belongs_to :post
  belongs_to :user
  validates :post, :user, presence: true
  belongs_to :creator, class_name: 'User', foreign_key: :creator_id

end
