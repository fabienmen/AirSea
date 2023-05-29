class CreateBoats < ActiveRecord::Migration[7.0]
  def change
    create_table :boats do |t|
      t.string :name
      t.string :category
      t.float :price_daily
      t.float :size
      t.references :user, null: false, foreign_key: true
      t.text :description
      t.integer :production_year

      t.timestamps
    end
  end
end
