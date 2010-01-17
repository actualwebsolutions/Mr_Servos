class MembrosController < ApplicationController
  # GET /membros
  # GET /membros.xml
  def index
    @membros = Membro.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @membros }
    end
  end

  # GET /membros/1
  # GET /membros/1.xml
  def show
    @membro = Membro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @membro }
    end
  end

  # GET /membros/new
  # GET /membros/new.xml
  def new
    @membro = Membro.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @membro }
    end
  end

  # GET /membros/1/edit
  def edit
    @membro = Membro.find(params[:id])
  end

  # POST /membros
  # POST /membros.xml
  def create
    @membro = Membro.new(params[:membro])

    respond_to do |format|
      if @membro.save
        flash[:notice] = 'Membro was successfully created.'
        format.html { redirect_to(@membro) }
        format.xml  { render :xml => @membro, :status => :created, :location => @membro }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @membro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /membros/1
  # PUT /membros/1.xml
  def update
    @membro = Membro.find(params[:id])

    respond_to do |format|
      if @membro.update_attributes(params[:membro])
        flash[:notice] = 'Membro was successfully updated.'
        format.html { redirect_to(@membro) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @membro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /membros/1
  # DELETE /membros/1.xml
  def destroy
    @membro = Membro.find(params[:id])
    @membro.destroy

    respond_to do |format|
      format.html { redirect_to(membros_url) }
      format.xml  { head :ok }
    end
  end
end
