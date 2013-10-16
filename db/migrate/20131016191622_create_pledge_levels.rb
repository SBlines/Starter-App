class CreatePledgeLevels < ActiveRecord::Migration
  def change
    create_table :pledge_levels do |t|
      t.text :description
      t.integer :amount
      t.integer :campaign_id

      t.timestamps
    end
  end
end
