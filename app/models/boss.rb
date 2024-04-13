class Boss < ApplicationRecord
  has_many :group_bosses
  belongs_to :checked_by, class_name: 'User', optional: true
  belongs_to :found_by, class_name: 'User', optional: true
  has_one_attached :image
  has_many :no_chance_bosses
  belongs_to :server, optional: true
  belongs_to :group
end
