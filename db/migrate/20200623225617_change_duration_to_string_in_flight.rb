class ChangeDurationToStringInFlight < ActiveRecord::Migration[6.0]
  def change
    change_column :flights, :duration, :string
  end
end
