class AddTagFormatToSvnModule < ActiveRecord::Migration
  def self.up
    add_column :svn_modules, :tag_format, :string
  end

  def self.down
    remove_column :svn_modules, :tag_format
  end
end
