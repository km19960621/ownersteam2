class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :image
      t.string :password_digest
      t.integer :favorite_card_id
      t.integer :favorite_order_pitcher_id
      t.integer :favorite_order_catcher_id
      t.integer :favorite_order_first_id
      t.integer :favorite_order_second_id
      t.integer :favorite_order_third_id
      t.integer :favorite_order_short_id
      t.integer :favorite_order_left_id
      t.integer :favorite_order_center_id
      t.integer :favorite_order_right_id
      t.integer :favorite_order_dh_id

      t.timestamps
    end
  end
end
