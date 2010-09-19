class QmasksController < ApplicationController
  # GET /qmasks
  # GET /qmasks.xml
  def index
    @qmasks = Qmask.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @qmasks }
    end
  end

  # GET /qmasks/1
  # GET /qmasks/1.xml
  def show
    @qmask = Qmask.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @qmask }
    end
  end

  # GET /qmasks/new
  # GET /qmasks/new.xml
  def new
    @qmask = Qmask.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @qmask }
    end
  end

  # GET /qmasks/1/edit
  def edit
    @qmask = Qmask.find(params[:id])
  end

  # POST /qmasks
  # POST /qmasks.xml
  def create
    @qmask = Qmask.new(params[:qmask])

    respond_to do |format|
      if @qmask.save
        format.html { redirect_to(@qmask, :notice => 'Qmask was successfully created.') }
        format.xml  { render :xml => @qmask, :status => :created, :location => @qmask }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @qmask.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /qmasks/1
  # PUT /qmasks/1.xml
  def update
    @qmask = Qmask.find(params[:id])

    respond_to do |format|
      if @qmask.update_attributes(params[:qmask])
        format.html { redirect_to(@qmask, :notice => 'Qmask was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @qmask.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /qmasks/1
  # DELETE /qmasks/1.xml
  def destroy
    @qmask = Qmask.find(params[:id])
    @qmask.destroy

    respond_to do |format|
      format.html { redirect_to(qmasks_url) }
      format.xml  { head :ok }
    end
  end
end
