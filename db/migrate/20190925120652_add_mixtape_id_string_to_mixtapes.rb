class AddMixtapeIdStringToMixtapes < ActiveRecord::Migration[5.2]
  def change
    add_column :mixtapes, :mixtape_id, :string
  end
end
