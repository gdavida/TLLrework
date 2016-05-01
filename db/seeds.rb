# Put your seed data in here. This should be a series of .create! statements for
# each of your relevant models.
#
Location.create!(branch_name: "Downtown", contact_name: "Carol")
Location.create!(branch_name: "Main", contact_name: "Anelis")
Location.create!(branch_name: "Callie", contact_name: "Fred")

Box.create!(name: "A1", status: "IN", age_group_id: 1, location_id: 1)
Box.create!(name: "A2", status: "OUT", age_group_id: 1, location_id: 2)
Box.create!(name: "B1", status: "IN", age_group_id: 2, location_id: 2)
Box.create!(name: "C1", status: "OUT", age_group_id: 3, location_id: 3)
Box.create!(name: "D1", status: "RETURNED", age_group_id: 4, location_id: 3)

AgeGroup.create!(age:"0 - 3 months", color: "white")
AgeGroup.create!(age:"3 - 6 months", color: "orange")
AgeGroup.create!(age:"7 -12 months", color: "yellow")
AgeGroup.create!(age:"1 year", color: "red")
AgeGroup.create!(age:"2 years", color: "green")
AgeGroup.create!(age:"3 - 5 years", color: "blue")

Toy.create!(name: "Mr. Potato Head", upc: "B005KJE9L2", pic_url: "http://i.infopls.com/images/Mr_Potato_Head_toy_H.jpg", pieces: 13, box_id: 4, age_group_id: 3)
Toy.create!(name: "Flexi-Loop", upc: "885147093043", pic_url: "http://ecx.images-amazon.com/images/I/71vjqnKDReL._SX355_.jpg", pieces: 1, box_id: 1, age_group_id: 1)
Toy.create!(name: "Links", upc: "786417014846", pic_url: "http://www.toysrus.com/graphics/product_images/pTRU1-5744994reg.jpg", pieces: 4, box_id: 1, age_group_id: 1)
Toy.create!(name: "Learning with Animals Book", upc: "0756634687", pic_url: "http://www.dhresource.com/0x0s/f2-albu-g4-M00-83-69-rBVaEFbvvfWAPYO7AAS2nalp93o574.jpg/new-baby-039-s-cognitive-cloth-book-4-pcs.jpg", pieces: 1, box_id: 1, age_group_id: 1)
Toy.create!(name: "Duck", upc: "735282310010", pic_url: "http://ekmpowershop9.com/ekmps/shops/bargainwarehous/images/toy-squeezy-duck-plastic-5cm-yellow-pw-9465-p.jpg", pieces: 1, box_id: 1, age_group_id: 1)