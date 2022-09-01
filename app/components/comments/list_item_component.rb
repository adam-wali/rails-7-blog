class Comments::ListItemComponent < HeaderComponent
  def initialize(post:, comment:, current_user:)
    @post = post
    @comment = comment
    @current_user = current_user
  end
end
