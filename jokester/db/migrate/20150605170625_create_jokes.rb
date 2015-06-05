class CreateJokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
      t.text :joke_posts
      t.integer :votes

      t.timestamps null: false
    end
  end
end
