class CreateMotoUserNames < ActiveRecord::Migration
  def self.up
    create_table :moto_user_names do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :moto_user_names
  end
end
