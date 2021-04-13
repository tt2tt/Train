class CreateContractorAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :contractor_attendances do |t|
      t.integer :year, null: false
      t.integer :month, null: false
      t.integer :total_time, null: false
      t.integer :basic_time, null: false

      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
