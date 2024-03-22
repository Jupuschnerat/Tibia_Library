class GroupsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_server, only: :index

  def index
    @groups = @server.groups
  end

  def new
    @server = Server.find(params[:server_id]) # Fetch the server based on the provided server_id
    @group = @server.groups.new # Create a new group associated with the server
  end

  def create
    @group = @server.groups.new(group_params)
    @group.owner = current_user # Assuming you have a current_user method

    if @group.save
      redirect_to server_groups_path(@server), notice: 'Group was successfully created.'
    else
      render :new
    end
  end

  private

  def set_server
    @server = Server.find(params[:server_id])
  end

  def group_params
    params.require(:group).permit(:name, :description)
  end
end
