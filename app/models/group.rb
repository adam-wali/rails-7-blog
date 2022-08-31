class Group < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: "user_id"

  has_many :group_members
  has_many :members, through: :group_member, source: :user

  has_many :posts
end
