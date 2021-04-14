class CreateDeductions < ActiveRecord::Migration[5.2]
  def change
    create_table :deductions do |t|
      t.integer :year, null: false
      t.integer :month, null: false
      t.integer :health_insurance, null: false
      t.integer :care_insurance, null: false
      t.integer :pension, null: false
      t.integer :employment_insurance, null: false
      t.integer :income_tax, null: false
      t.integer :residents_tax, null: false
      t.integer :other, null: false
      t.integer :total_fee, null: false

      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
