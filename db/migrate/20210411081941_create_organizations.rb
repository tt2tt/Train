class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.integer :afiliation, null: false
      t.integer :basic_salary, null: false
      t.integer :allowances, null: false
      t.integer :insurance_number, null: false

        t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
