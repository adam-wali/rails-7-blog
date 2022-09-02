class Comments::ListItemComponent < HeaderComponent
  def initialize(post:, comment:, current_user:, reply:)
    @post = post
    @comment = comment
    @current_user = current_user
    @reply = reply
  end
end
