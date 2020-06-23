class AddCountryToAirport < ActiveRecord::Migration[6.0]
  def change
    add_column :airports, :country, :string
  end
end
