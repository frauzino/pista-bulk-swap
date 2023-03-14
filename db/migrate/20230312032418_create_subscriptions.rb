class CreateSubscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :subscriptions do |t|
      t.string :customer_email
      t.string :product_title
      t.string :variant_title

      t.timestamps
    end
  end
end
