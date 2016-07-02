class AddBmiToMeasurements < ActiveRecord::Migration
  def change
    add_column :measurements, :bmi, :float
  end
end
