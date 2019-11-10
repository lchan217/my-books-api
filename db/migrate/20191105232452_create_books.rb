class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.integer :author_id
      t.string :title
      t.integer :rating
      t.integer :num_ratings
      t.integer :pages
      t.string :genre
      t.text :review

      t.timestamps
    end
  end
end
