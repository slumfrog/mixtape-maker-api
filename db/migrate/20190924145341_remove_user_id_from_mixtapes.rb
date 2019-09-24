class RemoveUserIdFromMixtapes < ActiveRecord::Migration[5.2]
  def change
    remove_column :mixtapes, :user_id, :string
  end
end
