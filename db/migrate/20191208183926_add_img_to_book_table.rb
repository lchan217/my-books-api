class AddImgToBookTable < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :img, :string
  end
end
