class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :category_id
      t.integer :parser_id
      t.string :title
      t.text :text
      t.boolean :published
      t.text :ingredient

      t.timestamps
    end
  end
end
