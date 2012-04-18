class LogEntriesController < ApplicationController
  def index
    @log_entries = LogEntry.all
    @log_entries.sort! { |l1, l2| l2.created_at <=> l1.created_at}
  end

end
