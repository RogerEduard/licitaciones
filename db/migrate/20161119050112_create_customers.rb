class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :ruc
      t.string :name
      t.string :email
      t.string :password
      t.date :register_date
      t.integer :card_type
      t.string :card_number
      t.string :status

      t.timestamps
    end
  end
end
