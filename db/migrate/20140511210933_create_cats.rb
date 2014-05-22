class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :cat_name
      t.string :cat_color
      t.integer :kittens
    end
  end
end
