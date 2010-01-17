class DesligamentosController < ApplicationController
  # GET /desligamentos
  # GET /desligamentos.xml
  def index
    @desligamentos = Desligamento.all
    @title = "DESLIGAMENTOS"
    @contador = 0;
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @desligamentos }
    end
  end

  # GET /desligamentos/1
  # GET /desligamentos/1.xml
  def show
    @desligamento = Desligamento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @desligamento }
    end
  end

  # GET /desligamentos/new
  # GET /desligamentos/new.xml
  def new
    @desligamento = Desligamento.new
    @title = "Cadastro de Desligamento"
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @desligamento }
    end
  end

  # GET /desligamentos/1/edit
  def edit
    @desligamento = Desligamento.find(params[:id])
    @title = "Edição do Desligamento: " + @desligamento.descricao
  end

  # POST /desligamentos
  # POST /desligamentos.xml
  def create
    @desligamento = Desligamento.new(params[:desligamento])
    @title = "Cadastro de Desligamento"
    respond_to do |format|
      if @desligamento.save
        flash[:notice] = 'Desligamento was successfully created.'
        format.html { redirect_to(@desligamento) }
        format.xml  { render :xml => @desligamento, :status => :created, :location => @desligamento }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @desligamento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /desligamentos/1
  # PUT /desligamentos/1.xml
  def update
    @desligamento = Desligamento.find(params[:id])
    @title = "Edição do Desligamento: " + @desligamento.descricao
    respond_to do |format|
      if @desligamento.update_attributes(params[:desligamento])
        flash[:notice] = 'Desligamento was successfully updated.'
        format.html { redirect_to(@desligamento) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @desligamento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /desligamentos/1
  # DELETE /desligamentos/1.xml
  def destroy
    @desligamento = Desligamento.find(params[:id])
    @desligamento.destroy

    respond_to do |format|
      format.html { redirect_to(desligamentos_url) }
      format.xml  { head :ok }
    end
  end
end
