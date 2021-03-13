class ChangeDatatypeProfileImageOfUsers < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :profile_image, :json
  end
end
