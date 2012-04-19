class PagesController < ApplicationController
  def home
    @modules = SvnModule.all
    @versions = Version.all
  end

end
