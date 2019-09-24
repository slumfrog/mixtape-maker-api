class AddUserIdToMixtapes < ActiveRecord::Migration[5.2]
  def change
    add_column :mixtapes, :user_id, :string
  end
end
