class DashboardController < ApplicationController
  before_filter :login_required
  
	def index
  	@title = "INDICADORES"
  end

end
