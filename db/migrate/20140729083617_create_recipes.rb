class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      # t.integer :id
      t.text :text
      t.boolean :published
      t.text :ingredient

      t.timestamps
    end
  end
end
