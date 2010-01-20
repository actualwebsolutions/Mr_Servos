class BairrosController < ApplicationController
  # GET /bairros
  # GET /bairros.xml
  def index
    @bairros = Bairro.all
    @title = "BAIRROS"
    @contador = 0;
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bairros }
    end
  end

  # GET /bairros/1
  # GET /bairros/1.xml
  def show
    @bairro = Bairro.find(params[:id])
    @title = "BAIRROS - DETALHAMENTO"
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bairro }
    end
  end

  # GET /bairros/new
  # GET /bairros/new.xml
  def new
    @bairro = Bairro.new
    @title = "BAIRROS - INCLUSÃO"
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bairro }
    end
  end

  # GET /bairros/1/edit
  def edit
    @bairro = Bairro.find(params[:id])
    @title = "BAIRROS - ALTERAÇÃO"
  end

  # POST /bairros
  # POST /bairros.xml
  def create
    @bairro = Bairro.new(params[:bairro])
    @title = "BAIRROS - INCLUSÃO"
    
    respond_to do |format|
      if @bairro.save
        Bairro.update(@bairro.id, :respcad => self.current_usuarios.login.upcase)
      	flash[:notice] = 'Bairro was successfully created.'
        format.html { redirect_to(bairros_path) }
        format.xml  { render :xml => @bairro, :status => :created, :location => @bairro }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bairro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bairros/1
  # PUT /bairros/1.xml
  def update
    @bairro = Bairro.find(params[:id])
    @title = "BAIRROS - ALTERAÇÃO"
    
    respond_to do |format|
      if @bairro.update_attributes(params[:bairro])
      	Bairro.update(@bairro.id, :respmod => self.current_usuarios.login.upcase)
        flash[:notice] = 'Bairro was successfully updated.'
        format.html { redirect_to(@bairro) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bairro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bairros/1
  # DELETE /bairros/1.xml
  def destroy
    @bairro = Bairro.find(params[:id])
    @bairro.destroy

    respond_to do |format|
      format.html { redirect_to(bairros_url) }
      format.xml  { head :ok }
    end
  end
end
