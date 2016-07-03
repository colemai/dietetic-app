class AddAgeToMeasurements < ActiveRecord::Migration
  def change
    add_column :measurements, :age, :integer
  end
end
