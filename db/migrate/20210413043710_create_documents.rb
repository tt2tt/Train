class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.string :name, null: false
      t.text :image, null: false

      t.timestamps
    end
  end
end
