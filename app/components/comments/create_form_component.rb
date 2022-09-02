class Comments::CreateFormComponent < ViewComponent::Base
  def initialize(comment:, post:)
    @comment = comment
    @post = post
  end
end
