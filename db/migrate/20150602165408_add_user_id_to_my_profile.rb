class AddUserIdToMyProfile < ActiveRecord::Migration
  def change
    add_column :my_profiles, :user_id, :integer
  end
end
