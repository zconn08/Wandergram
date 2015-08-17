class Notification < ActiveRecord::Base
  validates :body, presence: true
  belongs_to :post
  belongs_to :user
  validates :post, :user, presence: true
end
