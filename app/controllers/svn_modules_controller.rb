class SvnModulesController < ApplicationController
  # GET /svn_modules
  # GET /svn_modules.xml
  def index
    @svn_modules = SvnModule.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @svn_modules }
    end
  end

  # GET /svn_modules/1
  # GET /svn_modules/1.xml
  def show
    @svn_module = SvnModule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @svn_module }
    end
  end

  # GET /svn_modules/new
  # GET /svn_modules/new.xml
  def new
    @svn_module = SvnModule.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @svn_module }
    end
  end

  # GET /svn_modules/1/edit
  def edit
    @svn_module = SvnModule.find(params[:id])
  end

  # POST /svn_modules
  # POST /svn_modules.xml
  def create
    @svn_module = SvnModule.new(params[:svn_module])

    respond_to do |format|
      if @svn_module.save
        format.html { redirect_to(@svn_module, :notice => 'Svn module was successfully created.') }
        format.xml  { render :xml => @svn_module, :status => :created, :location => @svn_module }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @svn_module.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /svn_modules/1
  # PUT /svn_modules/1.xml
  def update
    @svn_module = SvnModule.find(params[:id])

    respond_to do |format|
      if @svn_module.update_attributes(params[:svn_module])
        format.html { redirect_to(@svn_module, :notice => 'Svn module was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @svn_module.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /svn_modules/1
  # DELETE /svn_modules/1.xml
  def destroy
    @svn_module = SvnModule.find(params[:id])
    @svn_module.destroy

    respond_to do |format|
      format.html { redirect_to(svn_modules_url) }
      format.xml  { head :ok }
    end
  end
end
