class Groups::ListComponent < ViewComponent::Base
  def initialize(groups:, current_user:)
    @groups = groups
    @current_user = current_user
  end
end
