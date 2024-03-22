class Group < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :users
  has_many :memberships
  has_many :users, through: :memberships
  has_many :group_bosses
  has_many :bosses, through: :group_bosses
  has_many :members, through: :memberships, source: :user
end
