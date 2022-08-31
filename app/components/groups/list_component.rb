class Groups::ListComponent < ViewComponent::Base
  def initialize(groups:)
    @groups = groups
  end
end
