class PostsController < ApplicationController
  def create
    @group = Group.find params[:group_id]
    redirect_to group_path(@group), alert: "You are not a member of this group" and return unless @group.member? current_user

    @post = Post.create(
      title: params.dig(:post, :title),
      text: params.dig(:post, :text),
      user_id: current_user.id,
      group_id: params[:group_id]
    )

    redirect_to post_path(@post)
  end

  def show
    @post = Post.find params[:id]
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
