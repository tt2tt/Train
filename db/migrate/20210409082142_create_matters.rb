class CreateMatters < ActiveRecord::Migration[5.2]
  def change
    create_table :matters do |t|
      t.string :contractor, null: false
      t.string :name, null: false
      t.integer :price, null: false
      t.integer :width_up, null: false
      t.integer :width_under, null: false

      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
