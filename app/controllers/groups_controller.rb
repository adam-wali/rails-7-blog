class GroupsController < ApplicationController
  def index

    if params[:request_type].present?
      @groups = current_user.send(params[:request_type])
    else
      @groups = Group.all
    end
  end

  def show
    @group = Group.find params[:id]
    @new_post = Post.new
    @posts = @group.posts
    @members = @group.members
  end

  def create
    @group = Group.create(
      name: params.dig(:group, :name),
      user_id: current_user.id
    )

    redirect_to groups_path if @group.persisted?
  end

  def remove_member
    @group_member = GroupMember.find_by(user_id: params[:member_id], group_id: params[:id])

    redirect_to groups_path, alert: "Unable to remove member." and return unless @group_member.present?

    redirect_to groups_path(params[:id]), notice: "Member removed" if @group_member.destroy
  end
end
