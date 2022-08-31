class Post < ApplicationRecord
  belongs_to :group
  belongs_to :user
  belongs_to :group_member
  has_many :comments, class_name: "Comment", foreign_key: :post_id

end
