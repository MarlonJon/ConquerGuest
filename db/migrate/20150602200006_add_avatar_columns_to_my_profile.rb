class AddAvatarColumnsToMyProfile < ActiveRecord::Migration
  def up
    add_attachment :my_profile, :avatar
  end

  def down
    remove_attachment :my_profile, :avatar
  end
end
