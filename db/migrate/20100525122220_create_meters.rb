class CreateMeters < ActiveRecord::Migration
  def self.up
    create_table :meters do |t|
      t.string :meter_identifier
      t.string :type_of_meter
<<<<<<< HEAD
      t.string :meter_ip
=======
>>>>>>> 3947d5e0b5b7d3792ce0783cf3218baea847ddd7

      t.timestamps
    end
  end

  def self.down
    drop_table :meters
  end
end
