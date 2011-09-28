class CreateMotoUserPhones < ActiveRecord::Migration
  def self.up
    create_table :moto_user_phones do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :moto_user_phones
  end
end
