# app/models/raid_boss.rb
class RaidBoss < ApplicationRecord
  has_many :group_bosses
  has_many :groups, through: :group_bosses
  has_many_attached :images
end
