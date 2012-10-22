class CreateSubscriptionUsers < ActiveRecord::Migration
  def change
    create_table :subscription_users do |t|
      t.integer :user_id
      t.integer :subscription_id
      t.string :role
      t.string :status

      t.timestamps
    end
  end
end
