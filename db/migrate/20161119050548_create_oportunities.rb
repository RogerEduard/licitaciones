class CreateOportunities < ActiveRecord::Migration[5.0]
  def change
    create_table :oportunities do |t|
      t.string :name
      t.text :description
      t.decimal :budget
      t.string :money
      t.date :published_date
      t.date :deadline
      t.date :result_date
      t.references :company, foreign_key: true
      t.references :category, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
