class LogEntriesController < ApplicationController
  def index
    @log_entries = LogEntry.all
  end

end
