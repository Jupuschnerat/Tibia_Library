class Server < ApplicationRecord
  validates :name, uniqueness: true
  has_many :server_groups
  has_many :groups, through: :server_groups
  has_many :bosses, through: :groups

  def all_bosses
    bosses.distinct
  end
end
