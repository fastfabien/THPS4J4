class RemoveBioFromCities < ActiveRecord::Migration[5.2]
  def change
    remove_column :cities, :bio, :string
  end
end
