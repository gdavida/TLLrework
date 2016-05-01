
  # validates :name, present
  # validates :status present
  # validates :age_group_id
  # validates :location_id


  # belongs_to :age_group
  # belongs_to :location
  # has_many :toys



class Box < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :status, presence: true
  validates :location_id, presence: true
  validates :age_group_id, presence: true

  belongs_to :age_group
  belongs_to :location
  has_many :boxes
end