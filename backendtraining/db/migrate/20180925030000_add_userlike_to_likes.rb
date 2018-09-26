class AddUserlikeToLikes < ActiveRecord::Migration[5.2]
  def change
    add_column :likes, :user_like, :string
  end
end
