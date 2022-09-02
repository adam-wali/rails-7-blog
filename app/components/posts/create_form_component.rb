class Posts::CreateFormComponent < ViewComponent::Base
  def initialize(group:, post:)
    @group = group
    @post = post
  end
end
