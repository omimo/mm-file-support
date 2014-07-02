class CreateSensorTypes < ActiveRecord::Migration
  def change
    create_table :sensor_types do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end