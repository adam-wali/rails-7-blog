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

  def join
  end
end
