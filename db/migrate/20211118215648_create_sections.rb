class CreateSections < ActiveRecord::Migration[6.1]
  def change
    create_table :sections do |t|
      t.string :name
      t.integer :position
      t.boolean :visible
      t.string :content_type
      t.text :content
      t.references :page, null: false, foreign_key: true

      t.timestamps
    end
  end
end
