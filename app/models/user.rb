class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true
  validates :character_name, presence: true
  belongs_to :group, optional: true
  has_many :owned_groups, class_name: 'Group', foreign_key: 'owner_id'
  has_many :memberships
  has_many :groups, through: :memberships
  has_and_belongs_to_many :groups
  has_many :groups, foreign_key: "owner_id"

  # Method to increment checks_count
  def increment_checks_count
    self.increment!(:checks_count)
  end

  # Method to increment bosses_found_count
  def increment_bosses_found_count
    self.increment!(:bosses_found_count)
  end
end
