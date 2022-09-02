class Group < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: "user_id"

  has_many :group_members
  has_many :members, through: :group_members, source: :user

  has_many :posts

  def member?(user)
    members.include?(user) || self.owner == user
  end
end
