class BossesController < ApplicationController
  def index
    @boss = Boss.all
  end

  def check
    boss = Boss.find(params[:id])
    boss.update(checked: true, checked_by: current_user.id, checked_at: Time.now)
    redirect_to bosses_path
  end

  def found
    boss = Boss.find(params[:id])
    boss.update(found: true, found_by: current_user.id, found_at: Time.now)
    redirect_to bosses_path
  end
end
