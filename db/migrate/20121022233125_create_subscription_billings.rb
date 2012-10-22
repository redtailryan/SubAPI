class CreateSubscriptionBillings < ActiveRecord::Migration
  def change
    create_table :subscription_billings do |t|
      t.integer :subscription_id
      t.integer :user_id
      t.string :cc_type
      t.string :cc_number
      t.string :cc_address
      t.string :cc_city
      t.string :cc_state
      t.string :cc_zip

      t.timestamps
    end
  end
end
