class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.integer :author_id
      t.string :title
      t.string :rating
      t.string :integer
      t.integer :num_ratings
      t.string :pages
      t.string :integer
      t.string :genre

      t.timestamps
    end
  end
end