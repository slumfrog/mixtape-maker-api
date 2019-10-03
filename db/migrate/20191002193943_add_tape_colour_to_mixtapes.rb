class AddTapeColourToMixtapes < ActiveRecord::Migration[5.2]
  def change
    add_column :mixtapes, :tape_colour, :string
  end
end
