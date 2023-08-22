class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.references :user, null: false, foreign_key: true
      t.string :typeProperty
      t.references :category, null: false, foreign_key: true
      t.integer :squareMeters
      t.text :direction
      t.integer :contact
      t.boolean :available, default: true

      t.timestamps
    end
  end
end
