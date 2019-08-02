class AddBioToCities < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :bio, :string
  end
end
