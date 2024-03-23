class BossesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_boss, only: [:show, :edit, :update, :destroy, :check, :found]

  def index
    @boss = Boss.all
  end

  def check
    boss = Boss.find(params[:id])
    boss.update(checked: true, checked_by: current_user.id, checked_at: Time.now)
    redirect_to @boss, notice: 'Boss was marked as checked.'
  end

  def found
    boss = Boss.find(params[:id])
    boss.update(found: true, found_by: current_user.id, found_at: Time.now)
    redirect_to @boss, notice: 'Boss was marked as found.'
  end
end
