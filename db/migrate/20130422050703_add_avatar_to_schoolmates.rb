class AddAvatarToSchoolmates < ActiveRecord::Migration
  def change
  	add_attachment :classmates, :avatar
  end
end
