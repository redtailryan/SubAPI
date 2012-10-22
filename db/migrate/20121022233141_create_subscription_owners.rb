class CreateSubscriptionOwners < ActiveRecord::Migration
  def change
    create_table :subscription_owners do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
