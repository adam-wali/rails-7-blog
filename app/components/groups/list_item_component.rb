class Groups::ListItemComponent < HeaderComponent
  def initialize(group:)
    @group = group
  end

  def get_last_activity
    @group.last_activity
  end
end
