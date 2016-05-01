class CreateAgeGroupTable < ActiveRecord::Migration
  def change
    create_table :age_groups do |t|
      t.string :age
      t.string :color
    end
  end
end