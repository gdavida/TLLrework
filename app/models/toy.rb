
  # validates :name, present
  # validates :upc, present
  # validates :pic_url, present
  # validates :pieces, present
  # validates :box_id
  # validates :age_group_id


  # belongs_to :age_group
  # belongs_to :box


class Toy < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :upc, presence: true
  validates :pic_url, presence: true
  validates :pieces, presence: true
  validates :age_group_id, presence: true

  belongs_to :age_group
  belongs_to :box
end