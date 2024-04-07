class BossesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_boss, only: [:check, :found]

  def index
    # @server = Server.find(params[:server_id])
    @bosses = Boss.all
    @id = Boss.first&.id
    @server_id = Server.first&.id
  end

  def check
    @boss.update(checked: true, checked_by: current_user.id, checked_at: Time.now)
    redirect_to @boss, notice: 'Boss was marked as checked.'
  end

  def found
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

  private

  def set_boss
    @boss = Boss.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to bosses_path, alert: "Boss not found."
  end
end
