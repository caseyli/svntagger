class CreateSvnModules < ActiveRecord::Migration
  def self.up
    create_table :svn_modules do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :svn_modules
  end
end
