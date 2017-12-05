class Employee < ActiveRecord::Base
  belongs_to :stores
  validates_associated :stores
  validates :first_name, :last_name, :store_id, presence: true
  validates :hourly_rate, inclusion: { in: 40..200 }
end
