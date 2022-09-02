class Groups::MembersListComponent < HeaderComponent
  def initialize(members:, current_user:)
    @members = members
    @current_user = current_user
  end
end
