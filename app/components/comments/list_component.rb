class Comments::ListComponent < ViewComponent::Base
  def initialize(post:, comments:, current_user:, reply:)
    @post = post
    @comments = comments
    @current_user = current_user
    @reply =  reply
  end
end
