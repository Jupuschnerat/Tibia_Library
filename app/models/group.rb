class Group < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :group_users # Rename the association
  has_many :users, through: :group_users
  has_many :memberships
  has_many :members, through: :memberships, source: :user
  has_many :group_bosses, dependent: :destroy
  has_many :bosses, through: :group_bosses
  belongs_to :server
  has_many :server_groups
  has_many :servers, through: :server_groups
  validates :name, presence: true
  validates :server, presence: true
  # has_many :bosses # Are you sure you need this association here?
end
