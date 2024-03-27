class Server < ApplicationRecord
  validates :name, uniqueness: true
  has_many :server_groups
  has_many :groups, through: :server_groups
end
