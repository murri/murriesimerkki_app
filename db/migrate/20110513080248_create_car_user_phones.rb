class CreateCarUserPhones < ActiveRecord::Migration
  def self.up
    create_table :car_user_phones do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :car_user_phones
  end
end
