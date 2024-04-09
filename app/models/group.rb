class Group < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :users, through: :groups_users
  has_many :memberships
  has_many :users, through: :memberships
  has_many :group_bosses
  has_many :groups_users
  has_many :bosses, through: :group_bosses
  has_many :members, through: :memberships, source: :user
  belongs_to :server
  has_many :server_groups
  has_many :servers, through: :server_groups
  validates :name, presence: true
  validates :server, presence: true
end
