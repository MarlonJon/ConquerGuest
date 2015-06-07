class CreateMyProfiles < ActiveRecord::Migration
  def change
    create_table :my_profiles do |t|
      t.string :secondname
      t.text :bio
      t.date :age

      t.timestamps
    end
  end
end
