class GroupsController < ApplicationController
  def index

    respond_to do |format|
      format.html {
        @groups = Group.all
      }
      format.js {
        @groups = current_user.send(params[:request_type])
      }
    end
  end

  def show
    @group = Group.find params[:id]
    @new_post = Post.new
    @posts = @group.posts
    @members = @group.members
  end

  def remove_member
    @group_member = GroupMember.find_by(user_id: params[:member_id], group_id: params[:id])

    redirect_to groups_path, alert: "Unable to remove member." and return unless @group_member.present?

    redirect_to groups_path(params[:id]), notice: "Member removed" if @group_member.destroy
  end

  def join
  end
end
