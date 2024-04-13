class GroupsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_server, except: [:index, :new, :create]
  before_action :set_group, only: [:show, :edit, :update, :destroy]
  before_action :authorize_owner, only: [:edit, :update, :destroy]

  def index
    @groups = current_user.joined_groups_through_users
    @user = current_user
    @id = @user.id if @user.present?
  end

  def new
    @group = Group.new
    @server_id = params[:server_id]
    @user = current_user
    @id = @user.id if @user.present?
    @owner = @user.id if @user.present?
  end

  def edit
    # Your edit logic here
  end

  def show
    @group = Group.find(params[:id])
    @server = @group.server # Set the @server variable
    @user = current_user
    @id = @user.id if @user.present?
    @owner = @user.id if @user.present?
    @found_bosses = @group.bosses.where(found: true)
    @bosses = Boss.all
    @active_bosses = @group.bosses.where(found: false).select { |boss| boss.start_window > Time.now }
  end

  def update
    if @group.update(group_params)
      redirect_to @group, notice: 'Group was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @group = Group.find(params[:id])

    # Delete associated records from the database directly
    GroupUser.where(group_id: @group.id).destroy_all

    # Now destroy the group
    @group.destroy

    redirect_to groups_path, notice: 'Group was successfully destroyed.'
  end

  def create
    @group = Group.new(group_params)
    @group.owner = current_user

    if @group.save
      redirect_to group_path(@group), notice: 'Group was successfully created.'
    else
      render :new
    end
  end

  private

  def set_server
    @server = Server.find_by(id: params[:server_id])
    @server_id = @server&.id
  end

  def set_group
    @group = Group.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, alert: 'Group not found.'
  end

  def group_params
    params.require(:group).permit(:name, :description, :server_id)
  end

  def authorize_owner
    unless @group.owner == current_user
      redirect_to @group, alert: 'You are not authorized to perform this action.'
    end
  end
end
