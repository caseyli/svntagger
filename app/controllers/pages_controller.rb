class PagesController < ApplicationController
  def home
    @modules = SvnModule.all
    @versions = Version.all
    @versions.sort! {|v1, v2| v2.version <=> v1.version }
  end

end
