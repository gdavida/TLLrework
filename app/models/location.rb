
  # validates :age, presence: true

  # has_many :boxes
  # has_many :toys



class Location < ActiveRecord::Base
  validates :branch_name, presence: true, uniqueness: true
  validates :contact_name, presence: true

  has_many :boxes
end