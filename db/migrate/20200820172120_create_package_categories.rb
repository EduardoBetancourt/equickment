class CreatePackageCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :package_categories do |t|
      t.references :package, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
