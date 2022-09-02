class Comment < ApplicationRecord
  belongs_to :post, optional: true

  has_many :replies, class_name: "Comment", foreign_key: :parent_comment_id
  belongs_to :comment, class_name: "Comment", optional: true

  belongs_to :user
end
