class RaidBossesController < ApplicationController
  def index
    @raid_bosses = RaidBoss.all
  end
end
