class Server < ApplicationRecord
  validates :name, uniqueness: true
  has_many :groups

end
