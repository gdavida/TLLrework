
  # validates :name, present
  # validates :upc, present
  # validates :pic_url, present
  # validates :pieces, present
  # validates :box_id
  # validates :age_group_id


  # belongs_to :age_group
  # belongs_to :location
  # has_many :toys

require_relative  "../test_helper"

class ToyTest < Minitest::Test
  
  def test_toy_model_is_valid_with_all_info
    t = Toy.new(name: "Mr.Potato Head", upc: "B005KJE9L2", pic_url: "http://i.infopls.com/images/Mr_Potato_Head_toy_H.jpg", pieces: 12, age_group_id: 3)
    assert(t.valid?, "should be valid with all attributes present")
  end

end