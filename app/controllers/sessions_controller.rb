# This controller handles the login/logout function of the site.  
class SessionsController < ApplicationController
  # Be sure to include AuthenticationSystem in Application Controller instead
  include AuthenticatedSystem

  # render new.rhtml
  def new
  	@title = "Acesso ao Sistema"
  end

  def create
    @title = "Acesso ao Sistema"
  	self.current_usuarios = Usuarios.authenticate(params[:login], params[:password])
    if logged_in?
      if params[:remember_me] == "1"
        current_usuarios.remember_me unless current_usuarios.remember_token?
        cookies[:auth_token] = { :value => self.current_usuarios.remember_token , :expires => self.current_usuarios.remember_token_expires_at }
      end
      redirect_back_or_default('/')
      #flash[:notice] = "Logged in successfully"
    else
    	flash[:warning] = "Usuário e/ou senha inválidos."
      render :action => 'new'
    end
  end

  def destroy
    self.current_usuarios.forget_me if logged_in?
    cookies.delete :auth_token
    reset_session
    flash[:notice] = "Você foi desconectado do sistema."
    redirect_to login_url
  end
end
