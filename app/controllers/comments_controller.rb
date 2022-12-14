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

  def reply
    @reply = Comment.create(
      parent_comment_id: params[:comment_id],
      text: params[:text],
      user_id: current_user.id
    )

    redirect_to post_path(params[:post_id]), alert: "Unable to add reply" and return unless @reply.persisted?

    redirect_to post_path(params[:post_id])
  end
end
