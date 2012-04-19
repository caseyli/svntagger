class SvnModule < ActiveRecord::Base
  default_scope order("name")
  validates :name, :format => { :with => /^[\S]*$/, :message => "No spaces allowed" }
  validates :tag_format, :format => { :with => /^[\S]*$/, :message => "No spaces allowed" }
end
