class GroupsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_server, except: [:index]
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  def new
    @server_id = params[:server_id]
    @group = Group.new
  end

  def edit
    # You don't need any specific logic here if you're only rendering the edit form
  end

  def show
    @group = Group.find(params[:id])

    @bosses = @group.bosses
    @found_bosses = @group.bosses.where(found: true)
  end

  def update
    if @group.update(group_params)
      redirect_to @group, notice: 'Group was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @group.destroy
    redirect_to root_path, notice: 'Group was successfully destroyed.'
  end

  def create
    @group = Group.new(group_params)
    @group.owner = current_user # Assuming you have current_user method

    # Find all bosses and associate them with the new group
    Boss.all.each do |boss|
      @group.bosses << boss
    end

    if @group.save
      redirect_to group_path(@group), notice: 'Group was successfully created.'
    else
      @server_id = params[:group][:server_id]
      render :new
    end
  end

  private

  def set_server
    @server = Server.find_by(id: params[:server_id])
  end

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name, :description, :server_id)
  end
end
