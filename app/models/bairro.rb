class Bairro < ActiveRecord::Base
	validates_presence_of :estado, :cidade, :message => "deve ser Preenchido."
	validates_uniqueness_of :bairro, :message => "já cadastrado no banco de dados."
end
