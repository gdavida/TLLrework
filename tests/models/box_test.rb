
  # validates :name, present
  # validates :status present
  # validates :age_group_id
  # validates :location_id


  # belongs_to :age_group
  # belongs_to :location
  # has_many :toys

require_relative  "../test_helper"

class BoxTest < Minitest::Test
  
  def test_box_model_is_valid_with_all_info
    b = Box.new(name: "A2", status: "IN", age_group_id: 1, location_id: 1)
    assert(b.valid?, "should be valid with all attributes present")
  end

end