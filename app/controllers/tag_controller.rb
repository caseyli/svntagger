class TagController < ApplicationController
  def tag_module
    
    if params[:version].blank?
      response = false
      message = "Version cannot be blank."
    else
      svnmodule = SvnModule.find(params[:id])
      tag_name = svnmodule.tag_format.gsub("[VERSION]", params[:version])
      
      comment = params[:comment]
      comment = "Tagging #{params[:version]} from trunk." if comment.blank?
      
      command = "svn copy #{svnmodule.url}/trunk #{svnmodule.url}/tags/#{tag_name} -m \"#{comment}\""
      console_output = `svn copy #{svnmodule.url}/trunk #{svnmodule.url}/tags/#{tag_name} -m "#{comment}"`
      message = "'#{tag_name}' tag created! #{console_output}"  
      
      log = LogEntry.new({ :message => "#{command}; #{console_output}; #{message}"})
      log.save
      
      response = true
    end
    
    
    respond_to do |format|
      format.json { render :json => { :response => response, :message => message}.to_json }
    end
    
  end

end
