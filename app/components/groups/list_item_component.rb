class Groups::ListItemComponent < HeaderComponent
  def initialize(group:, current_user:)
    @group = group
    @current_user = current_user
  end

  def get_last_activity
    @group.last_activity
  end

  def group_joined?
    @group.group_members.where(user_id: @current_user.id).present? || @group.owner == @current_user
  end
end
