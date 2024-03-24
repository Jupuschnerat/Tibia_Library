class Server < ApplicationRecord
  validates :name, uniqueness: true
  belongs_to :group
end
