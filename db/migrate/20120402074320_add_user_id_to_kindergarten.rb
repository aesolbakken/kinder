class AddUserIdToKindergarten < ActiveRecord::Migration
  def change
    add_column :kindergartens, :user_id, :integer

  end
end
