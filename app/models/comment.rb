class Comment < ApplicationRecord
  belongs_to :post

  has_many :replies, class_name: "Comment", foreign_key: :parent_comment_id
  belongs_to :comment, class_name: "Comment", optional: true
end
