class UpdateGossips < ActiveRecord::Migration[5.2]
  def change
    change_column :gossips, :title, :string
  end
end