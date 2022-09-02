class RemoveGroupMemberFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :group_member_id, :bigint
  end
end
