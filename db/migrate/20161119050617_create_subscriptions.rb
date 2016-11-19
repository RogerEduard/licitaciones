class CreateSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :subscriptions do |t|
      t.references :customer, foreign_key: true
      t.references :category, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
