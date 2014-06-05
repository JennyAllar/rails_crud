class CreateBike < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :brand
      t.string :model
      t.string :color
    end
  end
end
