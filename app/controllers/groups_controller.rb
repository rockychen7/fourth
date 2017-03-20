class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.save

    redirect_to group_path
  end

  private

  def group_params
    params.requier(:group).permit(:title, :description)
  end
end
