class CreatePackages < ActiveRecord::Migration[6.0]
  def change
    create_table :packages do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
