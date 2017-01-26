class AddMoreColumnsToRestaurants < ActiveRecord::Migration[5.0]
  def change
    remove_column :restaurants, :address
    remove_column :restaurants, :website
    add_column :restaurants, :address1, :string
    add_column :restaurants, :address2, :string
    add_column :restaurants, :zip_code, :string
    add_column :restaurants, :city, :string
    add_column :restaurants, :state, :string
    add_column :restaurants, :longitude, :decimal, {:precision => 15, :scale => 13}
    add_column :restaurants, :latitude, :decimal, {:precision => 15, :scale => 13}
  end
end
