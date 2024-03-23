class Boss < ApplicationRecord
  has_many :group_bosses
  has_many :groups, through: :group_bosses
  belongs_to :checked_by, class_name: 'User', optional: true
  belongs_to :found_by, class_name: 'User', optional: true
  has_one_attached :image
end
