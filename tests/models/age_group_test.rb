
  # validates :age, presence: true

  # has_many :boxes
  # has_many :toys

require_relative  "../test_helper"

class AgeGroupTest < Minitest::Test
  
  def test_age_group_model_is_valid_with_all_info
    a = AgeGroup.new(age:"0 - 3 months", color: "yellow")
    assert(a.valid?, "should be valid with attribute present")
  end

end