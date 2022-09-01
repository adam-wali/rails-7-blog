class Comments::ListComponent < ViewComponent::Base
  def initialize(post:, comments:, current_user:)
    @post = post
    @comments = comments
    @current_user = current_user
  end
end
