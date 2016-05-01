
  # validates :age, presence: true

  # has_many :boxes
  # has_many :toys



class AgeGroup < ActiveRecord::Base
  validates :age, presence: true, uniqueness: true
  validates :color, presence: true, uniqueness: true

  has_many :boxes
  has_many :toys  
end