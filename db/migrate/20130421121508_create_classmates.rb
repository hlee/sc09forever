class CreateClassmates < ActiveRecord::Migration
  def change
    create_table :classmates do |t|
      t.string :name
      t.string :email
      t.string :qq
      t.text :description

      t.timestamps
    end
  end
end
