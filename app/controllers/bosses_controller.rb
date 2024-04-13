class BossesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_boss, only: [:check, :found]

  def index
    @bosses = Boss.all
    @id = params[:id] || Boss.first&.id
    @server_id = params[:server_id] || Server.first&.id
  end

  def check
    # Your logic to mark the boss as checked
    @boss.update(checked: true, checked_by: current_user.id, checked_at: Time.now)
    redirect_to server_group_path(@group.server, @group), notice: 'Boss was marked as checked.'
  end

  def found
    # Your logic to mark the boss as found
    start_window_offset = calculate_start_window_offset(@boss.janela)

    if start_window_offset.nil? || @group.server.nil?
      redirect_to server_group_path(@group.server, @group), alert: 'Invalid janela format or boss not associated with a server.'
      return
    end

    if @boss.update(found: true, found_by_id: current_user.id, found_at: Time.now)
      # Calculate the date when the boss can be moved back to the regular boss table
      move_back_date = @boss.start_window + start_window_offset.days

      # Create a record in the NoChanceBoss table
      NoChanceBoss.create(boss_id: @boss.id, move_back_at: move_back_date)

      redirect_to server_group_path(@group.server, @group), notice: 'Boss was marked as found and moved to the "no chance" table.'
    else
      redirect_to server_group_path(@group.server, @group), alert: 'Failed to mark the boss as found.'
    end
  end

  private

  # Method to calculate the start window offset from the janela string
  def calculate_start_window_offset(janela)
    if janela =~ /\d+ to \d+/
      start_window_offset, _ = janela.scan(/\d+/).map(&:to_i)
      return start_window_offset
    else
      return nil
    end
  end

  def set_boss
    @boss = Boss.find(params[:id])
    @group = @boss.group
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, alert: "Boss not found."
  end
end
