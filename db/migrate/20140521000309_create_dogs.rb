class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :dog_name
      t.string :dog_breed
      t.boolean :spay_neuter
    end
  end
end
