class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      # t.integer :id
      t.string :title
      t.boolean :published

      t.timestamps
    end
  end
end
