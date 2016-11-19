class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :ruc
      t.string :name
      t.string :address
      t.string :status

      t.timestamps
    end
  end
end
