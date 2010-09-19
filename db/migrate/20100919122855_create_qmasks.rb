class CreateQmasks < ActiveRecord::Migration
  def self.up
    create_table :qmasks do |t|
    

      t.timestamps
    end
  end

  def self.down
    drop_table :qmasks
  end
end
