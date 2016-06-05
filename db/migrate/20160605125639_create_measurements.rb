class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.float :height
      t.float :weight
      t.float :pal

      t.timestamps null: false
    end
  end
end
