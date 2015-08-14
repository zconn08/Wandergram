# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  post_id    :integer
#

class Comment < ActiveRecord::Base
  validates :body, presence: true
  validates :post, presence: true
  belongs_to :post
  belongs_to :user
end
