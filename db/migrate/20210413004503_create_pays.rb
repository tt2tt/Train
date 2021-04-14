class CreatePays < ActiveRecord::Migration[5.2]
  def change
    create_table :pays do |t|
      t.integer :year, null: false
      t.integer :month, null: false
      t.integer :basic, null: false
      t.integer :exception_allowance, null: false
      t.integer :position_allowance, null: false
      t.integer :overtime_allowance, null: false
      t.integer :expenses, null: false
      t.integer :total_fee, null: false

      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
