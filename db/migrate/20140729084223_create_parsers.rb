class CreateParsers < ActiveRecord::Migration
  def change
    create_table :parsers do |t|
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
