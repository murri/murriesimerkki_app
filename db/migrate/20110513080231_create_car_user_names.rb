class CreateCarUserNames < ActiveRecord::Migration
  def self.up
    create_table :car_user_names do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :car_user_names
  end
end
