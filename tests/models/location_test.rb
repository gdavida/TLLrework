
  # validates :age, presence: true

  # has_many :boxes
  # has_many :toys

require_relative  "../test_helper"

class LocationTest < Minitest::Test
  
  def test_location_model_is_valid_with_all_info
    l = Location.new(branch_name: "Downtown", contact_name: "Carol")
    assert(l.valid?, "should be valid with all attributes present")
  end

end