class User < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :launch_applications,
    class_name: 'LaunchApplication',
    foreign_key: 'creator_id'

  has_many :ratings

  has_many :launch_applications,
    through: :ratings
end
