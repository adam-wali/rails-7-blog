class CommentsController < ApplicationController
  def create
    @post = Post.find params[:post_id]

    @comment = Comment.create(
      text: params.dig(:comment, :text),
      post_id: params[:post_id],
      user_id: current_user.id
    )
    redirect_to post_path(@post)
  end
end
