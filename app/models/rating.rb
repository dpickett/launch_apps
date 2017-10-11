class Rating < ActiveRecord::Base
  validates :score, numericality: true, presence: true
  validates :user, presence: true
  validates :launch_application, presence: true

  belongs_to :launch_application
  belongs_to :user
end
