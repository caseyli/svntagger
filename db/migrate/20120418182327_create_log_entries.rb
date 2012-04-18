class CreateLogEntries < ActiveRecord::Migration
  def self.up
    create_table :log_entries do |t|
      t.string :message

      t.timestamps
    end
  end

  def self.down
    drop_table :log_entries
  end
end
