class AddGenderToMeasurements < ActiveRecord::Migration
  def change
    add_column :measurements, :gender, :string
  end
end
