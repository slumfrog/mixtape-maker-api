class RemoveDescriptionFromMixtapes < ActiveRecord::Migration[5.2]
  def change
    remove_column :mixtapes, :description, :string
  end
end
