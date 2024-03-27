class BossesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_boss, only: [:show, :edit, :update, :destroy, :check, :found]

  def index
    @boss = Boss.all
  end

  def check
    @boss = Boss.find(params[:id])
    @boss.update(checked: true, checked_by: current_user.id, checked_at: Time.now)
    redirect_to @boss, notice: 'Boss was marked as checked.'
  end

  def found
    @boss = Boss.find(params[:id])
    if @boss.update(found: true, found_by_id: current_user.id, found_at: Time.now)
      # Calculate the date when the boss can be moved back to the regular boss table
      move_back_date = @boss.start_window + start_window_offset.days

      # Create a record in the NoChanceBoss table
      NoChanceBoss.create(boss_id: @boss.id, move_back_at: move_back_date)

      redirect_to @boss, notice: 'Boss was marked as found and moved to the "no chance" table.'
    else
      redirect_to @boss, alert: 'Failed to mark the boss as found.'
    end
  end
end
