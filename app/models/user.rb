class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true
  validates :character_name, presence: true

  # Define associations
  belongs_to :group, optional: true # A user can optionally belong to a group
  has_many :owned_groups, class_name: 'Group', foreign_key: 'owner_id' # A user can own multiple groups
  has_many :memberships
  has_many :joined_groups, through: :memberships, source: :group # A user can be a member of multiple groups
  has_many :group_users
  has_many :joined_groups_through_users, through: :group_users, source: :group # A user can join multiple groups through group_users

  # Method to increment checks_count
  def increment_checks_count
    increment!(:checks_count)
  end

  # Method to increment bosses_found_count
  def increment_bosses_found_count
    increment!(:bosses_found_count)
  end
end
