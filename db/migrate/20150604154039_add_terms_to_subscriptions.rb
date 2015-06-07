class AddTermsToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :terms, :boolean
  end
end
