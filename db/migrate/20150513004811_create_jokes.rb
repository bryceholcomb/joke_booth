class CreateJokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
      t.integer :rating, default: 0
      t.text :body

      t.timestamps null: false
    end
  end
end
