class CreateJokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
      t.integer :rating
      t.text :body

      t.timestamps null: false
    end
  end
end
