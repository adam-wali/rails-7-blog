class Posts::ListItemComponent < HeaderComponent
  def initialize(post:, current_user:)
    @post = post
    @current_user = current_user
  end
end
