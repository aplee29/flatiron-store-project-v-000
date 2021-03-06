class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :cart_id
      t.string :status, default: "in process"

      t.timestamps null: false
    end
  end
end