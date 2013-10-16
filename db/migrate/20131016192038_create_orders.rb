class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :pledge_level_id
      t.text :status

      t.timestamps
    end
  end
end
