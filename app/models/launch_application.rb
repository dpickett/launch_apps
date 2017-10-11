class LaunchApplication < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true

  # we can't use user in the association definition,
  # because ActiveRecord will then be looking for a `user_id` column
  # when we only have a `creator_id` column
  #belongs_to :user

  belongs_to :creator,
    class_name: 'User',
    foreign_key: 'creator_id'

  has_many :ratings
  has_many :users,
    through: :ratings
end
