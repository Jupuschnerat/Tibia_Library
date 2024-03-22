class MembershipRequestsController < ApplicationController
  def create
    @group = Group.find(params[:group_id])
    @group.membership_requests.create(user: current_user)

    redirect_to @group, notice: 'Membership request sent.'
  end
end
