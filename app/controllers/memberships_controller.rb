class MembershipsController < ApplicationController
  before_action :authenticate_user!

  def create
    @group = Group.find(params[:group_id])
    @membership = @group.memberships.build(user_id: current_user.id, status: 'pending')

    if @membership.save
      redirect_to @group, notice: "Membership request sent"
    else
      redirect_to @group, alert: "Failed to send membership request"
    end
  end

  def update
    @membership = Membership.find(params[:id])
    if @membership.group.owner == current_user
      @membership.update(status: params[:status])
      redirect_to @membership.group, notice: "Membership status updated"
    else
      redirect_to root_path, alert: "You are not authorized to perform this action"
    end
  end

  def update
    @membership = Membership.find(params[:id])
    if @membership.group.owner == current_user
      if params[:status] == 'accepted'
        @membership.update(status: 'active')
        redirect_to @membership.group, notice: "Membership request accepted"
      else
        @membership.update(status: params[:status])
        redirect_to @membership.group, notice: "Membership status updated"
      end
    else
      redirect_to root_path, alert: "You are not authorized to perform this action"
    end
  end

  def destroy
    @membership = Membership.find(params[:id])
    if @membership.group.owner == current_user || @membership.user == current_user
      @membership.destroy
      redirect_to @membership.group, notice: "Membership removed"
    else
      redirect_to root_path, alert: "You are not authorized to perform this action"
    end
  end
end
