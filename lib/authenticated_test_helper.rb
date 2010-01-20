module AuthenticatedTestHelper
  # Sets the current usuarios in the session from the usuarios fixtures.
  def login_as(usuarios)
    @request.session[:usuarios_id] = usuarios ? usuarios(usuarios).id : nil
  end

  def authorize_as(user)
    @request.env["HTTP_AUTHORIZATION"] = user ? ActionController::HttpAuthentication::Basic.encode_credentials(users(user).login, 'test') : nil
  end
end
