class Version < ActiveRecord::Base
  default_scope order("version desc")
  validates :version, :format => { :with => /^[\S]*$/, :message => "No spaces allowed" }
end
