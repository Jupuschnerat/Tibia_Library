# app/controllers/groups_controller.rb
class GroupsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_server
  before_action :set_group, only: [:index, :new, :show, :create]

  def new
    @group = @server.groups.build
  end

  def show
    @group = Group.find(params[:id])

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
    @server = Server.find_by(id: params[:server_id])
    unless @server
      # Handle case when server is not found
      redirect_to root_path, alert: 'Server not found.'
    end
  end

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name)
  end
end
