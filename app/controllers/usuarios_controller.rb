class UsuariosController < ApplicationController
  # Be sure to include AuthenticationSystem in Application Controller instead
  include AuthenticatedSystem
  before_filter :login_required
  def index
  	
  end

  # render new.rhtml
  def new
  	@title = "Cadastro de Usuário"
  end

  def create
    cookies.delete :auth_token
    # protects against session fixation attacks, wreaks havoc with 
    # request forgery protection.
    # uncomment at your own risk
    # reset_session
    @usuarios = Usuarios.new(params[:usuarios])
    @usuarios.save
    Usuarios.update(@usuarios.id, :respcad => self.current_usuarios.login.upcase)
    if @usuarios.errors.empty?
    	#self.current_usuarios = @usuarios
      redirect_to :action => "index"
      flash[:notice] = "Thanks for signing up!"
    else
      render :action => 'new'
    end
  end

end
