class CongregacoesController < ApplicationController
	# GET /congregacoes
  # GET /congregacoes.xml
  def index
    @congregacoes = Congregacoes.all
    @title = "CONGREGAÇÕES"
    @contador = 0;
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @congregacoes }
    end
  end

  # GET /congregacoes/1
  # GET /congregacoes/1.xml
  def show
    @congregacoes = Congregacoes.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @congregacoes }
    end
  end

  # GET /congregacoes/new
  # GET /congregacoes/new.xml
  def new
    @congregacoes = Congregacoes.new
    @title = "Cadastro de Congregração"
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @congregacoes }
    end
  end

  # GET /congregacoes/1/edit
  def edit
    @congregacoes = Congregacoes.find(params[:id])
    @title = "Edição da Congregação: " + @congregacoes.nome
  end

  # POST /congregacoes
  # POST /congregacoes.xml
  def create
    @congregacoes = Congregacoes.new(params[:congregacoes])
    @title = "Cadastro de Congregração"
    respond_to do |format|
      if @congregacoes.save
        Congregacoes.update(@congregacoes.id, :respcad => self.current_usuarios.login.upcase)
      	flash[:notice] = 'Congregacoes was successfully created.'
        format.html { redirect_to(congregacoes_path) }
        format.xml  { render :xml => @congregacoes, :status => :created, :location => @congregacoes }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @congregacoes.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /congregacoes/1
  # PUT /congregacoes/1.xml
  def update
    @congregacoes = Congregacoes.find(params[:id])
    @title = "Edição da Congregação: " + @congregacoes.nome
    respond_to do |format|
      if @congregacoes.update_attributes(params[:congregacoes])
        Congregacoes.update(@congregacoes.id, :respmod => self.current_usuarios.login.upcase)
      	flash[:notice] = 'Congregacoes was successfully updated.'
        format.html { redirect_to(@congregacoes) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @congregacoes.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /congregacoes/1
  # DELETE /congregacoes/1.xml
  def destroy
    @congregacoes = Congregacoes.find(params[:id])
    @congregacoes.destroy

    respond_to do |format|
      format.html { redirect_to(congregacoes_url) }
      format.xml  { head :ok }
    end
  end
end
