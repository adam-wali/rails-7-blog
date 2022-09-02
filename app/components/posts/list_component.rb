class Posts::ListComponent < ViewComponent::Base
  def initialize(posts:, current_user:)
    @posts = posts
    @current_user = current_user
  end
end
