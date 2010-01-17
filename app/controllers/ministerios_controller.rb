class MinisteriosController < ApplicationController
  # GET /ministerios
  # GET /ministerios.xml
  def index
    @ministerios = Ministerios.all
    @title = "MINISTÉRIOS"
		@contador = 0;
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ministerios }
    end
  end

  # GET /ministerios/1
  # GET /ministerios/1.xml
  def show
    @ministerios = Ministerios.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ministerios }
    end
  end

  # GET /ministerios/new
  # GET /ministerios/new.xml
  def new
    @ministerios = Ministerios.new
    @title = "Cadastro de Ministério"
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ministerios }
    end
  end

  # GET /ministerios/1/edit
  def edit
    @ministerios = Ministerios.find(params[:id])
    @title = "Edição do Ministério: " + @ministerios.nome
  end

  # POST /ministerios
  # POST /ministerios.xml
  def create
    @ministerios = Ministerios.new(params[:ministerios])
    @title = "Cadastro de Ministério"
    respond_to do |format|
      if @ministerios.save
        flash[:notice] = 'Ministerios was successfully created.'
        format.html { redirect_to(@ministerios) }
        format.xml  { render :xml => @ministerios, :status => :created, :location => @ministerios }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ministerios.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ministerios/1
  # PUT /ministerios/1.xml
  def update
    @ministerios = Ministerios.find(params[:id])
    @title = "Edição do Ministério: " + @ministerios.nome
    respond_to do |format|
      if @ministerios.update_attributes(params[:ministerios])
        flash[:notice] = 'Ministerios was successfully updated.'
        format.html { redirect_to(@ministerios) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ministerios.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ministerios/1
  # DELETE /ministerios/1.xml
  def destroy
    @ministerios = Ministerios.find(params[:id])
    @ministerios.destroy

    respond_to do |format|
      format.html { redirect_to(ministerios_url) }
      format.xml  { head :ok }
    end
  end
end
