class AddImgUrlToClassmate < ActiveRecord::Migration
  def change
    add_column :classmates, :img_url, :string
  end
end
