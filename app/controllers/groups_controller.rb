# app/controllers/groups_controller.rb

class GroupsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_server
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  def new
    @group = @server.groups.build
  end

  def create
    @group = @server.groups.build(group_params)

    if @group.save
      redirect_to @group, notice: 'Group was successfully created.'
    else
      render :new
    end
  end

  private

  def set_server
    @server = Server.find(params[:server_id])
  end

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name)
  end
end
