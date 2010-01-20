class IgrejasController < ApplicationController
	before_filter :redireciona
	
	def redireciona
		redirect_to :congregacoes	
	end

	# GET /igrejas
  # GET /igrejas.xml
  def index
  	@igrejas = Igreja.all
  	@contador = 0;
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @igrejas }
    end
  end

  # GET /igrejas/1
  # GET /igrejas/1.xml
  def show
    @igreja = Igreja.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @igreja }
    end
  end

  # GET /igrejas/new
  # GET /igrejas/new.xml
  def new
    @igreja = Igreja.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @igreja }
    end
  end

  # GET /igrejas/1/edit
  def edit
    @igreja = Igreja.find(params[:id])
  end

  # POST /igrejas
  # POST /igrejas.xml
  def create
    @igreja = Igreja.new(params[:igreja])

    respond_to do |format|
      if @igreja.save
        Igreja.update(@igreja.id, :respcad => self.current_usuarios.login.upcase)
      	flash[:notice] = 'Igreja was successfully created.'
        format.html { redirect_to(igrejas_path) }
        format.xml  { render :xml => @igreja, :status => :created, :location => @igreja }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @igreja.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /igrejas/1
  # PUT /igrejas/1.xml
  def update
    @igreja = Igreja.find(params[:id])

    respond_to do |format|
      if @igreja.update_attributes(params[:igreja])
        Igreja.update(@igreja.id, :respmod => self.current_usuarios.login.upcase)
      	flash[:notice] = 'Igreja was successfully updated.'
        format.html { redirect_to(igrejas_path) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @igreja.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /igrejas/1
  # DELETE /igrejas/1.xml
  def destroy
    @igreja = Igreja.find(params[:id])
    @igreja.destroy

    respond_to do |format|
      format.html { redirect_to(igrejas_url) }
      format.xml  { head :ok }
    end
  end
end
